; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_generic_detach_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_generic_detach_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@I_DIRTY = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@inode_unused = common dso_local global i32 0, align 4
@inodes_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@inode_lock = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@I_WILL_FREE = common dso_local global i32 0, align 4
@I_FREEING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_detach_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 4
  %7 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %7, %struct.super_block** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 3
  %10 = call i32 @hlist_unhashed(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I_DIRTY, align 4
  %17 = load i32, i32* @I_SYNC, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = call i32 @list_move(i32* %23, i32* @inode_unused)
  br label %25

25:                                               ; preds = %21, %12
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 1), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 1), align 4
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MS_ACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = call i32 @spin_unlock(i32* @inode_lock)
  store i32 0, i32* %2, align 4
  br label %90

36:                                               ; preds = %25
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I_NEW, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i32, i32* @I_WILL_FREE, align 4
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = call i32 @spin_unlock(i32* @inode_lock)
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call i32 @write_inode_now(%struct.inode* %49, i32 1)
  %51 = call i32 @spin_lock(i32* @inode_lock)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I_NEW, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load i32, i32* @I_WILL_FREE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 1), align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 1), align 4
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  %68 = call i32 @hlist_del_init(i32* %67)
  br label %69

69:                                               ; preds = %36, %1
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 2
  %72 = call i32 @list_del_init(i32* %71)
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = call i32 @list_del_init(i32* %74)
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I_NEW, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i32, i32* @I_FREEING, align 4
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inodes_stat, i32 0, i32 0), align 4
  %89 = call i32 @spin_unlock(i32* @inode_lock)
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %69, %34
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
