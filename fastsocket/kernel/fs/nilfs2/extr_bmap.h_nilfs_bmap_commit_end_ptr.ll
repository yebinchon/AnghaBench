; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.h_nilfs_bmap_commit_end_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.h_nilfs_bmap_commit_end_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i64 }
%union.nilfs_bmap_ptr_req = type { i32 }
%struct.inode = type { i32 }

@NILFS_BMAP_PTR_VS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*)* @nilfs_bmap_commit_end_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap* %0, %union.nilfs_bmap_ptr_req* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store %union.nilfs_bmap_ptr_req* %1, %union.nilfs_bmap_ptr_req** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %5, align 8
  %12 = bitcast %union.nilfs_bmap_ptr_req* %11 to i32*
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %14 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NILFS_BMAP_PTR_VS, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @nilfs_dat_commit_end(%struct.inode* %10, i32* %12, i32 %18)
  br label %20

20:                                               ; preds = %9, %3
  ret void
}

declare dso_local i32 @nilfs_dat_commit_end(%struct.inode*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
