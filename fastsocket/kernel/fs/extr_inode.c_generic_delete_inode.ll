; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_generic_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_generic_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_operations* }
%struct.super_operations = type { void (%struct.inode.0*)* }
%struct.inode.0 = type opaque

@I_NEW = common dso_local global i32 0, align 4
@I_FREEING = common dso_local global i32 0, align 4
@inodes_stat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@inode_lock = common dso_local global i32 0, align 4
@I_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_operations*, align 8
  %4 = alloca void (%struct.inode*)*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.super_operations*, %struct.super_operations** %8, align 8
  store %struct.super_operations* %9, %struct.super_operations** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 4
  %12 = call i32 @list_del_init(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 3
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I_NEW, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* @I_FREEING, align 4
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inodes_stat, i32 0, i32 0), align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inodes_stat, i32 0, i32 0), align 4
  %29 = call i32 @spin_unlock(i32* @inode_lock)
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call i32 @security_inode_delete(%struct.inode* %30)
  %32 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %33 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %32, i32 0, i32 0
  %34 = load void (%struct.inode.0*)*, void (%struct.inode.0*)** %33, align 8
  %35 = icmp ne void (%struct.inode.0*)* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %1
  %37 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %38 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %37, i32 0, i32 0
  %39 = load void (%struct.inode.0*)*, void (%struct.inode.0*)** %38, align 8
  %40 = bitcast void (%struct.inode.0*)* %39 to void (%struct.inode*)*
  store void (%struct.inode*)* %40, void (%struct.inode*)** %4, align 8
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = call i32 @is_bad_inode(%struct.inode* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call i32 @vfs_dq_init(%struct.inode* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load void (%struct.inode*)*, void (%struct.inode*)** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  call void %48(%struct.inode* %49)
  br label %56

50:                                               ; preds = %1
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = call i32 @truncate_inode_pages(i32* %52, i32 0)
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = call i32 @clear_inode(%struct.inode* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = call i32 @spin_lock(i32* @inode_lock)
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = call i32 @hlist_del_init(i32* %59)
  %61 = call i32 @spin_unlock(i32* @inode_lock)
  %62 = load %struct.inode*, %struct.inode** %2, align 8
  %63 = call i32 @wake_up_inode(%struct.inode* %62)
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I_CLEAR, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %2, align 8
  %72 = call i32 @destroy_inode(%struct.inode* %71)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @security_inode_delete(%struct.inode*) #1

declare dso_local i32 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @wake_up_inode(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @destroy_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
