; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_inode_return_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_inode_return_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }
%struct.nfs_delegation = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_inode_return_delegation(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca %struct.nfs_delegation*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nfs_inode* @NFS_I(%struct.inode* %6)
  store %struct.nfs_inode* %7, %struct.nfs_inode** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @nfs_wb_all(%struct.inode* %8)
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %11 = call %struct.nfs_delegation* @nfs_start_delegation_return(%struct.nfs_inode* %10)
  store %struct.nfs_delegation* %11, %struct.nfs_delegation** %4, align 8
  %12 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %13 = icmp ne %struct.nfs_delegation* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  %17 = call i32 @nfs_end_delegation_return(%struct.inode* %15, %struct.nfs_delegation* %16, i32 1)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_wb_all(%struct.inode*) #1

declare dso_local %struct.nfs_delegation* @nfs_start_delegation_return(%struct.nfs_inode*) #1

declare dso_local i32 @nfs_end_delegation_return(%struct.inode*, %struct.nfs_delegation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
