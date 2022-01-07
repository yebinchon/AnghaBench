; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@PART_PRECISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i64, i64, i64)* @num_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @num_trim(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_4__* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @PART_PRECISION, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i64, i64* @PART_PRECISION, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PART_PRECISION, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = shl i64 1, %21
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, %23
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %20, %13
  br label %41

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @PART_PRECISION, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = shl i64 1, %33
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, %35
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %39, %27
  %42 = bitcast %struct.TYPE_4__* %4 to i8*
  %43 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = bitcast %struct.TYPE_4__* %4 to { i64, i64 }*
  %45 = load { i64, i64 }, { i64, i64 }* %44, align 8
  ret { i64, i64 } %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
