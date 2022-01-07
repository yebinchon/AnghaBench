; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.timespec = type { i32, i64 }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"gettimeofday() failed\00", align 1
@hz = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@curthread = common dso_local global i32* null, align 8
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cv_timedwait(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @ddi_get_lbolt()
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %84, %3
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (...) @ddi_get_lbolt()
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %95

22:                                               ; preds = %15
  %23 = call i64 @gettimeofday(%struct.timeval* %10, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @assert(i32 0)
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @hz, align 4
  %32 = sdiv i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 1000
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @hz, align 4
  %41 = srem i32 %39, %40
  %42 = load i32, i32* @NANOSEC, align 4
  %43 = load i32, i32* @hz, align 4
  %44 = sdiv i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %38, %45
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NANOSEC, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* @NANOSEC, align 4
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, %61
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %27
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = call i32* @mutex_owner(%struct.TYPE_4__* %66)
  %68 = load i32*, i32** @curthread, align 8
  %69 = icmp eq i32* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = call i32 @pthread_cond_timedwait(i32* %74, i32* %76, %struct.timespec* %9)
  store i32 %77, i32* %8, align 4
  %78 = load i32*, i32** @curthread, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @EINTR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %15

85:                                               ; preds = %65
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %89, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @ddi_get_lbolt(...) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @mutex_owner(%struct.TYPE_4__*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
