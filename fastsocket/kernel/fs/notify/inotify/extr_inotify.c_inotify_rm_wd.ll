; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_rm_wd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_rm_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_handle = type { i32, i32 }
%struct.inotify_watch = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inotify_rm_wd(%struct.inotify_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inotify_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inotify_watch*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inotify_handle* %0, %struct.inotify_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %11 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %14 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %13, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.inotify_watch* @idr_find(i32* %14, i32 %15)
  store %struct.inotify_watch* %16, %struct.inotify_watch** %6, align 8
  %17 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %18 = icmp ne %struct.inotify_watch* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %25 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %31 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %30, i32 0, i32 0
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  store %struct.super_block* %34, %struct.super_block** %7, align 8
  %35 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %36 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %37 = call i32 @pin_to_kill(%struct.inotify_handle* %35, %struct.inotify_watch* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %74

41:                                               ; preds = %29
  %42 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %43 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %42, i32 0, i32 0
  %44 = load %struct.inode*, %struct.inode** %43, align 8
  store %struct.inode* %44, %struct.inode** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %49 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %52 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %51, i32 0, i32 1
  %53 = load i32, i32* %5, align 4
  %54 = call %struct.inotify_watch* @idr_find(i32* %52, i32 %53)
  %55 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %56 = icmp eq %struct.inotify_watch* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %62 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %63 = call i32 @inotify_remove_watch_locked(%struct.inotify_handle* %61, %struct.inotify_watch* %62)
  br label %64

64:                                               ; preds = %60, %41
  %65 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %66 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.inotify_watch*, %struct.inotify_watch** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @unpin_and_kill(%struct.inotify_watch* %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %64, %40, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inotify_watch* @idr_find(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pin_to_kill(%struct.inotify_handle*, %struct.inotify_watch*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inotify_remove_watch_locked(%struct.inotify_handle*, %struct.inotify_watch*) #1

declare dso_local i32 @unpin_and_kill(%struct.inotify_watch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
