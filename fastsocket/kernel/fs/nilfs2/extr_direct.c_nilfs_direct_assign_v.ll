; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_assign_v.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_assign_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_direct = type { i32 }
%struct.buffer_head = type { i32 }
%union.nilfs_binfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%union.nilfs_bmap_ptr_req = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_direct*, i32, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_direct_assign_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_assign_v(%struct.nilfs_direct* %0, i32 %1, i32 %2, %struct.buffer_head** %3, i32 %4, %union.nilfs_binfo* %5) #0 {
  %7 = alloca %struct.nilfs_direct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.nilfs_binfo*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %union.nilfs_bmap_ptr_req, align 4
  %15 = alloca i32, align 4
  store %struct.nilfs_direct* %0, %struct.nilfs_direct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %union.nilfs_binfo* %5, %union.nilfs_binfo** %12, align 8
  %16 = load %struct.nilfs_direct*, %struct.nilfs_direct** %7, align 8
  %17 = getelementptr inbounds %struct.nilfs_direct, %struct.nilfs_direct* %16, i32 0, i32 0
  %18 = call %struct.inode* @nilfs_bmap_get_dat(i32* %17)
  store %struct.inode* %18, %struct.inode** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %struct.inode*, %struct.inode** %13, align 8
  %22 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  %23 = call i32 @nilfs_dat_prepare_start(%struct.inode* %21, i32* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %6
  %27 = load %struct.inode*, %struct.inode** %13, align 8
  %28 = bitcast %union.nilfs_bmap_ptr_req* %14 to i32*
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @nilfs_dat_commit_start(%struct.inode* %27, i32* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @nilfs_bmap_ptr_to_dptr(i32 %31)
  %33 = load %union.nilfs_binfo*, %union.nilfs_binfo** %12, align 8
  %34 = bitcast %union.nilfs_binfo* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @nilfs_bmap_key_to_dkey(i32 %36)
  %38 = load %union.nilfs_binfo*, %union.nilfs_binfo** %12, align 8
  %39 = bitcast %union.nilfs_binfo* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %26, %6
  %42 = load i32, i32* %15, align 4
  ret i32 %42
}

declare dso_local %struct.inode* @nilfs_bmap_get_dat(i32*) #1

declare dso_local i32 @nilfs_dat_prepare_start(%struct.inode*, i32*) #1

declare dso_local i32 @nilfs_dat_commit_start(%struct.inode*, i32*, i32) #1

declare dso_local i32 @nilfs_bmap_ptr_to_dptr(i32) #1

declare dso_local i32 @nilfs_bmap_key_to_dkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
