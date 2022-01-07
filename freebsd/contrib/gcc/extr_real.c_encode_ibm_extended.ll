; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ibm_extended.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ibm_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i64 }
%struct.TYPE_9__ = type { i64 }

@ieee_double_format = common dso_local global %struct.real_format zeroinitializer, align 8
@mips_double_format = common dso_local global %struct.real_format zeroinitializer, align 8
@rvc_normal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, %struct.TYPE_9__*)* @encode_ibm_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ibm_extended(%struct.real_format* %0, i64* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.real_format*, align 8
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.real_format*, %struct.real_format** %4, align 8
  %12 = getelementptr inbounds %struct.real_format, %struct.real_format* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, %struct.real_format* @ieee_double_format, %struct.real_format* @mips_double_format
  store %struct.real_format* %16, %struct.real_format** %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = bitcast %struct.TYPE_9__* %8 to i8*
  %19 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @rvc_normal, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @normalize(%struct.TYPE_9__* %8)
  br label %26

26:                                               ; preds = %24, %3
  %27 = bitcast %struct.TYPE_9__* %7 to i8*
  %28 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = load %struct.real_format*, %struct.real_format** %10, align 8
  %30 = call i32 @round_for_format(%struct.real_format* %29, %struct.TYPE_9__* %7)
  %31 = load %struct.real_format*, %struct.real_format** %10, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = call i32 @encode_ieee_double(%struct.real_format* %31, i64* %33, %struct.TYPE_9__* %7)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @rvc_normal, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = call i32 @do_add(%struct.TYPE_9__* %9, %struct.TYPE_9__* %8, %struct.TYPE_9__* %7, i32 1)
  %41 = load %struct.real_format*, %struct.real_format** %10, align 8
  %42 = call i32 @round_for_format(%struct.real_format* %41, %struct.TYPE_9__* %9)
  %43 = load %struct.real_format*, %struct.real_format** %10, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = call i32 @encode_ieee_double(%struct.real_format* %43, i64* %45, %struct.TYPE_9__* %9)
  br label %52

47:                                               ; preds = %26
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 3
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @normalize(%struct.TYPE_9__*) #2

declare dso_local i32 @round_for_format(%struct.real_format*, %struct.TYPE_9__*) #2

declare dso_local i32 @encode_ieee_double(%struct.real_format*, i64*, %struct.TYPE_9__*) #2

declare dso_local i32 @do_add(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
