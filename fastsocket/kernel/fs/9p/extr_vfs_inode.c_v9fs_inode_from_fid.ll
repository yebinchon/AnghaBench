; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_inode_from_fid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_inode_from_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.v9fs_session_info = type { i32 }
%struct.p9_fid = type { i32 }
%struct.super_block = type { i32 }
%struct.p9_wstat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.v9fs_session_info*, %struct.p9_fid*, %struct.super_block*)* @v9fs_inode_from_fid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @v9fs_inode_from_fid(%struct.v9fs_session_info* %0, %struct.p9_fid* %1, %struct.super_block* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.p9_wstat*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %5, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %12 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %13 = call %struct.p9_wstat* @p9_client_stat(%struct.p9_fid* %12)
  store %struct.p9_wstat* %13, %struct.p9_wstat** %11, align 8
  %14 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %15 = call i64 @IS_ERR(%struct.p9_wstat* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %19 = call %struct.p9_wstat* @ERR_CAST(%struct.p9_wstat* %18)
  %20 = bitcast %struct.p9_wstat* %19 to %struct.inode*
  store %struct.inode* %20, %struct.inode** %4, align 8
  br label %63

21:                                               ; preds = %3
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %23 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %24 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @p9mode2unixmode(%struct.v9fs_session_info* %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.p9_wstat* @v9fs_get_inode(%struct.super_block* %27, i32 %28)
  %30 = bitcast %struct.p9_wstat* %29 to %struct.inode*
  store %struct.inode* %30, %struct.inode** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = bitcast %struct.inode* %31 to %struct.p9_wstat*
  %33 = call i64 @IS_ERR(%struct.p9_wstat* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = bitcast %struct.inode* %36 to %struct.p9_wstat*
  %38 = call i32 @PTR_ERR(%struct.p9_wstat* %37)
  store i32 %38, i32* %8, align 4
  br label %55

39:                                               ; preds = %21
  %40 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = bitcast %struct.inode* %41 to %struct.p9_wstat*
  %43 = load %struct.super_block*, %struct.super_block** %7, align 8
  %44 = call i32 @v9fs_stat2inode(%struct.p9_wstat* %40, %struct.p9_wstat* %42, %struct.super_block* %43)
  %45 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %46 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %45, i32 0, i32 0
  %47 = call i32 @v9fs_qid2ino(i32* %46)
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %51 = call i32 @p9stat_free(%struct.p9_wstat* %50)
  %52 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %53 = call i32 @kfree(%struct.p9_wstat* %52)
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %54, %struct.inode** %4, align 8
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %57 = call i32 @p9stat_free(%struct.p9_wstat* %56)
  %58 = load %struct.p9_wstat*, %struct.p9_wstat** %11, align 8
  %59 = call i32 @kfree(%struct.p9_wstat* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.p9_wstat* @ERR_PTR(i32 %60)
  %62 = bitcast %struct.p9_wstat* %61 to %struct.inode*
  store %struct.inode* %62, %struct.inode** %4, align 8
  br label %63

63:                                               ; preds = %55, %39, %17
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %64
}

declare dso_local %struct.p9_wstat* @p9_client_stat(%struct.p9_fid*) #1

declare dso_local i64 @IS_ERR(%struct.p9_wstat*) #1

declare dso_local %struct.p9_wstat* @ERR_CAST(%struct.p9_wstat*) #1

declare dso_local i32 @p9mode2unixmode(%struct.v9fs_session_info*, i32) #1

declare dso_local %struct.p9_wstat* @v9fs_get_inode(%struct.super_block*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.p9_wstat*) #1

declare dso_local i32 @v9fs_stat2inode(%struct.p9_wstat*, %struct.p9_wstat*, %struct.super_block*) #1

declare dso_local i32 @v9fs_qid2ino(i32*) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @kfree(%struct.p9_wstat*) #1

declare dso_local %struct.p9_wstat* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
