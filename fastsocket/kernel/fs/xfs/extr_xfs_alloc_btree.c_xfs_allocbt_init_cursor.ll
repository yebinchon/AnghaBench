; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_alloc_btree.c_xfs_allocbt_init_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_alloc_btree.c_xfs_allocbt_init_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i64, %struct.TYPE_6__, i32, i32*, i32, i32, %struct.xfs_mount*, %struct.xfs_trans* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.xfs_buf* }
%struct.xfs_mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_agf = type { i32* }

@XFS_BTNUM_BNO = common dso_local global i64 0, align 8
@XFS_BTNUM_CNT = common dso_local global i64 0, align 8
@xfs_btree_cur_zone = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@xfs_allocbt_ops = common dso_local global i32 0, align 4
@XFS_BTREE_LASTREC_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_btree_cur* @xfs_allocbt_init_cursor(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_buf* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_agf*, align 8
  %12 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %14 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf* %13)
  store %struct.xfs_agf* %14, %struct.xfs_agf** %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ true, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @xfs_btree_cur_zone, align 4
  %27 = load i32, i32* @KM_SLEEP, align 4
  %28 = call %struct.xfs_btree_cur* @kmem_zone_zalloc(i32 %26, i32 %27)
  store %struct.xfs_btree_cur* %28, %struct.xfs_btree_cur** %12, align 8
  %29 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %31 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %30, i32 0, i32 7
  store %struct.xfs_trans* %29, %struct.xfs_trans** %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %33, i32 0, i32 6
  store %struct.xfs_mount* %32, %struct.xfs_mount** %34, align 8
  %35 = load %struct.xfs_agf*, %struct.xfs_agf** %11, align 8
  %36 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %43 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %46 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %48 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %52 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %54 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %53, i32 0, i32 3
  store i32* @xfs_allocbt_ops, i32** %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %22
  %59 = load i32, i32* @XFS_BTREE_LASTREC_UPDATE, align 4
  %60 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %61 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %22
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %64 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %65 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store %struct.xfs_buf* %63, %struct.xfs_buf** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %12, align 8
  ret %struct.xfs_btree_cur* %73
}

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(%struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_cur* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
