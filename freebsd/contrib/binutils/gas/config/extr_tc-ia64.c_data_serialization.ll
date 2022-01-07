; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_data_serialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_data_serialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@md = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"  Data serialization\0A\00", align 1
@regdepslen = common dso_local global i32 0, align 4
@regdeps = common dso_local global %struct.TYPE_5__* null, align 8
@STATE_STOP = common dso_local global i64 0, align 8
@IA64_DVS_OTHER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Removing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @data_serialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_serialization() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @md, i32 0, i32 0), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  br label %8

8:                                                ; preds = %49, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @regdepslen, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regdeps, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STATE_STOP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %12
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regdeps, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IA64_DVS_OTHER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %21, %12
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @print_dependency(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regdeps, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @regdeps, align 8
  %40 = load i32, i32* @regdepslen, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @regdepslen, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %42
  %44 = bitcast %struct.TYPE_5__* %38 to i8*
  %45 = bitcast %struct.TYPE_5__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  br label %49

46:                                               ; preds = %21
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %46, %32
  br label %8

50:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_dependency(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
