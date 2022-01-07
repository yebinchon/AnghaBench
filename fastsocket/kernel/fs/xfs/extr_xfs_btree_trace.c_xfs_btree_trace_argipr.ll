; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argipr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_argipr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)* }
%union.xfs_btree_rec = type { i32 }
%union.xfs_btree_ptr = type { i32 }

@XBT_ARGS = common dso_local global i32 0, align 4
@XFS_BTREE_KTRACE_ARGIPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_btree_trace_argipr(i8* %0, %struct.xfs_btree_cur* %1, i32 %2, i32 %3, %union.xfs_btree_rec* %4, i32 %5) #0 {
  %7 = alloca %union.xfs_btree_ptr, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xfs_btree_cur*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.xfs_btree_rec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %union.xfs_btree_ptr, %union.xfs_btree_ptr* %7, i32 0, i32 0
  store i32 %3, i32* %18, align 4
  store i8* %0, i8** %8, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %9, align 8
  store i32 %2, i32* %10, align 4
  store %union.xfs_btree_rec* %4, %union.xfs_btree_rec** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %20 = getelementptr inbounds %union.xfs_btree_ptr, %union.xfs_btree_ptr* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xfs_btree_trace_ptr(%struct.xfs_btree_cur* %19, i32 %21, i32* %13, i32* %14)
  %23 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %24 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_rec*, i32*, i32*, i32*)** %26, align 8
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %29 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %11, align 8
  %30 = call i32 %27(%struct.xfs_btree_cur* %28, %union.xfs_btree_rec* %29, i32* %15, i32* %16, i32* %17)
  %31 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %32 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %34, align 8
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @XBT_ARGS, align 4
  %39 = load i32, i32* @XFS_BTREE_KTRACE_ARGIPR, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = ashr i32 %44, 32
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = ashr i32 %47, 32
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = ashr i32 %50, 32
  %52 = load i32, i32* %17, align 4
  %53 = call i32 %35(%struct.xfs_btree_cur* %36, i8* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %45, i32 %46, i32 %48, i32 %49, i32 %51, i32 %52, i32 0, i32 0)
  ret void
}

declare dso_local i32 @xfs_btree_trace_ptr(%struct.xfs_btree_cur*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
