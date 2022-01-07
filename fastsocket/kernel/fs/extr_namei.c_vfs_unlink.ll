; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_vfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.dentry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call i32 @may_delete(%struct.inode* %7, %struct.dentry* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.inode*, %struct.dentry*)**
  %20 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %19, align 8
  %21 = icmp ne i32 (%struct.inode*, %struct.dentry*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %14
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i32 @vfs_dq_init(%struct.inode* %26)
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call i64 @d_mountpoint(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %56

39:                                               ; preds = %25
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call i32 @security_inode_unlink(%struct.inode* %40, %struct.dentry* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.inode*, %struct.dentry*)**
  %51 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %50, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = call i32 %51(%struct.inode* %52, %struct.dentry* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %45, %39
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = call i32 @fsnotify_link_count(%struct.TYPE_4__* %74)
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = call i32 @d_delete(%struct.dentry* %76)
  br label %78

78:                                               ; preds = %71, %64, %56
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %22, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @may_delete(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @security_inode_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsnotify_link_count(%struct.TYPE_4__*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
