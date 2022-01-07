; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_btree_trace.c_xfs_btree_trace_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_btree_cur*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, i32*, i32*, i32*)* }

@.str = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@XFS_BTREE_KTRACE_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_btree_trace_cursor(i8* %0, %struct.xfs_btree_cur* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %18 [
    i32 131, label %14
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %19

15:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %19

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %19

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14
  %20 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %21 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.xfs_btree_cur*, i32*, i32*, i32*)*, i32 (%struct.xfs_btree_cur*, i32*, i32*, i32*)** %23, align 8
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %26 = call i32 %24(%struct.xfs_btree_cur* %25, i32* %9, i32* %10, i32* %11)
  %27 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %28 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.xfs_btree_cur*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.xfs_btree_cur*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %30, align 8
  %32 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* @XFS_BTREE_KTRACE_CUR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, 32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 32
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %51 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %63 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %75 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %73, %78
  %80 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %81 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %87 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %85, %90
  %92 = call i32 %31(%struct.xfs_btree_cur* %32, i8* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 %39, i32 %40, i32 %42, i32 %43, i32 %49, i32 %55, i32 %61, i32 %67, i32 %79, i32 %91)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
