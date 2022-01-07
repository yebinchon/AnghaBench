; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_pty_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_pty_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TTYAUX_MAJOR = common dso_local global i32 0, align 4
@PTMX_MINOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devpts_pty_kill(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.super_block* @pts_sb_from_inode(%struct.inode* %10)
  store %struct.super_block* %11, %struct.super_block** %4, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @TTYAUX_MAJOR, align 4
  %19 = load i32, i32* @PTMX_MINOR, align 4
  %20 = call i64 @MKDEV(i32 %18, i32 %19)
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.dentry* @d_find_alias(%struct.inode* %29)
  store %struct.dentry* %30, %struct.dentry** %6, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = call i64 @IS_ERR(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %50

35:                                               ; preds = %1
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = call i32 @d_delete(%struct.dentry* %43)
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i32 @dput(%struct.dentry* %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local %struct.super_block* @pts_sb_from_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_find_alias(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @d_delete(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
