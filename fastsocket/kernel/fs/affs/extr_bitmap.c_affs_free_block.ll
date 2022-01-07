; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_bitmap.c_affs_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_bitmap.c_affs_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.affs_sb_info = type { i64, i64, i64, i64, i32, %struct.buffer_head*, %struct.affs_bm_info* }
%struct.buffer_head = type { i64 }
%struct.affs_bm_info = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"AFFS: free_block(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"affs_free_block\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Trying to free block %u which is already free\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot read bitmap block %u\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Block %u outside partition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affs_free_block(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.affs_sb_info*, align 8
  %6 = alloca %struct.affs_bm_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %14)
  store %struct.affs_sb_info* %15, %struct.affs_sb_info** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %147

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %32 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sdiv i64 %30, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %37 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = srem i64 %35, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %41 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %40, i32 0, i32 6
  %42 = load %struct.affs_bm_info*, %struct.affs_bm_info** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %42, i64 %43
  store %struct.affs_bm_info* %44, %struct.affs_bm_info** %6, align 8
  %45 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %45, i32 0, i32 4
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %48, i32 0, i32 5
  %50 = load %struct.buffer_head*, %struct.buffer_head** %49, align 8
  store %struct.buffer_head* %50, %struct.buffer_head** %7, align 8
  %51 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %24
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call i32 @affs_brelse(%struct.buffer_head* %57)
  %59 = load %struct.super_block*, %struct.super_block** %3, align 8
  %60 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %61 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.buffer_head* @affs_bread(%struct.super_block* %59, i64 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %7, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %134

67:                                               ; preds = %56
  %68 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %69 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %69, i32 0, i32 5
  store %struct.buffer_head* %68, %struct.buffer_head** %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %73 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %24
  %75 = load i64, i64* %10, align 8
  %76 = and i64 %75, 31
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %11, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = load i64, i64* %10, align 8
  %85 = sdiv i64 %84, 32
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @be32_to_cpu(i32 %89)
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %11, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %74
  br label %127

96:                                               ; preds = %74
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %11, align 8
  %99 = or i64 %97, %98
  %100 = call i32 @cpu_to_be32(i64 %99)
  %101 = load i32*, i32** %13, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @be32_to_cpu(i32 %106)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub nsw i64 %108, %109
  %111 = call i32 @cpu_to_be32(i64 %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %113 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  store i32 %111, i32* %115, align 4
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = call i32 @mark_buffer_dirty(%struct.buffer_head* %116)
  %118 = load %struct.super_block*, %struct.super_block** %3, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %121 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %125 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %124, i32 0, i32 4
  %126 = call i32 @mutex_unlock(i32* %125)
  br label %151

127:                                              ; preds = %95
  %128 = load %struct.super_block*, %struct.super_block** %3, align 8
  %129 = load i64, i64* %4, align 8
  %130 = call i32 @affs_warning(%struct.super_block* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %132 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %131, i32 0, i32 4
  %133 = call i32 @mutex_unlock(i32* %132)
  br label %151

134:                                              ; preds = %66
  %135 = load %struct.super_block*, %struct.super_block** %3, align 8
  %136 = load %struct.affs_bm_info*, %struct.affs_bm_info** %6, align 8
  %137 = getelementptr inbounds %struct.affs_bm_info, %struct.affs_bm_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @affs_error(%struct.super_block* %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  %140 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %141 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %140, i32 0, i32 5
  store %struct.buffer_head* null, %struct.buffer_head** %141, align 8
  %142 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %143 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %142, i32 0, i32 3
  store i64 -1, i64* %143, align 8
  %144 = load %struct.affs_sb_info*, %struct.affs_sb_info** %5, align 8
  %145 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %144, i32 0, i32 4
  %146 = call i32 @mutex_unlock(i32* %145)
  br label %151

147:                                              ; preds = %23
  %148 = load %struct.super_block*, %struct.super_block** %3, align 8
  %149 = load i64, i64* %4, align 8
  %150 = call i32 @affs_error(%struct.super_block* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %147, %134, %127, %96
  ret void
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @affs_error(%struct.super_block*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
