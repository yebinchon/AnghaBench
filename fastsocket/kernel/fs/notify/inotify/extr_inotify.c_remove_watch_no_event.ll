; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_remove_watch_no_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_remove_watch_no_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_watch = type { i32, i32, i32, i32 }
%struct.inotify_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inotify_watch*, %struct.inotify_handle*)* @remove_watch_no_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_watch_no_event(%struct.inotify_watch* %0, %struct.inotify_handle* %1) #0 {
  %3 = alloca %struct.inotify_watch*, align 8
  %4 = alloca %struct.inotify_handle*, align 8
  store %struct.inotify_watch* %0, %struct.inotify_watch** %3, align 8
  store %struct.inotify_handle* %1, %struct.inotify_handle** %4, align 8
  %5 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %6 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %5, i32 0, i32 3
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %9 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %8, i32 0, i32 2
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %12 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @inotify_inode_watched(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %18 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_dentry_child_flags(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %23 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %22, i32 0, i32 0
  %24 = load %struct.inotify_watch*, %struct.inotify_watch** %3, align 8
  %25 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @idr_remove(i32* %23, i32 %26)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @inotify_inode_watched(i32) #1

declare dso_local i32 @set_dentry_child_flags(i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
