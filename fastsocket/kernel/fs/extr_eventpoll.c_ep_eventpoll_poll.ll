; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_eventpoll_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_eventpoll_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.eventpoll* }
%struct.eventpoll = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.readyevents_arg = type { %struct.eventpoll*, i32 }

@ep_ptable_queue_proc = common dso_local global i64 0, align 8
@poll_readywalk_ncalls = common dso_local global i32 0, align 4
@EP_MAX_NESTS = common dso_local global i32 0, align 4
@ep_poll_readyevents_proc = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.TYPE_4__*)* @ep_eventpoll_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_eventpoll_poll(%struct.file* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventpoll*, align 8
  %7 = alloca %struct.readyevents_arg, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.eventpoll*, %struct.eventpoll** %9, align 8
  store %struct.eventpoll* %10, %struct.eventpoll** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ep_ptable_queue_proc, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.readyevents_arg, %struct.readyevents_arg* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %24 = getelementptr inbounds %struct.readyevents_arg, %struct.readyevents_arg* %7, i32 0, i32 0
  store %struct.eventpoll* %23, %struct.eventpoll** %24, align 8
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %27 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, %struct.TYPE_4__* %28)
  %30 = load i32, i32* @EP_MAX_NESTS, align 4
  %31 = load i32, i32* @ep_poll_readyevents_proc, align 4
  %32 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @ep_call_nested(i32* @poll_readywalk_ncalls, i32 %30, i32 %31, %struct.readyevents_arg* %7, %struct.eventpoll* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* %5, align 4
  br label %40

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ep_call_nested(i32*, i32, i32, %struct.readyevents_arg*, %struct.eventpoll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
