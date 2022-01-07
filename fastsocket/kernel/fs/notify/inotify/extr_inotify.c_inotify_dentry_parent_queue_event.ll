; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_dentry_parent_queue_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_inotify_dentry_parent_queue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.inode*, %struct.dentry* }
%struct.inode = type { i32 }

@DCACHE_INOTIFY_PARENT_WATCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inotify_dentry_parent_queue_event(%struct.dentry* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DCACHE_INOTIFY_PARENT_WATCHED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %51

18:                                               ; preds = %4
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 3
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %9, align 8
  %25 = load %struct.dentry*, %struct.dentry** %9, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 2
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call i64 @inotify_inode_watched(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = call i32 @dget(%struct.dentry* %32)
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 2
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  %44 = call i32 @inotify_inode_queue_event(%struct.inode* %37, i32 %38, i32 %39, i8* %40, %struct.inode* %43)
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  br label %51

47:                                               ; preds = %18
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %17, %47, %31
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @inotify_inode_watched(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inotify_inode_queue_event(%struct.inode*, i32, i32, i8*, %struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
