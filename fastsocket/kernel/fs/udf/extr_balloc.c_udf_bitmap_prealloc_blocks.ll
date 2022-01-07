; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_bitmap_prealloc_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_bitmap_prealloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.inode = type { i32 }
%struct.udf_bitmap = type { %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.udf_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"bit already cleared for block %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, %struct.udf_bitmap*, i64, i64, i64)* @udf_bitmap_prealloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_bitmap_prealloc_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.udf_bitmap* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.udf_bitmap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.udf_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.udf_bitmap* %2, %struct.udf_bitmap** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %23)
  store %struct.udf_sb_info* %24, %struct.udf_sb_info** %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %29 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %22, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %22, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  br label %144

39:                                               ; preds = %6
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* %22, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %140, %49
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @udf_compute_nr_groups(%struct.super_block* %51, i64 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 32
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.super_block*, %struct.super_block** %7, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 3
  %62 = ashr i32 %57, %61
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i64 0, i64 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %18, align 4
  %68 = load %struct.super_block*, %struct.super_block** %7, align 8
  %69 = load %struct.udf_bitmap*, %struct.udf_bitmap** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @load_block_bitmap(%struct.super_block* %68, %struct.udf_bitmap* %69, i32 %70)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %144

75:                                               ; preds = %50
  %76 = load %struct.udf_bitmap*, %struct.udf_bitmap** %9, align 8
  %77 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %76, i32 0, i32 0
  %78 = load %struct.buffer_head**, %struct.buffer_head*** %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %78, i64 %80
  %82 = load %struct.buffer_head*, %struct.buffer_head** %81, align 8
  store %struct.buffer_head* %82, %struct.buffer_head** %21, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.super_block*, %struct.super_block** %7, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 3
  %88 = srem i32 %83, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %128, %75
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.super_block*, %struct.super_block** %7, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 3
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i64, i64* %12, align 8
  %98 = icmp sgt i64 %97, 0
  br label %99

99:                                               ; preds = %96, %89
  %100 = phi i1 [ false, %89 ], [ %98, %96 ]
  br i1 %100, label %101, label %137

101:                                              ; preds = %99
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @udf_test_bit(i32 %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %144

109:                                              ; preds = %101
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i64 @vfs_dq_prealloc_block(%struct.inode* %110, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %144

114:                                              ; preds = %109
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @udf_clear_bit(i32 %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @udf_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = call i32 @vfs_dq_free_block(%struct.inode* %124, i32 1)
  br label %144

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %89

137:                                              ; preds = %99
  %138 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %139 = call i32 @mark_buffer_dirty(%struct.buffer_head* %138)
  br label %140

140:                                              ; preds = %137
  %141 = load i64, i64* %12, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %50, label %143

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %143, %121, %113, %108, %74, %38
  %145 = load %struct.super_block*, %struct.super_block** %7, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 0, %147
  %149 = call i32 @udf_add_free_space(%struct.super_block* %145, i64 %146, i32 %148)
  %150 = load %struct.udf_sb_info*, %struct.udf_sb_info** %13, align 8
  %151 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %14, align 4
  ret i32 %153
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_compute_nr_groups(%struct.super_block*, i64) #1

declare dso_local i32 @load_block_bitmap(%struct.super_block*, %struct.udf_bitmap*, i32) #1

declare dso_local i32 @udf_test_bit(i32, i32) #1

declare dso_local i64 @vfs_dq_prealloc_block(%struct.inode*, i32) #1

declare dso_local i32 @udf_clear_bit(i32, i32) #1

declare dso_local i32 @udf_debug(i8*, i32) #1

declare dso_local i32 @vfs_dq_free_block(%struct.inode*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
