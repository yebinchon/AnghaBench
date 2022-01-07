; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_select.c_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll_list = type { i32, %struct.pollfd*, %struct.poll_list* }
%struct.pollfd = type { i32 }
%struct.poll_wqueues = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.poll_list*, %struct.poll_wqueues*, %struct.timespec*)* @do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_poll(i32 %0, %struct.poll_list* %1, %struct.poll_wqueues* %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.poll_list*, align 8
  %7 = alloca %struct.poll_wqueues*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.poll_list*, align 8
  %16 = alloca %struct.pollfd*, align 8
  %17 = alloca %struct.pollfd*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.poll_list* %1, %struct.poll_list** %6, align 8
  store %struct.poll_wqueues* %2, %struct.poll_wqueues** %7, align 8
  store %struct.timespec* %3, %struct.timespec** %8, align 8
  %18 = load %struct.poll_wqueues*, %struct.poll_wqueues** %7, align 8
  %19 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %18, i32 0, i32 1
  store i32* %19, i32** %9, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %20 = load %struct.timespec*, %struct.timespec** %8, align 8
  %21 = icmp ne %struct.timespec* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.timespec*, %struct.timespec** %8, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.timespec*, %struct.timespec** %8, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32* null, i32** %9, align 8
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %27, %22, %4
  %34 = load %struct.timespec*, %struct.timespec** %8, align 8
  %35 = icmp ne %struct.timespec* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.timespec*, %struct.timespec** %8, align 8
  %41 = call i64 @select_estimate_accuracy(%struct.timespec* %40)
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %39, %36, %33
  br label %43

43:                                               ; preds = %119, %42
  %44 = load %struct.poll_list*, %struct.poll_list** %6, align 8
  store %struct.poll_list* %44, %struct.poll_list** %15, align 8
  br label %45

45:                                               ; preds = %75, %43
  %46 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %47 = icmp ne %struct.poll_list* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %50 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %49, i32 0, i32 1
  %51 = load %struct.pollfd*, %struct.pollfd** %50, align 8
  store %struct.pollfd* %51, %struct.pollfd** %16, align 8
  %52 = load %struct.pollfd*, %struct.pollfd** %16, align 8
  %53 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %54 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %52, i64 %56
  store %struct.pollfd* %57, %struct.pollfd** %17, align 8
  br label %58

58:                                               ; preds = %71, %48
  %59 = load %struct.pollfd*, %struct.pollfd** %16, align 8
  %60 = load %struct.pollfd*, %struct.pollfd** %17, align 8
  %61 = icmp ne %struct.pollfd* %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.pollfd*, %struct.pollfd** %16, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @do_pollfd(%struct.pollfd* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  store i32* null, i32** %9, align 8
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.pollfd*, %struct.pollfd** %16, align 8
  %73 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %72, i32 1
  store %struct.pollfd* %73, %struct.pollfd** %16, align 8
  br label %58

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.poll_list*, %struct.poll_list** %15, align 8
  %77 = getelementptr inbounds %struct.poll_list, %struct.poll_list* %76, i32 0, i32 2
  %78 = load %struct.poll_list*, %struct.poll_list** %77, align 8
  store %struct.poll_list* %78, %struct.poll_list** %15, align 8
  br label %45

79:                                               ; preds = %45
  store i32* null, i32** %9, align 8
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = load %struct.poll_wqueues*, %struct.poll_wqueues** %7, align 8
  %84 = getelementptr inbounds %struct.poll_wqueues, %struct.poll_wqueues* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* @current, align 4
  %87 = call i64 @signal_pending(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EINTR, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %93
  br label %120

100:                                              ; preds = %96
  %101 = load %struct.timespec*, %struct.timespec** %8, align 8
  %102 = icmp ne %struct.timespec* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load %struct.timespec*, %struct.timespec** %8, align 8
  %108 = bitcast %struct.timespec* %107 to i64*
  %109 = load i64, i64* %108, align 4
  %110 = call i32 @timespec_to_ktime(i64 %109)
  store i32 %110, i32* %10, align 4
  store i32* %10, i32** %11, align 8
  br label %111

111:                                              ; preds = %106, %103, %100
  %112 = load %struct.poll_wqueues*, %struct.poll_wqueues** %7, align 8
  %113 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @poll_schedule_timeout(%struct.poll_wqueues* %112, i32 %113, i32* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %111
  br label %43

120:                                              ; preds = %99
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local i64 @select_estimate_accuracy(%struct.timespec*) #1

declare dso_local i64 @do_pollfd(%struct.pollfd*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @timespec_to_ktime(i64) #1

declare dso_local i32 @poll_schedule_timeout(%struct.poll_wqueues*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
