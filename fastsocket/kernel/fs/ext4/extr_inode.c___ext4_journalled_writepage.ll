; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___ext4_journalled_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___ext4_journalled_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }

@bget_one = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@bput_one = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i32)* @__ext4_journalled_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_journalled_writepage(%struct.page* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %7, align 8
  %16 = load %struct.address_space*, %struct.address_space** %7, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call %struct.buffer_head* @page_buffers(%struct.page* %19)
  store %struct.buffer_head* %20, %struct.buffer_head** %9, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @bget_one, align 4
  %30 = call i32 @walk_page_buffers(i32* %26, %struct.buffer_head* %27, i32 0, i32 %28, i32* null, i32 %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @unlock_page(%struct.page* %31)
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %34)
  %36 = call i32* @ext4_journal_start(%struct.inode* %33, i32 %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %11, align 4
  br label %74

43:                                               ; preds = %3
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @do_journal_get_write_access, align 4
  %48 = call i32 @walk_page_buffers(i32* %44, %struct.buffer_head* %45, i32 0, i32 %46, i32* null, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @write_end_fn, align 4
  %53 = call i32 @walk_page_buffers(i32* %49, %struct.buffer_head* %50, i32 0, i32 %51, i32* null, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @ext4_journal_stop(i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @bput_one, align 4
  %70 = call i32 @walk_page_buffers(i32* %66, %struct.buffer_head* %67, i32 0, i32 %68, i32* null, i32 %69)
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %73 = call i32 @ext4_set_inode_state(%struct.inode* %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %40
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @walk_page_buffers(i32*, %struct.buffer_head*, i32, i32, i32*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
