; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_put_inotify_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_put_inotify_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_watch = type { i32, %struct.inotify_handle*, i32 }
%struct.inotify_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inotify_watch*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_inotify_watch(%struct.inotify_watch* %0) #0 {
  %2 = alloca %struct.inotify_watch*, align 8
  %3 = alloca %struct.inotify_handle*, align 8
  store %struct.inotify_watch* %0, %struct.inotify_watch** %2, align 8
  %4 = load %struct.inotify_watch*, %struct.inotify_watch** %2, align 8
  %5 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %4, i32 0, i32 2
  %6 = call i64 @atomic_dec_and_test(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.inotify_watch*, %struct.inotify_watch** %2, align 8
  %10 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %9, i32 0, i32 1
  %11 = load %struct.inotify_handle*, %struct.inotify_handle** %10, align 8
  store %struct.inotify_handle* %11, %struct.inotify_handle** %3, align 8
  %12 = load %struct.inotify_watch*, %struct.inotify_watch** %2, align 8
  %13 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @iput(i32 %14)
  %16 = load %struct.inotify_handle*, %struct.inotify_handle** %3, align 8
  %17 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.inotify_watch*)*, i32 (%struct.inotify_watch*)** %19, align 8
  %21 = load %struct.inotify_watch*, %struct.inotify_watch** %2, align 8
  %22 = call i32 %20(%struct.inotify_watch* %21)
  %23 = load %struct.inotify_handle*, %struct.inotify_handle** %3, align 8
  %24 = call i32 @put_inotify_handle(%struct.inotify_handle* %23)
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @put_inotify_handle(%struct.inotify_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
