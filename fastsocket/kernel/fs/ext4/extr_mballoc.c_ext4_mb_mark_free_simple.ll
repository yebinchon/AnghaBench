; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_mark_free_simple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_mark_free_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_group_info = type { i32* }
%struct.ext4_sb_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i8*, i64, i64, %struct.ext4_group_info*)* @ext4_mb_mark_free_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_mark_free_simple(%struct.super_block* %0, i8* %1, i64 %2, i64 %3, %struct.ext4_group_info* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_group_info*, align 8
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ext4_group_info* %4, %struct.ext4_group_info** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %19)
  %21 = icmp sgt i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 2, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %15, align 2
  br label %29

29:                                               ; preds = %75, %5
  %30 = load i64, i64* %9, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load i16, i16* %15, align 2
  %35 = zext i16 %34 to i64
  %36 = or i64 %33, %35
  %37 = call i64 @ffs(i64 %36)
  %38 = sub nsw i64 %37, 1
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @fls(i64 %39)
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i64, i64* %13, align 8
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %14, align 8
  %52 = load %struct.ext4_group_info*, %struct.ext4_group_info** %10, align 8
  %53 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* %12, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %47
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %12, align 8
  %64 = ashr i64 %62, %63
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %67 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %65, i64 %72
  %74 = call i32 @mb_clear_bit(i64 %64, i8* %73)
  br label %75

75:                                               ; preds = %61, %47
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %29

82:                                               ; preds = %29
  ret void
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @mb_clear_bit(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
