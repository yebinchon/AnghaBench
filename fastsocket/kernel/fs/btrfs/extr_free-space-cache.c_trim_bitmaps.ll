; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_trim_bitmaps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_trim_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i64, i32, i32 }
%struct.btrfs_free_space = type { i64 }

@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i64*, i64, i64, i64)* @trim_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trim_bitmaps(%struct.btrfs_block_group_cache* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.btrfs_block_group_cache*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.btrfs_free_space_ctl*, align 8
  %12 = alloca %struct.btrfs_free_space*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 0
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %19, align 8
  store %struct.btrfs_free_space_ctl* %20, %struct.btrfs_free_space_ctl** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl* %21, i64 %22)
  store i64 %23, i64* %16, align 8
  br label %24

24:                                               ; preds = %151, %5
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %24
  store i32 0, i32* %17, align 4
  %29 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %30 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %29, i32 0, i32 2
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %33 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %39 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock(i32* %39)
  br label %153

41:                                               ; preds = %28
  %42 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %43 = load i64, i64* %16, align 8
  %44 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %42, i64 %43, i32 1, i32 0)
  store %struct.btrfs_free_space* %44, %struct.btrfs_free_space** %12, align 8
  %45 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %46 = icmp ne %struct.btrfs_free_space* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %49 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 1, i32* %17, align 4
  br label %108

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %15, align 8
  %53 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %54 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %55 = call i32 @search_bitmap(%struct.btrfs_free_space_ctl* %53, %struct.btrfs_free_space* %54, i64* %8, i64* %15)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %51
  %63 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %64 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  store i32 1, i32* %17, align 4
  br label %108

66:                                               ; preds = %58
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i64 @min(i64 %67, i64 %70)
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %77 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %76, i32 0, i32 2
  %78 = call i32 @spin_unlock(i32* %77)
  br label %108

79:                                               ; preds = %66
  %80 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %81 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %80, %struct.btrfs_free_space* %81, i64 %82, i64 %83)
  %85 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %86 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %91 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %12, align 8
  %92 = call i32 @free_bitmap(%struct.btrfs_free_space_ctl* %90, %struct.btrfs_free_space* %91)
  br label %93

93:                                               ; preds = %89, %79
  %94 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %95 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %94, i32 0, i32 2
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %6, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @do_trimming(%struct.btrfs_block_group_cache* %97, i64* %98, i64 %99, i64 %100, i64 %101, i64 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %153

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %75, %62, %47
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* @BITS_PER_BITMAP, align 4
  %113 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %114 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %16, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %16, align 8
  br label %144

120:                                              ; preds = %108
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i32, i32* @BITS_PER_BITMAP, align 4
  %127 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %128 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %125, %131
  %133 = icmp sge i64 %124, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %120
  %135 = load i32, i32* @BITS_PER_BITMAP, align 4
  %136 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %11, align 8
  %137 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %16, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %16, align 8
  br label %143

143:                                              ; preds = %134, %120
  br label %144

144:                                              ; preds = %143, %111
  %145 = load i32, i32* @current, align 4
  %146 = call i64 @fatal_signal_pending(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, i32* @ERESTARTSYS, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %153

151:                                              ; preds = %144
  %152 = call i32 (...) @cond_resched()
  br label %24

153:                                              ; preds = %148, %106, %37, %24
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl*, i64, i32, i32) #1

declare dso_local i32 @search_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64*, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @free_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @do_trimming(%struct.btrfs_block_group_cache*, i64*, i64, i64, i64, i64) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
