; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_bitmap.c_affs_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_bitmap.c_affs_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.affs_bm_info = type { i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.affs_bm_info* }

@.str = private unnamed_addr constant [27 x i8] c"AFFS: count_free_blocks()\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @affs_count_free_blocks(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.affs_bm_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MS_RDONLY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.affs_bm_info*, %struct.affs_bm_info** %22, align 8
  store %struct.affs_bm_info* %23, %struct.affs_bm_info** %4, align 8
  store i64 0, i64* %5, align 8
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %15
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.affs_bm_info*, %struct.affs_bm_info** %4, align 8
  %33 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %31
  %38 = load %struct.affs_bm_info*, %struct.affs_bm_info** %4, align 8
  %39 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %38, i32 1
  store %struct.affs_bm_info* %39, %struct.affs_bm_info** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = call %struct.TYPE_2__* @AFFS_SB(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %42, %14
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
