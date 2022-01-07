; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_put_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_notification.c_fsnotify_put_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_event = type { i64, i32, i32, i32, i32 }

@FSNOTIFY_EVENT_PATH = common dso_local global i64 0, align 8
@fsnotify_event_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_put_event(%struct.fsnotify_event* %0) #0 {
  %2 = alloca %struct.fsnotify_event*, align 8
  store %struct.fsnotify_event* %0, %struct.fsnotify_event** %2, align 8
  %3 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %4 = icmp ne %struct.fsnotify_event* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %36

6:                                                ; preds = %1
  %7 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %8 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %7, i32 0, i32 4
  %9 = call i64 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %13 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FSNOTIFY_EVENT_PATH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %19 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %18, i32 0, i32 3
  %20 = call i32 @path_put(i32* %19)
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %23 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %22, i32 0, i32 2
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %30 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kfree(i32 %31)
  %33 = load i32, i32* @fsnotify_event_cachep, align 4
  %34 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %35 = call i32 @kmem_cache_free(i32 %33, %struct.fsnotify_event* %34)
  br label %36

36:                                               ; preds = %5, %21, %6
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fsnotify_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
