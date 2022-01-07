; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_caching_kthread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode-map.c_caching_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i32, i32, i32, %struct.btrfs_free_space_ctl*, %struct.btrfs_fs_info* }
%struct.btrfs_free_space_ctl = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32, i64, i64 }
%struct.btrfs_path = type { i32, i32, i32, i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@INODE_MAP_CACHE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_INODE_ITEM_KEY = common dso_local global i64 0, align 8
@BTRFS_CACHE_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @caching_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caching_kthread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_free_space_ctl*, align 8
  %7 = alloca %struct.btrfs_key, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.btrfs_root*
  store %struct.btrfs_root* %14, %struct.btrfs_root** %4, align 8
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 7
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %5, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 6
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %19, align 8
  store %struct.btrfs_free_space_ctl* %20, %struct.btrfs_free_space_ctl** %6, align 8
  store i32 -1, i32* %10, align 4
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %22 = load i32, i32* @INODE_MAP_CACHE, align 4
  %23 = call i32 @btrfs_test_opt(%struct.btrfs_root* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %210

26:                                               ; preds = %1
  %27 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %27, %struct.btrfs_path** %8, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = icmp ne %struct.btrfs_path* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %210

33:                                               ; preds = %26
  %34 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %35 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %39 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %38, i32 0, i32 2
  store i32 2, i32* %39, align 8
  %40 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %41 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %106, %33
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %50 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %51 = call i32 @btrfs_search_slot(i32* null, %struct.btrfs_root* %49, %struct.btrfs_key* %7, %struct.btrfs_path* %50, i32 0, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %200

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %118, %161
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %58 = call i64 @btrfs_fs_closing(%struct.btrfs_fs_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %200

61:                                               ; preds = %56
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 4
  %64 = load %struct.extent_buffer**, %struct.extent_buffer*** %63, align 8
  %65 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %64, i64 0
  %66 = load %struct.extent_buffer*, %struct.extent_buffer** %65, align 8
  store %struct.extent_buffer* %66, %struct.extent_buffer** %9, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %68 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %74 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %73)
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %61
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %79 = call i32 @btrfs_next_leaf(%struct.btrfs_root* %77, %struct.btrfs_path* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %200

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %168

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = call i64 (...) @need_resched()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %93 = call i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %91, %88
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %97 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %96, i32 0, i32 4
  %98 = load %struct.extent_buffer**, %struct.extent_buffer*** %97, align 8
  %99 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %98, i64 0
  %100 = load %struct.extent_buffer*, %struct.extent_buffer** %99, align 8
  store %struct.extent_buffer* %100, %struct.extent_buffer** %9, align 8
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %102 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = call i32 @WARN_ON(i32 1)
  br label %168

106:                                              ; preds = %95
  %107 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %108 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %107, %struct.btrfs_key* %7, i32 0)
  %109 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %110 = call i32 @btrfs_release_path(%struct.btrfs_path* %109)
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %113 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %115 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %114, i32 0, i32 2
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = call i32 @schedule_timeout(i32 1)
  br label %45

118:                                              ; preds = %91
  br label %56

119:                                              ; preds = %61
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @btrfs_item_key_to_cpu(%struct.extent_buffer* %120, %struct.btrfs_key* %7, i32 %121)
  %123 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BTRFS_INODE_ITEM_KEY, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %161

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %132 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %168

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %158

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  %142 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  %149 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %146, i32 %148, i32 %153)
  %155 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %156 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %155, i32 0, i32 3
  %157 = call i32 @wake_up(i32* %156)
  br label %158

158:                                              ; preds = %145, %139, %136
  %159 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %7, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %158, %127
  %162 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %163 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %56

168:                                              ; preds = %135, %104, %86
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %171 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %168
  %176 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %6, align 8
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %180 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %10, align 4
  %183 = sub nsw i32 %181, %182
  %184 = sub nsw i32 %183, 1
  %185 = call i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl* %176, i32 %178, i32 %184)
  br label %186

186:                                              ; preds = %175, %168
  %187 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %188 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %187, i32 0, i32 4
  %189 = call i32 @spin_lock(i32* %188)
  %190 = load i32, i32* @BTRFS_CACHE_FINISHED, align 4
  %191 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %192 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 4
  %195 = call i32 @spin_unlock(i32* %194)
  %196 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %197 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %196, i32 0, i32 0
  store i32 -1, i32* %197, align 8
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %199 = call i32 @btrfs_unpin_free_ino(%struct.btrfs_root* %198)
  br label %200

200:                                              ; preds = %186, %82, %60, %54
  %201 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %202 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %201, i32 0, i32 3
  %203 = call i32 @wake_up(i32* %202)
  %204 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %205 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %204, i32 0, i32 2
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %208 = call i32 @btrfs_free_path(%struct.btrfs_path* %207)
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %200, %30, %25
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_root*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_search_slot(i32*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i64 @btrfs_fs_closing(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_next_leaf(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @btrfs_transaction_in_commit(%struct.btrfs_fs_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(%struct.extent_buffer*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @__btrfs_add_free_space(%struct.btrfs_free_space_ctl*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_unpin_free_ino(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
