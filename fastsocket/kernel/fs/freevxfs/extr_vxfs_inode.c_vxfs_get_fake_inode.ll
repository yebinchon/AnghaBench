; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_inode.c_vxfs_get_fake_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_inode.c_vxfs_get_fake_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.vxfs_inode_info = type { i32 }

@vxfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @vxfs_get_fake_inode(%struct.super_block* %0, %struct.vxfs_inode_info* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.vxfs_inode_info*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.vxfs_inode_info* %1, %struct.vxfs_inode_info** %4, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.inode* @new_inode(%struct.super_block* %6)
  store %struct.inode* %7, %struct.inode** %5, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %4, align 8
  %12 = call i32 @vxfs_iinit(%struct.inode* %10, %struct.vxfs_inode_info* %11)
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* @vxfs_aops, i32** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  ret %struct.inode* %18
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @vxfs_iinit(%struct.inode*, %struct.vxfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
