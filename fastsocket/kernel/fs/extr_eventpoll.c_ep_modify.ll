; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_modify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventpoll.c_ep_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { i32, i32, i32, i32 }
%struct.epitem = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32*)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.epoll_event = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep_modify(%struct.eventpoll* %0, %struct.epitem* %1, %struct.epoll_event* %2) #0 {
  %4 = alloca %struct.eventpoll*, align 8
  %5 = alloca %struct.epitem*, align 8
  %6 = alloca %struct.epoll_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eventpoll* %0, %struct.eventpoll** %4, align 8
  store %struct.epitem* %1, %struct.epitem** %5, align 8
  store %struct.epoll_event* %2, %struct.epoll_event** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.epoll_event*, %struct.epoll_event** %6, align 8
  %10 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.epitem*, %struct.epitem** %5, align 8
  %13 = getelementptr inbounds %struct.epitem, %struct.epitem* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.epoll_event*, %struct.epoll_event** %6, align 8
  %16 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.epitem*, %struct.epitem** %5, align 8
  %19 = getelementptr inbounds %struct.epitem, %struct.epitem* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.epitem*, %struct.epitem** %5, align 8
  %22 = getelementptr inbounds %struct.epitem, %struct.epitem* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %27, align 8
  %29 = load %struct.epitem*, %struct.epitem** %5, align 8
  %30 = getelementptr inbounds %struct.epitem, %struct.epitem* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 %28(%struct.TYPE_8__* %32, i32* null)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.epoll_event*, %struct.epoll_event** %6, align 8
  %36 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %3
  %41 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %42 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.epitem*, %struct.epitem** %5, align 8
  %45 = getelementptr inbounds %struct.epitem, %struct.epitem* %44, i32 0, i32 0
  %46 = call i32 @ep_is_linked(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %40
  %49 = load %struct.epitem*, %struct.epitem** %5, align 8
  %50 = getelementptr inbounds %struct.epitem, %struct.epitem* %49, i32 0, i32 0
  %51 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %52 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %51, i32 0, i32 3
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %55 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %54, i32 0, i32 2
  %56 = call i64 @waitqueue_active(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %60 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %59, i32 0, i32 2
  %61 = call i32 @wake_up_locked(i32* %60)
  br label %62

62:                                               ; preds = %58, %48
  %63 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %64 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %63, i32 0, i32 0
  %65 = call i64 @waitqueue_active(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %73 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_irq(i32* %73)
  br label %75

75:                                               ; preds = %71, %3
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %80 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %79, i32 0, i32 0
  %81 = call i32 @ep_poll_safewake(i32* %80)
  br label %82

82:                                               ; preds = %78, %75
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ep_is_linked(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_locked(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
