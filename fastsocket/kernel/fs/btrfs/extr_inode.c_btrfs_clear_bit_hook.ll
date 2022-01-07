; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_clear_bit_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_clear_bit_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.btrfs_root = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.btrfs_root* }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_FIRST_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@BTRFS_DATA_RELOC_TREE_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_state*, i32*)* @btrfs_clear_bit_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_clear_bit_hook(%struct.inode* %0, %struct.extent_state* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %11 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EXTENT_DELALLOC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %143

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EXTENT_DELALLOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %143

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %25, align 8
  store %struct.btrfs_root* %26, %struct.btrfs_root** %7, align 8
  %27 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %28 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %32 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %8, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @btrfs_is_free_space_inode(%struct.btrfs_root* %35, %struct.inode* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXTENT_FIRST_DELALLOC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %22
  %47 = load i32, i32* @EXTENT_FIRST_DELALLOC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %73

52:                                               ; preds = %22
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  br label %72

72:                                               ; preds = %58, %52
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @btrfs_delalloc_release_metadata(%struct.inode* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %85 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BTRFS_DATA_RELOC_TREE_OBJECTID, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @btrfs_free_reserved_data_space(%struct.inode* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %90, %83
  %98 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %99 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %105 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, %103
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %112
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %97
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = call i32 @list_empty(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = call i32 @list_del_init(i32* %135)
  br label %137

137:                                              ; preds = %132, %126, %120, %97
  %138 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %139 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %138, i32 0, i32 0
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  br label %143

143:                                              ; preds = %137, %16, %3
  ret void
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_free_reserved_data_space(%struct.inode*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
