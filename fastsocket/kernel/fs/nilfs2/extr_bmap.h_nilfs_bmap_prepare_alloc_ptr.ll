; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.h_nilfs_bmap_prepare_alloc_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_bmap.h_nilfs_bmap_prepare_alloc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%union.nilfs_bmap_ptr_req = type { i64 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*)* @nilfs_bmap_prepare_alloc_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_bmap_prepare_alloc_ptr(%struct.nilfs_bmap* %0, %union.nilfs_bmap_ptr_req* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca %union.nilfs_bmap_ptr_req*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store %union.nilfs_bmap_ptr_req* %1, %union.nilfs_bmap_ptr_req** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %6, align 8
  %13 = bitcast %union.nilfs_bmap_ptr_req* %12 to i32*
  %14 = call i32 @nilfs_dat_prepare_alloc(%struct.inode* %11, i32* %13)
  store i32 %14, i32* %4, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %17 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %18 to i64
  %21 = load %union.nilfs_bmap_ptr_req*, %union.nilfs_bmap_ptr_req** %6, align 8
  %22 = bitcast %union.nilfs_bmap_ptr_req* %21 to i64*
  store i64 %20, i64* %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %10
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @nilfs_dat_prepare_alloc(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
