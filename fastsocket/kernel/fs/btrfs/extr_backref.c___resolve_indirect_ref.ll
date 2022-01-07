; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___resolve_indirect_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___resolve_indirect_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.__prelim_ref = type { i32, i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.ulist = type { i32 }
%struct.btrfs_path = type { i32, i32, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"search slot in root %llu (level %d, ref count %d) returned %d for key (%llu %u %llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, i64, %struct.__prelim_ref*, %struct.ulist*, i64*)* @__resolve_indirect_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__resolve_indirect_ref(%struct.btrfs_fs_info* %0, i32 %1, i64 %2, %struct.__prelim_ref* %3, %struct.ulist* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.__prelim_ref*, align 8
  %12 = alloca %struct.ulist*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.btrfs_path*, align 8
  %15 = alloca %struct.btrfs_root*, align 8
  %16 = alloca %struct.btrfs_key, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.__prelim_ref* %3, %struct.__prelim_ref** %11, align 8
  store %struct.ulist* %4, %struct.ulist** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %22 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 4
  %24 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %24, %struct.btrfs_path** %14, align 8
  %25 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %26 = icmp ne %struct.btrfs_path* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %143

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %39 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 2
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %16, i32 0, i32 0
  store i64 -1, i64* %44, align 8
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %46 = call %struct.btrfs_root* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %45, %struct.btrfs_key* %16)
  store %struct.btrfs_root* %46, %struct.btrfs_root** %15, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %48 = call i64 @IS_ERR(%struct.btrfs_root* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %52 = call i32 @PTR_ERR(%struct.btrfs_root* %51)
  store i32 %52, i32* %18, align 4
  br label %139

53:                                               ; preds = %30
  %54 = call i32 (...) @rcu_read_lock()
  %55 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %56 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @btrfs_header_level(i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %20, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %139

65:                                               ; preds = %53
  %66 = load i32, i32* %20, align 4
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %68 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %70 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %71 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %70, i32 0, i32 2
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @btrfs_search_old_slot(%struct.btrfs_root* %69, %struct.TYPE_3__* %71, %struct.btrfs_path* %72, i64 %73)
  store i32 %74, i32* %18, align 4
  %75 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %76 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %80 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %84 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %88 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %92 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %77, i32 %78, i32 %81, i32 %82, i64 %86, i32 %90, i64 %94)
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %65
  br label %139

99:                                               ; preds = %65
  %100 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %101 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %100, i32 0, i32 2
  %102 = load %struct.extent_buffer**, %struct.extent_buffer*** %101, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %102, i64 %104
  %106 = load %struct.extent_buffer*, %struct.extent_buffer** %105, align 8
  store %struct.extent_buffer* %106, %struct.extent_buffer** %17, align 8
  br label %107

107:                                              ; preds = %116, %99
  %108 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %109 = icmp ne %struct.extent_buffer* %108, null
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call i32 @WARN_ON(i32 1)
  store i32 1, i32* %18, align 4
  br label %139

116:                                              ; preds = %111
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %20, align 4
  %119 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %120 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %119, i32 0, i32 2
  %121 = load %struct.extent_buffer**, %struct.extent_buffer*** %120, align 8
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %121, i64 %123
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %124, align 8
  store %struct.extent_buffer* %125, %struct.extent_buffer** %17, align 8
  br label %107

126:                                              ; preds = %107
  %127 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %128 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %129 = load %struct.ulist*, %struct.ulist** %12, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %132 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %131, i32 0, i32 2
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.__prelim_ref*, %struct.__prelim_ref** %11, align 8
  %135 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64*, i64** %13, align 8
  %138 = call i32 @add_all_parents(%struct.btrfs_root* %127, %struct.btrfs_path* %128, %struct.ulist* %129, i32 %130, %struct.TYPE_3__* %132, i64 %133, i32 %136, i64* %137)
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %126, %114, %98, %64, %50
  %140 = load %struct.btrfs_path*, %struct.btrfs_path** %14, align 8
  %141 = call i32 @btrfs_free_path(%struct.btrfs_path* %140)
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %139, %27
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local %struct.btrfs_root* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @btrfs_header_level(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @btrfs_search_old_slot(%struct.btrfs_root*, %struct.TYPE_3__*, %struct.btrfs_path*, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i32, i64, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @add_all_parents(%struct.btrfs_root*, %struct.btrfs_path*, %struct.ulist*, i32, %struct.TYPE_3__*, i64, i32, i64*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
