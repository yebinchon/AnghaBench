; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.page = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ext4_bh_delay_or_unwritten = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@PF_KSWAPD = common dso_local global i32 0, align 4
@noalloc_get_block_write = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ext4_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @trace_ext4_writepage(%struct.inode* %16, %struct.page* %17)
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call i32 @i_size_read(%struct.inode* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %26 = lshr i32 %24, %25
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PAGE_CACHE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %8, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i64 @page_has_buffers(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call %struct.buffer_head* @page_buffers(%struct.page* %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %9, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ext4_bh_delay_or_unwritten, align 4
  %45 = call i64 @walk_page_buffers(i32* null, %struct.buffer_head* %42, i32 0, i32 %43, i32* null, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PF_MEMALLOC, align 4
  %52 = load i32, i32* @PF_KSWAPD, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* @PF_MEMALLOC, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON_ONCE(i32 %57)
  %59 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %59, %struct.page* %60)
  %62 = load %struct.page*, %struct.page** %4, align 8
  %63 = call i32 @unlock_page(%struct.page* %62)
  store i32 0, i32* %3, align 4
  br label %135

64:                                               ; preds = %39
  br label %97

65:                                               ; preds = %35
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @noalloc_get_block_write, align 4
  %69 = call i32 @block_prepare_write(%struct.page* %66, i32 0, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %65
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = call %struct.buffer_head* @page_buffers(%struct.page* %73)
  store %struct.buffer_head* %74, %struct.buffer_head** %9, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ext4_bh_delay_or_unwritten, align 4
  %78 = call i64 @walk_page_buffers(i32* null, %struct.buffer_head* %75, i32 0, i32 %76, i32* null, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %82 = load %struct.page*, %struct.page** %4, align 8
  %83 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %81, %struct.page* %82)
  %84 = load %struct.page*, %struct.page** %4, align 8
  %85 = call i32 @unlock_page(%struct.page* %84)
  store i32 0, i32* %3, align 4
  br label %135

86:                                               ; preds = %72
  br label %93

87:                                               ; preds = %65
  %88 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %88, %struct.page* %89)
  %91 = load %struct.page*, %struct.page** %4, align 8
  %92 = call i32 @unlock_page(%struct.page* %91)
  store i32 0, i32* %3, align 4
  br label %135

93:                                               ; preds = %86
  %94 = load %struct.page*, %struct.page** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @block_commit_write(%struct.page* %94, i32 0, i32 %95)
  br label %97

97:                                               ; preds = %93, %64
  %98 = load %struct.page*, %struct.page** %4, align 8
  %99 = call i64 @PageChecked(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i64 @ext4_should_journal_data(%struct.inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.page*, %struct.page** %4, align 8
  %107 = call i32 @ClearPageChecked(%struct.page* %106)
  %108 = load %struct.page*, %struct.page** %4, align 8
  %109 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @__ext4_journalled_writepage(%struct.page* %108, %struct.writeback_control* %109, i32 %110)
  store i32 %111, i32* %3, align 4
  br label %135

112:                                              ; preds = %101, %97
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NOBH, align 4
  %117 = call i64 @test_opt(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = call i64 @ext4_should_writeback_data(%struct.inode* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.page*, %struct.page** %4, align 8
  %125 = load i32, i32* @noalloc_get_block_write, align 4
  %126 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %127 = call i32 @nobh_writepage(%struct.page* %124, i32 %125, %struct.writeback_control* %126)
  store i32 %127, i32* %6, align 4
  br label %133

128:                                              ; preds = %119, %112
  %129 = load %struct.page*, %struct.page** %4, align 8
  %130 = load i32, i32* @noalloc_get_block_write, align 4
  %131 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %132 = call i32 @block_write_full_page(%struct.page* %129, i32 %130, %struct.writeback_control* %131)
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %105, %87, %80, %47
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @trace_ext4_writepage(%struct.inode*, %struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @walk_page_buffers(i32*, %struct.buffer_head*, i32, i32, i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @block_prepare_write(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @__ext4_journalled_writepage(%struct.page*, %struct.writeback_control*, i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext4_should_writeback_data(%struct.inode*) #1

declare dso_local i32 @nobh_writepage(%struct.page*, i32, %struct.writeback_control*) #1

declare dso_local i32 @block_write_full_page(%struct.page*, i32, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
