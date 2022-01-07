; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_should_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify_fsnotify.c_inotify_should_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.inode = type { i32 }
%struct.fsnotify_mark_entry = type { i32 }

@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.inode*, i32)* @inotify_should_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inotify_should_send_event(%struct.fsnotify_group* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsnotify_group*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsnotify_mark_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.fsnotify_mark_entry* @fsnotify_find_mark_entry(%struct.fsnotify_group* %13, %struct.inode* %14)
  store %struct.fsnotify_mark_entry* %15, %struct.fsnotify_mark_entry** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %20 = icmp ne %struct.fsnotify_mark_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %28 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %33 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %22, %21
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fsnotify_mark_entry* @fsnotify_find_mark_entry(%struct.fsnotify_group*, %struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
