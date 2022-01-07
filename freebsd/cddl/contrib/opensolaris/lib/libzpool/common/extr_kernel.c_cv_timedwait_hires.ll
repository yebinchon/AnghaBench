; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_timedwait_hires.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_kernel.c_cv_timedwait_hires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@CALLOUT_FLAG_ABSOLUTE = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@curthread = common dso_local global i32* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cv_timedwait_hires(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @CALLOUT_FLAG_ABSOLUTE, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ true, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  br label %25

25:                                               ; preds = %93, %21
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CALLOUT_FLAG_ABSOLUTE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = call i64 (...) @gethrtime()
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %99

41:                                               ; preds = %37
  %42 = load i32, i32* @CLOCK_REALTIME, align 4
  %43 = call i32 @clock_gettime(i32 %42, %struct.TYPE_7__* %13)
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @NANOSEC, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %47
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @NANOSEC, align 4
  %53 = srem i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NANOSEC, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* @NANOSEC, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %65
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %61, %41
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = call i32* @mutex_owner(%struct.TYPE_8__* %70)
  %72 = load i32*, i32** @curthread, align 8
  %73 = icmp eq i32* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = call i32 @pthread_cond_timedwait(i32* %78, i32* %80, %struct.TYPE_7__* %13)
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** @curthread, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32* %82, i32** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %69
  store i32 -1, i32* %6, align 4
  br label %99

89:                                               ; preds = %69
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @EINTR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %25

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %88, %40
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @mutex_owner(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
