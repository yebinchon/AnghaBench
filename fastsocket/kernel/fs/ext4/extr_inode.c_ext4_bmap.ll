; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @ext4_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.address_space*, %struct.address_space** %4, align 8
  %13 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %14 = call i64 @mapping_tagged(%struct.address_space* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DELALLOC, align 4
  %21 = call i64 @test_opt(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = call i32 @filemap_write_and_wait(%struct.address_space* %24)
  br label %26

26:                                               ; preds = %23, %16, %2
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32* @EXT4_JOURNAL(%struct.inode* %27)
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %33 = call i64 @ext4_test_inode_state(%struct.inode* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %38 = call i32 @ext4_clear_inode_state(%struct.inode* %36, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32* @EXT4_JOURNAL(%struct.inode* %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @jbd2_journal_lock_updates(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @jbd2_journal_flush(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @jbd2_journal_unlock_updates(i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %56

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %30, %26
  %52 = load %struct.address_space*, %struct.address_space** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ext4_get_block, align 4
  %55 = call i32 @generic_block_bmap(%struct.address_space* %52, i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @filemap_write_and_wait(%struct.address_space*) #1

declare dso_local i32* @EXT4_JOURNAL(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @generic_block_bmap(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
