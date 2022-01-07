; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_journaled_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFS2_JTRUNC_REVOKES = common dso_local global i64 0, align 8
@RES_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @gfs2_journaled_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_journaled_truncate(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %8, align 8
  %14 = load i64, i64* @GFS2_JTRUNC_REVOKES, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = mul nsw i64 %14, %19
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %54, %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @truncate_pagecache(%struct.inode* %35, i64 %36, i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %45 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %44)
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %47 = load i32, i32* @RES_DINODE, align 4
  %48 = load i64, i64* @GFS2_JTRUNC_REVOKES, align 8
  %49 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %46, i32 %47, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %34
  br label %21

55:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64, i64) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
