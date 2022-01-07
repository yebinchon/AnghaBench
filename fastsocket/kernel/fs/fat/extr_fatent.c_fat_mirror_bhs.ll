; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_mirror_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_mirror_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i32, i32 }
%struct.msdos_sb_info = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head**, i32)* @fat_mirror_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_mirror_bhs(%struct.super_block* %0, %struct.buffer_head** %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msdos_sb_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %13)
  store %struct.msdos_sb_info* %14, %struct.msdos_sb_info** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %15

15:                                               ; preds = %90, %3
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %15
  %22 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %23 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %86, %21
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %34, i64 %36
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %33, %40
  %42 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %32, i32 %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %8, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %94

48:                                               ; preds = %31
  %49 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %52, i64 %54
  %56 = load %struct.buffer_head*, %struct.buffer_head** %55, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %51, i32 %58, i32 %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %64 = call i32 @set_buffer_uptodate(%struct.buffer_head* %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %67 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %65, i32 %68)
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %48
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = call i32 @sync_dirty_buffer(%struct.buffer_head* %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %48
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = call i32 @brelse(%struct.buffer_head* %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %94

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %27

89:                                               ; preds = %27
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %15

93:                                               ; preds = %15
  br label %94

94:                                               ; preds = %93, %84, %45
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, i32) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
