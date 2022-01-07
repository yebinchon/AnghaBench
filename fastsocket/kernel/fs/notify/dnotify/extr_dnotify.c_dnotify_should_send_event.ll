; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/dnotify/extr_dnotify.c_dnotify_should_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/dnotify/extr_dnotify.c_dnotify_should_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.inode = type { i32, i32 }
%struct.fsnotify_mark_entry = type { i32 }

@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.inode*, i32)* @dnotify_should_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnotify_should_send_event(%struct.fsnotify_group* %0, %struct.inode* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISDIR(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.fsnotify_mark_entry* @fsnotify_find_mark_entry(%struct.fsnotify_group* %20, %struct.inode* %21)
  store %struct.fsnotify_mark_entry* %22, %struct.fsnotify_mark_entry** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %27 = icmp ne %struct.fsnotify_mark_entry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %36 = getelementptr inbounds %struct.fsnotify_mark_entry, %struct.fsnotify_mark_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.fsnotify_mark_entry*, %struct.fsnotify_mark_entry** %8, align 8
  %40 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark_entry* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %28, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @S_ISDIR(i32) #1

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
