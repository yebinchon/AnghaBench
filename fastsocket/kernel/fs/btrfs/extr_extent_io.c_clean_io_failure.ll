; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_clean_io_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_clean_io_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.io_failure_record = type { i64, i32, i32, i32, i64, i32 }
%struct.btrfs_mapping_tree = type { i32 }
%struct.extent_state = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.btrfs_mapping_tree }
%struct.TYPE_9__ = type { i32 }

@EXTENT_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"clean_io_failure: freeing dummy error at %llu\0A\00", align 1
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.page*)* @clean_io_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_io_failure(i64 %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.io_failure_record*, align 8
  %9 = alloca %struct.btrfs_mapping_tree*, align 8
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %14, align 8
  store i64 0, i64* %6, align 8
  %20 = load %struct.inode*, %struct.inode** %14, align 8
  %21 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* @EXTENT_DIRTY, align 4
  %24 = call i32 @count_range_bits(i32* %22, i64* %6, i64 -1, i32 1, i32 %23, i32 0)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %14, align 8
  %30 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @get_state_private(i32* %31, i64 %32, i64* %7)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %133

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = inttoptr i64 %38 to %struct.io_failure_record*
  store %struct.io_failure_record* %39, %struct.io_failure_record** %8, align 8
  %40 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %41 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %48 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %53 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %54)
  store i32 1, i32* %12, align 4
  br label %123

56:                                               ; preds = %37
  %57 = load %struct.inode*, %struct.inode** %14, align 8
  %58 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %14, align 8
  %63 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %66 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @EXTENT_LOCKED, align 4
  %69 = call %struct.extent_state* @find_first_extent_bit_state(%struct.TYPE_9__* %64, i64 %67, i32 %68)
  store %struct.extent_state* %69, %struct.extent_state** %10, align 8
  %70 = load %struct.inode*, %struct.inode** %14, align 8
  %71 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.extent_state*, %struct.extent_state** %10, align 8
  %76 = icmp ne %struct.extent_state* %75, null
  br i1 %76, label %77, label %122

77:                                               ; preds = %56
  %78 = load %struct.extent_state*, %struct.extent_state** %10, align 8
  %79 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %82 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %122

85:                                               ; preds = %77
  %86 = load %struct.inode*, %struct.inode** %14, align 8
  %87 = call %struct.TYPE_10__* @BTRFS_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %92, %struct.btrfs_mapping_tree** %9, align 8
  %93 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %9, align 8
  %94 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %95 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %98 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @btrfs_num_copies(%struct.btrfs_mapping_tree* %93, i32 %96, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %121

103:                                              ; preds = %85
  %104 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %9, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %107 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %110 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.page*, %struct.page** %5, align 8
  %113 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %114 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @repair_io_failure(%struct.btrfs_mapping_tree* %104, i64 %105, i32 %108, i32 %111, %struct.page* %112, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %103, %85
  br label %122

122:                                              ; preds = %121, %77, %56
  br label %123

123:                                              ; preds = %122, %51
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load %struct.inode*, %struct.inode** %14, align 8
  %128 = load %struct.io_failure_record*, %struct.io_failure_record** %8, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @free_io_failure(%struct.inode* %127, %struct.io_failure_record* %128, i32 %129)
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %36, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @count_range_bits(i32*, i64*, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @get_state_private(i32*, i64, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.extent_state* @find_first_extent_bit_state(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_mapping_tree*, i32, i32) #1

declare dso_local i32 @repair_io_failure(%struct.btrfs_mapping_tree*, i64, i32, i32, %struct.page*, i32) #1

declare dso_local i32 @free_io_failure(%struct.inode*, %struct.io_failure_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
