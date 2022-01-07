; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap_btree.c_xfs_bmbt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap_btree.c_xfs_bmbt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, %struct.TYPE_8__, i32*, i32, i32, i64, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32*, i32, %struct.xfs_inode*, i32 }
%struct.xfs_mount = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_ifork = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_BTNUM_BMAP = common dso_local global i32 0, align 4
@xfs_bmbt_ops = common dso_local global i32 0, align 4
@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@XFS_BTREE_ROOT_IN_INODE = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_bmbt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_inode* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %6, align 8
  store %struct.xfs_inode* %2, %struct.xfs_inode** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %11, i32 %12)
  store %struct.xfs_ifork* %13, %struct.xfs_ifork** %9, align 8
  %14 = load i32, i32* @xfs_btree_cur_zone, align 4
  %15 = load i32, i32* @KM_SLEEP, align 4
  %16 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %14, i32 %15)
  store %struct.xfs_btree_cur* %16, %struct.xfs_btree_cur** %10, align 8
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %18 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %19 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %18, i32 0, i32 7
  store %struct.xfs_trans* %17, %struct.xfs_trans** %19, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %21 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %22 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %21, i32 0, i32 6
  store %struct.xfs_mount* %20, %struct.xfs_mount** %22, align 8
  %23 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %24 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  %29 = add nsw i64 %28, 1
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %31 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %30, i32 0, i32 5
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @XFS_BTNUM_BMAP, align 4
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %36 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %40 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %42 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %41, i32 0, i32 2
  store i32* @xfs_bmbt_ops, i32** %42, align 8
  %43 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %44 = load i32, i32* @XFS_BTREE_ROOT_IN_INODE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %47 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @XFS_IFORK_SIZE(%struct.xfs_inode* %48, i32 %49)
  %51 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %52 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  store i32 %50, i32* %54, align 8
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %56 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %57 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  store %struct.xfs_inode* %55, %struct.xfs_inode** %59, align 8
  %60 = load i32, i32* @NULLFSBLOCK, align 4
  %61 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %62 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %60, i32* %64, align 8
  %65 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %66 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %74 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %79 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 8
  %82 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  ret %struct.xfs_btree_cur* %82
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @XFS_IFORK_SIZE(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
