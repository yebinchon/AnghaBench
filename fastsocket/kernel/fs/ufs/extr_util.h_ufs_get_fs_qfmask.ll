; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_fs_qfmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_fs_qfmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_super_block_third*)* @ufs_get_fs_qfmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_get_fs_qfmask(%struct.super_block* %0, %struct.ufs_super_block_third* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ufs_super_block_third*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ufs_super_block_third* %1, %struct.ufs_super_block_third** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.TYPE_10__* @UFS_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UFS_ST_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %63 [
    i32 129, label %12
    i32 130, label %12
    i32 128, label %29
    i32 131, label %46
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %14 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %22 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %27, i32* %28, align 4
  br label %63

29:                                               ; preds = %2
  %30 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %31 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %39 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %44, i32* %45, align 4
  br label %63

46:                                               ; preds = %2
  %47 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %48 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %4, align 8
  %56 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %2, %46, %29, %12
  %64 = load %struct.super_block*, %struct.super_block** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @fs64_to_cpu(%struct.super_block* %64, i32 %65)
  ret i32 %66
}

declare dso_local %struct.TYPE_10__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
