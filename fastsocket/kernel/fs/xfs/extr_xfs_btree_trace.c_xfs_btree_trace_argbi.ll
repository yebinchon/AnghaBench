; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.xfs_buf = type { i32 }

@XBT_ARGS = common dso_local global i32 0, align 4
@XFS_BTREE_KTRACE_ARGBI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_btree_trace_argbi(i8* %0, %struct.xfs_btree_cur* %1, %struct.xfs_buf* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xfs_btree_cur*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %7, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %14, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @XBT_ARGS, align 4
  %19 = load i32, i32* @XFS_BTREE_KTRACE_ARGBI, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %22 = ptrtoint %struct.xfs_buf* %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = call i32 %15(%struct.xfs_btree_cur* %16, i8* %17, i32 %18, i32 %19, i32 %20, i32 %22, i32 %23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
