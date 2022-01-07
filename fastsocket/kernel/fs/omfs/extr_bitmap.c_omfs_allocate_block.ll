; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_bitmap.c_omfs_allocate_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_bitmap.c_omfs_allocate_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.omfs_sb_info = type { i32, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omfs_allocate_block(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.omfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %12)
  store %struct.omfs_sb_info* %13, %struct.omfs_sb_info** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 8, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @do_div(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %24 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_and_set_bit(i32 %32, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31, %2
  br label %74

43:                                               ; preds = %31
  %44 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.super_block*, %struct.super_block** %3, align 8
  %50 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %51 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %52 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @clus_to_blk(%struct.omfs_sb_info* %50, i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call %struct.buffer_head* @sb_bread(%struct.super_block* %49, i64 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %5, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %48
  br label %74

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i64*
  %68 = call i32 @set_bit(i32 %63, i64* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %70 = call i32 @mark_buffer_dirty(%struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %62, %43
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %61, %42
  %75 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %6, align 8
  %76 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i64 @clus_to_blk(%struct.omfs_sb_info*, i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
