; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_add_watch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_add_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_handle = type { i32, i32 }
%struct.inotify_watch = type { i32, i32, i32, i32, i32, %struct.inotify_handle* }
%struct.inode = type { i32, i32 }

@IN_ALL_EVENTS = common dso_local global i32 0, align 4
@IN_ONESHOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inotify_add_watch(%struct.inotify_handle* %0, %struct.inotify_watch* %1, %struct.inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inotify_handle*, align 8
  %7 = alloca %struct.inotify_watch*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inotify_handle* %0, %struct.inotify_handle** %6, align 8
  store %struct.inotify_watch* %1, %struct.inotify_watch** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @IN_ALL_EVENTS, align 4
  %13 = load i32, i32* @IN_ONESHOT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %29 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %34 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %37 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %38 = call i32 @inotify_handle_get_wd(%struct.inotify_handle* %36, %struct.inotify_watch* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %77

43:                                               ; preds = %26
  %44 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %45 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %48 = call i32 @get_inotify_handle(%struct.inotify_handle* %47)
  %49 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %50 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %51 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %50, i32 0, i32 5
  store %struct.inotify_handle* %49, %struct.inotify_handle** %51, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @igrab(%struct.inode* %52)
  %54 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %55 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = call i32 @inotify_inode_watched(%struct.inode* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %62 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %61, i32 0, i32 3
  %63 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %64 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %63, i32 0, i32 1
  %65 = call i32 @list_add(i32* %62, i32* %64)
  %66 = load %struct.inotify_watch*, %struct.inotify_watch** %7, align 8
  %67 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %66, i32 0, i32 2
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = call i32 @list_add(i32* %67, i32* %69)
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %43
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @set_dentry_child_flags(%struct.inode* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %43
  br label %77

77:                                               ; preds = %76, %42
  %78 = load %struct.inotify_handle*, %struct.inotify_handle** %6, align 8
  %79 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %23
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inotify_handle_get_wd(%struct.inotify_handle*, %struct.inotify_watch*) #1

declare dso_local i32 @get_inotify_handle(%struct.inotify_handle*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @inotify_inode_watched(%struct.inode*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_dentry_child_flags(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
