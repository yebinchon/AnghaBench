; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_direct = type { i32 }
%union.nilfs_bmap_ptr_req = type { i64 }
%struct.inode = type { i32 }

@NILFS_DIRECT_KEY_MAX = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32)* @nilfs_direct_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_delete(%struct.nilfs_bmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_direct*, align 8
  %7 = alloca %union.nilfs_bmap_ptr_req, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %11 = bitcast %struct.nilfs_bmap* %10 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %11, %struct.nilfs_direct** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NILFS_DIRECT_KEY_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_direct* %16, i32 %17)
  %19 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %15
  %25 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %26 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %30 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %29)
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi %struct.inode* [ %30, %28 ], [ null, %31 ]
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @nilfs_direct_get_ptr(%struct.nilfs_direct* %34, i32 %35)
  %37 = bitcast %union.nilfs_bmap_ptr_req* %7 to i64*
  store i64 %36, i64* %37, align 8
  %38 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap* %38, %union.nilfs_bmap_ptr_req* %7, %struct.inode* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %32
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap* %44, %union.nilfs_bmap_ptr_req* %7, %struct.inode* %45)
  %47 = load %struct.nilfs_direct*, %struct.nilfs_direct** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* @NILFS_BMAP_INVALID_PTR, align 8
  %50 = call i32 @nilfs_direct_set_ptr(%struct.nilfs_direct* %47, i32 %48, i64 %49)
  %51 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %52 = call i32 @nilfs_bmap_sub_blocks(%struct.nilfs_bmap* %51, i32 1)
  br label %53

53:                                               ; preds = %43, %32
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @nilfs_direct_get_ptr(%struct.nilfs_direct*, i32) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_prepare_end_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_bmap_commit_end_ptr(%struct.nilfs_bmap*, %union.nilfs_bmap_ptr_req*, %struct.inode*) #1

declare dso_local i32 @nilfs_direct_set_ptr(%struct.nilfs_direct*, i32, i64) #1

declare dso_local i32 @nilfs_bmap_sub_blocks(%struct.nilfs_bmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
