; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_ialloc_btree.c_xfs_inobt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_ialloc_btree.c_xfs_inobt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_6__, i32*, i32, i32, i32, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.xfs_buf* }
%struct.xfs_mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agi = type { i32 }

@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_BTNUM_INO = common dso_local global i32 0, align 4
@xfs_inobt_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_inobt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_trans*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_agi*, align 8
  %10 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %12 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf* %11)
  store %struct.xfs_agi* %12, %struct.xfs_agi** %9, align 8
  %13 = load i32, i32* @xfs_btree_cur_zone, align 4
  %14 = load i32, i32* @KM_SLEEP, align 4
  %15 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %13, i32 %14)
  store %struct.xfs_btree_cur* %15, %struct.xfs_btree_cur** %10, align 8
  %16 = load %struct.xfs_trans*, %struct.xfs_trans** %6, align 8
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %18 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %17, i32 0, i32 6
  store %struct.xfs_trans* %16, %struct.xfs_trans** %18, align 8
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %20 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %20, i32 0, i32 5
  store %struct.xfs_mount* %19, %struct.xfs_mount** %21, align 8
  %22 = load %struct.xfs_agi*, %struct.xfs_agi** %9, align 8
  %23 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %27 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @XFS_BTNUM_INO, align 4
  %29 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %30 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %37, i32 0, i32 1
  store i32* @xfs_inobt_ops, i32** %38, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %40 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %41 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store %struct.xfs_buf* %39, %struct.xfs_buf** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  %46 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %10, align 8
  ret %struct.xfs_btree_cur* %49
}

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(%struct.xfs_buf*) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
