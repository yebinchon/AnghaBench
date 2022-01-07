; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_ext4_ext_swap_inode_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_ext4_ext_swap_inode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.ext4_inode_info = type { i32, i32* }

@EXT4_IND_BLOCK = common dso_local global i64 0, align 8
@EXT4_DIND_BLOCK = common dso_local global i64 0, align 8
@EXT4_TIND_BLOCK = common dso_local global i64 0, align 8
@EXT4_STATE_EXT_MIGRATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.inode*)* @ext4_ext_swap_inode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_swap_inode_data(i32* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.ext4_inode_info*, align 8
  %10 = alloca %struct.ext4_inode_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %11)
  store %struct.ext4_inode_info* %12, %struct.ext4_inode_info** %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %13)
  store %struct.ext4_inode_info* %14, %struct.ext4_inode_info** %10, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ext4_journal_extend(i32* %15, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ext4_journal_restart(i32* %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %102

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %28 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @EXT4_IND_BLOCK, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %35 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @EXT4_DIND_BLOCK, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %42 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @EXT4_TIND_BLOCK, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %49, i32 0, i32 0
  %51 = call i32 @down_write(i32* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %54 = call i32 @ext4_test_inode_state(%struct.inode* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %26
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %60, i32 0, i32 0
  %62 = call i32 @up_write(i32* %61)
  br label %102

63:                                               ; preds = %26
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %66 = call i32 @ext4_clear_inode_state(%struct.inode* %64, i32 %65)
  br label %67

67:                                               ; preds = %63
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %70 = call i32 @ext4_test_inode_flag(%struct.inode* %68, i32 %69)
  %71 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %9, align 8
  %72 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %10, align 8
  %75 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @memcpy(i32* %73, i32* %76, i32 8)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %92, i32 0, i32 0
  %94 = call i32 @up_write(i32* %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %98 = call i32 @free_ind_block(i32* %95, %struct.inode* %96, i32* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = call i32 @ext4_mark_inode_dirty(i32* %99, %struct.inode* %100)
  br label %102

102:                                              ; preds = %67, %56, %24
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_journal_extend(i32*, i32) #1

declare dso_local i32 @ext4_journal_restart(i32*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_ind_block(i32*, %struct.inode*, i32*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
