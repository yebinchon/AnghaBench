; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_find_update_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_find_update_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_handle = type { i32 }
%struct.inode = type { i32 }
%struct.inotify_watch = type { i32, i32 }

@IN_MASK_ADD = common dso_local global i32 0, align 4
@IN_ALL_EVENTS = common dso_local global i32 0, align 4
@IN_ONESHOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inotify_find_update_watch(%struct.inotify_handle* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inotify_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inotify_watch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inotify_handle* %0, %struct.inotify_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @IN_MASK_ADD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* @IN_ALL_EVENTS, align 4
  %18 = load i32, i32* @IN_ONESHOT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %75

31:                                               ; preds = %16
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %36 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %40 = call %struct.inotify_watch* @inode_find_handle(%struct.inode* %38, %struct.inotify_handle* %39)
  store %struct.inotify_watch* %40, %struct.inotify_watch** %8, align 8
  %41 = load %struct.inotify_watch*, %struct.inotify_watch** %8, align 8
  %42 = icmp ne %struct.inotify_watch* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %67

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.inotify_watch*, %struct.inotify_watch** %8, align 8
  %56 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.inotify_watch*, %struct.inotify_watch** %8, align 8
  %62 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.inotify_watch*, %struct.inotify_watch** %8, align 8
  %65 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %47
  %68 = load %struct.inotify_handle*, %struct.inotify_handle** %5, align 8
  %69 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %67, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inotify_watch* @inode_find_handle(%struct.inode*, %struct.inotify_handle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
