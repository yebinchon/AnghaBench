; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_mark_inode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_mark_inode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_sb_info = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ext4_mark_inode_dirty.mnt_count = internal global i32 0, align 4
@EXT4_STATE_NO_EXPAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to expand inode %lu. Delete some EAs or run e2fsck.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_mark_inode_dirty(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_iloc, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ext4_sb_info* @EXT4_SB(i32 %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %6, align 8
  %13 = call i32 (...) @might_sleep()
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @ext4_reserve_inode_write(i32* %14, %struct.inode* %15, %struct.ext4_iloc* %5)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @ext4_handle_valid(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %20
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %32 = call i32 @ext4_test_inode_state(%struct.inode* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %82, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @EXT4_DATA_TRANS_BLOCKS(i32 %38)
  %40 = call i64 @jbd2_journal_extend(i32* %35, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %34
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ext4_expand_extra_isize(%struct.inode* %43, i64 %46, i32 %49, i32* %47)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %42
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load i32, i32* @EXT4_STATE_NO_EXPAND, align 4
  %56 = call i32 @ext4_set_inode_state(%struct.inode* %54, i32 %55)
  %57 = load i32, i32* @ext4_mark_inode_dirty.mnt_count, align 4
  %58 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %59 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = icmp ne i32 %57, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %53
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ext4_warning(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* @ext4_mark_inode_dirty.mnt_count, align 4
  br label %79

79:                                               ; preds = %65, %53
  br label %80

80:                                               ; preds = %79, %42
  br label %81

81:                                               ; preds = %80, %34
  br label %82

82:                                               ; preds = %81, %29, %20, %2
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.inode*, %struct.inode** %4, align 8
  %88 = call i32 @ext4_mark_iloc_dirty(i32* %86, %struct.inode* %87, %struct.ext4_iloc* %5)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i64 @ext4_handle_valid(i32*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i64 @jbd2_journal_extend(i32*, i32) #1

declare dso_local i32 @EXT4_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext4_expand_extra_isize(%struct.inode*, i64, i32, i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_warning(i32, i8*, i32) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
