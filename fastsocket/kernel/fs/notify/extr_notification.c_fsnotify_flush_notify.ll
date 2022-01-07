; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_flush_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_flush_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fsnotify_event_private_data*)* }
%struct.fsnotify_event_private_data = type { i32 }
%struct.fsnotify_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_flush_notify(%struct.fsnotify_group* %0) #0 {
  %2 = alloca %struct.fsnotify_group*, align 8
  %3 = alloca %struct.fsnotify_event*, align 8
  %4 = alloca %struct.fsnotify_event_private_data*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %2, align 8
  %5 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %6 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  br label %8

8:                                                ; preds = %43, %1
  %9 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %10 = call i32 @fsnotify_notify_queue_is_empty(%struct.fsnotify_group* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %15 = call %struct.fsnotify_event* @fsnotify_remove_notify_event(%struct.fsnotify_group* %14)
  store %struct.fsnotify_event* %15, %struct.fsnotify_event** %3, align 8
  %16 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %17 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.fsnotify_event_private_data*)*, i32 (%struct.fsnotify_event_private_data*)** %19, align 8
  %21 = icmp ne i32 (%struct.fsnotify_event_private_data*)* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %13
  %23 = load %struct.fsnotify_event*, %struct.fsnotify_event** %3, align 8
  %24 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %27 = load %struct.fsnotify_event*, %struct.fsnotify_event** %3, align 8
  %28 = call %struct.fsnotify_event_private_data* @fsnotify_remove_priv_from_event(%struct.fsnotify_group* %26, %struct.fsnotify_event* %27)
  store %struct.fsnotify_event_private_data* %28, %struct.fsnotify_event_private_data** %4, align 8
  %29 = load %struct.fsnotify_event*, %struct.fsnotify_event** %3, align 8
  %30 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.fsnotify_event_private_data*, %struct.fsnotify_event_private_data** %4, align 8
  %33 = icmp ne %struct.fsnotify_event_private_data* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %36 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.fsnotify_event_private_data*)*, i32 (%struct.fsnotify_event_private_data*)** %38, align 8
  %40 = load %struct.fsnotify_event_private_data*, %struct.fsnotify_event_private_data** %4, align 8
  %41 = call i32 %39(%struct.fsnotify_event_private_data* %40)
  br label %42

42:                                               ; preds = %34, %22
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.fsnotify_event*, %struct.fsnotify_event** %3, align 8
  %45 = call i32 @fsnotify_put_event(%struct.fsnotify_event* %44)
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.fsnotify_group*, %struct.fsnotify_group** %2, align 8
  %48 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fsnotify_notify_queue_is_empty(%struct.fsnotify_group*) #1

declare dso_local %struct.fsnotify_event* @fsnotify_remove_notify_event(%struct.fsnotify_group*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fsnotify_event_private_data* @fsnotify_remove_priv_from_event(%struct.fsnotify_group*, %struct.fsnotify_event*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_put_event(%struct.fsnotify_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
