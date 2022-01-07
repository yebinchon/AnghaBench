; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)* }
%union.xfs_btree_rec = type { i32 }

@XBT_ARGS = common dso_local global i32 0, align 4
@XFS_BTREE_KTRACE_ARGR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_btree_trace_argr(i8* %0, %struct.xfs_btree_cur* %1, %union.xfs_btree_rec* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca %union.xfs_btree_rec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %6, align 8
  store %union.xfs_btree_rec* %2, %union.xfs_btree_rec** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)** %15, align 8
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %18 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %7, align 8
  %19 = call i32 %16(%struct.xfs_btree_cur* %17, %union.xfs_btree_rec* %18, i32* %9, i32* %10, i32* %11)
  %20 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %23, align 8
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @XBT_ARGS, align 4
  %28 = load i32, i32* @XFS_BTREE_KTRACE_ARGR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 32
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 32
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = ashr i32 %36, 32
  %38 = load i32, i32* %11, align 4
  %39 = call i32 %24(%struct.xfs_btree_cur* %25, i8* %26, i32 %27, i32 %28, i32 %29, i32 %31, i32 %32, i32 %34, i32 %35, i32 %37, i32 %38, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
