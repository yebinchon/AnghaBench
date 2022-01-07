; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_fsnotify.c___fsnotify_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/extr_fsnotify.c___fsnotify_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__, %struct.inode*, i32, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }

@DCACHE_FSNOTIFY_PARENT_WATCHED = common dso_local global i32 0, align 4
@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@FSNOTIFY_EVENT_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fsnotify_parent(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DCACHE_FSNOTIFY_PARENT_WATCHED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 3
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 4
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  store %struct.dentry* %22, %struct.dentry** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %6, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i64 @fsnotify_inode_watches_children(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @dget(%struct.dentry* %37)
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %29
  br label %43

40:                                               ; preds = %16
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @dget(%struct.dentry* %41)
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 3
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.dentry*, %struct.dentry** %3, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 2
  %57 = load %struct.inode*, %struct.inode** %56, align 8
  %58 = load i32, i32* @FSNOTIFY_EVENT_INODE, align 4
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fsnotify(%struct.inode* %53, i32 %54, %struct.inode* %57, i32 %58, i32 %62, i32 0)
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call i32 @dput(%struct.dentry* %64)
  br label %66

66:                                               ; preds = %49, %43
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i32 @__fsnotify_update_child_dentry_flags(%struct.inode* %71)
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  br label %75

75:                                               ; preds = %15, %70, %66
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @fsnotify_inode_watches_children(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify(%struct.inode*, i32, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__fsnotify_update_child_dentry_flags(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
