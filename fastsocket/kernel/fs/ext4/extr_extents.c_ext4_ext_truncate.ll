; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, %struct.super_block*, %struct.address_space* }
%struct.super_block = type { i32 }
%struct.address_space = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_ext_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 5
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 4
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @flush_aio_dio_completed_IO(%struct.inode* %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @ext4_journal_start(%struct.inode* %18, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %114

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.address_space*, %struct.address_space** %3, align 8
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ext4_block_truncate_page(i32* %36, %struct.address_space* %37, i32 %40)
  br label %42

42:                                               ; preds = %35, %25
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i64 @ext4_orphan_add(i32* %43, %struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %89

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @down_write(i32* %51)
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = call i32 @ext4_discard_preallocations(%struct.inode* %55)
  %57 = load %struct.inode*, %struct.inode** %2, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  %61 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %2, align 8
  %65 = call i32 @ext4_mark_inode_dirty(i32* %63, %struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.super_block*, %struct.super_block** %4, align 8
  %70 = getelementptr inbounds %struct.super_block, %struct.super_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %74)
  %76 = ashr i32 %73, %75
  store i32 %76, i32* %5, align 4
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @ext4_ext_remove_space(%struct.inode* %77, i32 %78, i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = call i64 @IS_SYNC(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %48
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @ext4_handle_sync(i32* %86)
  br label %88

88:                                               ; preds = %85, %48
  br label %89

89:                                               ; preds = %88, %47
  %90 = load %struct.inode*, %struct.inode** %2, align 8
  %91 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = call i32 @up_write(i32* %92)
  %94 = load %struct.inode*, %struct.inode** %2, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = call i32 @ext4_orphan_del(i32* %99, %struct.inode* %100)
  br label %102

102:                                              ; preds = %98, %89
  %103 = load %struct.inode*, %struct.inode** %2, align 8
  %104 = call i32 @ext4_current_time(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %2, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.inode*, %struct.inode** %2, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 2
  store i32 %104, i32* %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  %111 = call i32 @ext4_mark_inode_dirty(i32* %109, %struct.inode* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @ext4_journal_stop(i32* %112)
  br label %114

114:                                              ; preds = %102, %24
  ret void
}

declare dso_local i32 @flush_aio_dio_completed_IO(%struct.inode*) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_block_truncate_page(i32*, %struct.address_space*, i32) #1

declare dso_local i64 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_ext_invalidate_cache(%struct.inode*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i64) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_current_time(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
