; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_fill_inode_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_fill_inode_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_inode_item = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.extent_buffer*, %struct.btrfs_inode_item*, %struct.inode*)* @fill_inode_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_inode_item(%struct.btrfs_trans_handle* %0, %struct.extent_buffer* %1, %struct.btrfs_inode_item* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca %struct.btrfs_inode_item*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store %struct.btrfs_inode_item* %2, %struct.btrfs_inode_item** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %9 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %10 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %8, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @btrfs_set_inode_uid(%struct.extent_buffer* %9, %struct.btrfs_inode_item* %10, i32 %13)
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %16 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @btrfs_set_inode_gid(%struct.extent_buffer* %15, %struct.btrfs_inode_item* %16, i32 %19)
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %22 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @btrfs_set_inode_size(%struct.extent_buffer* %21, %struct.btrfs_inode_item* %22, i32 %26)
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %29 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @btrfs_set_inode_mode(%struct.extent_buffer* %28, %struct.btrfs_inode_item* %29, i32 %32)
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %35 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @btrfs_set_inode_nlink(%struct.extent_buffer* %34, %struct.btrfs_inode_item* %35, i32 %38)
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %41 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %42 = call i32 @btrfs_inode_atime(%struct.btrfs_inode_item* %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @btrfs_set_timespec_sec(%struct.extent_buffer* %40, i32 %42, i32 %46)
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %49 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %50 = call i32 @btrfs_inode_atime(%struct.btrfs_inode_item* %49)
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @btrfs_set_timespec_nsec(%struct.extent_buffer* %48, i32 %50, i32 %54)
  %56 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %57 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %58 = call i32 @btrfs_inode_mtime(%struct.btrfs_inode_item* %57)
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @btrfs_set_timespec_sec(%struct.extent_buffer* %56, i32 %58, i32 %62)
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %65 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %66 = call i32 @btrfs_inode_mtime(%struct.btrfs_inode_item* %65)
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @btrfs_set_timespec_nsec(%struct.extent_buffer* %64, i32 %66, i32 %70)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %73 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %74 = call i32 @btrfs_inode_ctime(%struct.btrfs_inode_item* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @btrfs_set_timespec_sec(%struct.extent_buffer* %72, i32 %74, i32 %78)
  %80 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %81 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %82 = call i32 @btrfs_inode_ctime(%struct.btrfs_inode_item* %81)
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @btrfs_set_timespec_nsec(%struct.extent_buffer* %80, i32 %82, i32 %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %89 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @inode_get_bytes(%struct.inode* %90)
  %92 = call i32 @btrfs_set_inode_nbytes(%struct.extent_buffer* %88, %struct.btrfs_inode_item* %89, i32 %91)
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %94 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @btrfs_set_inode_generation(%struct.extent_buffer* %93, %struct.btrfs_inode_item* %94, i32 %98)
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %101 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @btrfs_set_inode_sequence(%struct.extent_buffer* %100, %struct.btrfs_inode_item* %101, i32 %104)
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %107 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %108 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %109 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @btrfs_set_inode_transid(%struct.extent_buffer* %106, %struct.btrfs_inode_item* %107, i32 %110)
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %113 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @btrfs_set_inode_rdev(%struct.extent_buffer* %112, %struct.btrfs_inode_item* %113, i32 %116)
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %119 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @btrfs_set_inode_flags(%struct.extent_buffer* %118, %struct.btrfs_inode_item* %119, i32 %123)
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %126 = load %struct.btrfs_inode_item*, %struct.btrfs_inode_item** %7, align 8
  %127 = call i32 @btrfs_set_inode_block_group(%struct.extent_buffer* %125, %struct.btrfs_inode_item* %126, i32 0)
  ret void
}

declare dso_local i32 @btrfs_set_inode_uid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_gid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_size(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_set_inode_mode(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_nlink(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_timespec_sec(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_inode_atime(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_set_timespec_nsec(%struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @btrfs_inode_mtime(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_inode_ctime(%struct.btrfs_inode_item*) #1

declare dso_local i32 @btrfs_set_inode_nbytes(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @inode_get_bytes(%struct.inode*) #1

declare dso_local i32 @btrfs_set_inode_generation(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_sequence(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_transid(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_rdev(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_flags(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

declare dso_local i32 @btrfs_set_inode_block_group(%struct.extent_buffer*, %struct.btrfs_inode_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
