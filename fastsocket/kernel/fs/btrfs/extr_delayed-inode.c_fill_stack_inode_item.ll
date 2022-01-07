; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_fill_stack_inode_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_delayed-inode.c_fill_stack_inode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode_item = type { i32 }
%struct.inode = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_inode_item*, %struct.inode*)* @fill_stack_inode_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stack_inode_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode_item* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_inode_item*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_inode_item* %1, %struct.btrfs_inode_item** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %7 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %6, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @btrfs_set_stack_inode_uid(%struct.btrfs_inode_item* %7, i32 %10)
  %12 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @btrfs_set_stack_inode_gid(%struct.btrfs_inode_item* %12, i32 %15)
  %17 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item* %17, i32 %21)
  %23 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item* %23, i32 %26)
  %28 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item* %28, i32 %31)
  %33 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @inode_get_bytes(%struct.inode* %34)
  %36 = call i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item* %33, i32 %35)
  %37 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item* %37, i32 %41)
  %43 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_set_stack_inode_sequence(%struct.btrfs_inode_item* %43, i32 %46)
  %48 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %49 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @btrfs_set_stack_inode_transid(%struct.btrfs_inode_item* %48, i32 %51)
  %53 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @btrfs_set_stack_inode_rdev(%struct.btrfs_inode_item* %53, i32 %56)
  %58 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @btrfs_set_stack_inode_flags(%struct.btrfs_inode_item* %58, i32 %62)
  %64 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %65 = call i32 @btrfs_set_stack_inode_block_group(%struct.btrfs_inode_item* %64, i32 0)
  %66 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %67 = call i32 @btrfs_inode_atime(%struct.btrfs_inode_item* %66)
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @btrfs_set_stack_timespec_sec(i32 %67, i32 %71)
  %73 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %74 = call i32 @btrfs_inode_atime(%struct.btrfs_inode_item* %73)
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @btrfs_set_stack_timespec_nsec(i32 %74, i32 %78)
  %80 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %81 = call i32 @btrfs_inode_mtime(%struct.btrfs_inode_item* %80)
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @btrfs_set_stack_timespec_sec(i32 %81, i32 %85)
  %87 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %88 = call i32 @btrfs_inode_mtime(%struct.btrfs_inode_item* %87)
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @btrfs_set_stack_timespec_nsec(i32 %88, i32 %92)
  %94 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %95 = call i32 @btrfs_inode_ctime(%struct.btrfs_inode_item* %94)
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @btrfs_set_stack_timespec_sec(i32 %95, i32 %99)
  %101 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %5, align 8
  %102 = call i32 @btrfs_inode_ctime(%struct.btrfs_inode_item* %101)
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @btrfs_set_stack_timespec_nsec(i32 %102, i32 %106)
  ret void
}

declare dso_local i32 @btrfs_set_stack_inode_uid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_gid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_size(%struct.btrfs_inode_item*, i32) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_mode(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nlink(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_nbytes(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @inode_get_bytes(%struct.inode*) #1

declare dso_local i32 @btrfs_set_stack_inode_generation(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_sequence(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_transid(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_rdev(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_flags(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_inode_block_group(%struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_sec(i32, i32) #1

declare dso_local i32 @btrfs_inode_atime(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_set_stack_timespec_nsec(i32, i32) #1

declare dso_local i32 @btrfs_inode_mtime(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_inode_ctime(%struct.btrfs_inode_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
