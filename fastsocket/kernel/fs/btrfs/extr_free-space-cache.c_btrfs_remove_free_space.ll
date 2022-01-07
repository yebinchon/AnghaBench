; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_remove_free_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_btrfs_remove_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.btrfs_free_space_ctl* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_free_space = type { i64, i64, i32 }

@btrfs_free_space_cachep = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_free_space_ctl*, align 8
  %8 = alloca %struct.btrfs_free_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %13 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %12, i32 0, i32 0
  %14 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %13, align 8
  store %struct.btrfs_free_space_ctl* %14, %struct.btrfs_free_space_ctl** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %16 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  br label %18

18:                                               ; preds = %157, %118, %82, %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %161

22:                                               ; preds = %18
  %23 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %23, i64 %24, i32 0, i32 0)
  store %struct.btrfs_free_space* %25, %struct.btrfs_free_space** %8, align 8
  %26 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %27 = icmp ne %struct.btrfs_free_space* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %30 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl* %30, i64 %31)
  %33 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %29, i64 %32, i32 1, i32 0)
  store %struct.btrfs_free_space* %33, %struct.btrfs_free_space** %8, align 8
  %34 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %35 = icmp ne %struct.btrfs_free_space* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %161

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %149, label %43

43:                                               ; preds = %38
  %44 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %45 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %46 = call i32 @unlink_free_space(%struct.btrfs_free_space_ctl* %44, %struct.btrfs_free_space* %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %55 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @min(i64 %53, i64 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %60 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %65 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %69 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %74 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %75 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %73, %struct.btrfs_free_space* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WARN_ON(i32 %76)
  br label %82

78:                                               ; preds = %52
  %79 = load i32, i32* @btrfs_free_space_cachep, align 4
  %80 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %81 = call i32 @kmem_cache_free(i32 %79, %struct.btrfs_free_space* %80)
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %6, align 8
  br label %18

89:                                               ; preds = %43
  %90 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %91 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %99 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %103 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %105 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %106 = call i32 @link_free_space(%struct.btrfs_free_space_ctl* %104, %struct.btrfs_free_space* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @WARN_ON(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %89
  br label %161

112:                                              ; preds = %89
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %5, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load i64, i64* %6, align 8
  %123 = sub nsw i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %5, align 8
  br label %18

125:                                              ; preds = %112
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %6, align 8
  %129 = add nsw i64 %127, %128
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %161

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %135 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock(i32* %135)
  %137 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* %6, align 8
  %144 = add nsw i64 %142, %143
  %145 = sub nsw i64 %141, %144
  %146 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %137, i64 %140, i64 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @WARN_ON(i32 %147)
  br label %165

149:                                              ; preds = %38
  %150 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %151 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %152 = call i32 @remove_from_bitmap(%struct.btrfs_free_space_ctl* %150, %struct.btrfs_free_space* %151, i64* %5, i64* %6)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @EAGAIN, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %18

158:                                              ; preds = %149
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @BUG_ON(i32 %159)
  br label %161

161:                                              ; preds = %158, %131, %111, %36, %21
  %162 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %7, align 8
  %163 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %162, i32 0, i32 0
  %164 = call i32 @spin_unlock(i32* %163)
  br label %165

165:                                              ; preds = %161, %133
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl*, i64, i32, i32) #1

declare dso_local i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl*, i64) #1

declare dso_local i32 @unlink_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @link_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_free_space*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i64, i64) #1

declare dso_local i32 @remove_from_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64*, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
