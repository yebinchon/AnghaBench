; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.file* }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i64, %struct.address_space* }

@DELALLOC = common dso_local global i32 0, align 4
@ext4_da_get_block_prep = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@ext4_bh_unmapped = common dso_local global i32 0, align 4
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@ext4_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.vm_fault*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %4, align 8
  %14 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %15 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %14, i32 0, i32 0
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %5, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %9, align 8
  %20 = load %struct.file*, %struct.file** %9, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load %struct.address_space*, %struct.address_space** %27, align 8
  store %struct.address_space* %28, %struct.address_space** %11, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sb_start_pagefault(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DELALLOC, align 4
  %37 = call i64 @test_opt(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i64 @ext4_should_journal_data(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ext4_nonda_switch(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %66, %49
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %52 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %53 = load i32, i32* @ext4_da_get_block_prep, align 4
  %54 = call i32 @__block_page_mkwrite(%struct.vm_area_struct* %51, %struct.vm_fault* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ext4_should_retry_alloc(i32 %63, i32* %13)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi i1 [ false, %55 ], [ %65, %60 ]
  br i1 %67, label %50, label %68

68:                                               ; preds = %66
  br label %175

69:                                               ; preds = %43, %39, %2
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @lock_page(%struct.page* %70)
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call i64 @i_size_read(%struct.inode* %72)
  store i64 %73, i64* %6, align 8
  %74 = load %struct.page*, %struct.page** %5, align 8
  %75 = getelementptr inbounds %struct.page, %struct.page* %74, i32 0, i32 1
  %76 = load %struct.address_space*, %struct.address_space** %75, align 8
  %77 = load %struct.address_space*, %struct.address_space** %11, align 8
  %78 = icmp ne %struct.address_space* %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %69
  %80 = load %struct.page*, %struct.page** %5, align 8
  %81 = call i64 @page_offset(%struct.page* %80)
  %82 = load i64, i64* %6, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %69
  %85 = load %struct.page*, %struct.page** %5, align 8
  %86 = call i32 @unlock_page(%struct.page* %85)
  %87 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %87, i32* %8, align 4
  br label %178

88:                                               ; preds = %79
  %89 = load %struct.page*, %struct.page** %5, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %94 = zext i32 %93 to i64
  %95 = lshr i64 %92, %94
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  store i64 %101, i64* %7, align 8
  br label %104

102:                                              ; preds = %88
  %103 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %102, %97
  %105 = load %struct.page*, %struct.page** %5, align 8
  %106 = call i64 @page_has_buffers(%struct.page* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load %struct.page*, %struct.page** %5, align 8
  %110 = call i32 @page_buffers(%struct.page* %109)
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* @ext4_bh_unmapped, align 4
  %113 = call i64 @walk_page_buffers(i32* null, i32 %110, i32 0, i64 %111, i32* null, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = call i32 @wait_for_stable_page(%struct.page* %116)
  %118 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %118, i32* %8, align 4
  br label %178

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %104
  %121 = load %struct.page*, %struct.page** %5, align 8
  %122 = call i32 @unlock_page(%struct.page* %121)
  br label %123

123:                                              ; preds = %173, %120
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %125)
  %127 = call i32* @ext4_journal_start(%struct.inode* %124, i32 %126)
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = call i64 @IS_ERR(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %132, i32* %8, align 4
  br label %178

133:                                              ; preds = %123
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %135 = load %struct.vm_fault*, %struct.vm_fault** %4, align 8
  %136 = load i32, i32* @ext4_get_block, align 4
  %137 = call i32 @__block_page_mkwrite(%struct.vm_area_struct* %134, %struct.vm_fault* %135, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %133
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = call i64 @ext4_should_journal_data(%struct.inode* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %140
  %145 = load i32*, i32** %12, align 8
  %146 = load %struct.page*, %struct.page** %5, align 8
  %147 = call i32 @page_buffers(%struct.page* %146)
  %148 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %149 = load i32, i32* @do_journal_get_write_access, align 4
  %150 = call i64 @walk_page_buffers(i32* %145, i32 %147, i32 0, i64 %148, i32* null, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load %struct.page*, %struct.page** %5, align 8
  %154 = call i32 @unlock_page(%struct.page* %153)
  %155 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %155, i32* %8, align 4
  br label %178

156:                                              ; preds = %144
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %159 = call i32 @ext4_set_inode_state(%struct.inode* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %140, %133
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @ext4_journal_stop(i32* %161)
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @ENOSPC, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.inode*, %struct.inode** %10, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @ext4_should_retry_alloc(i32 %170, i32* %13)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %123

174:                                              ; preds = %167, %160
  br label %175

175:                                              ; preds = %174, %68
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @block_page_mkwrite_return(i32 %176)
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %175, %152, %131, %115, %84
  %179 = load %struct.inode*, %struct.inode** %10, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @sb_end_pagefault(i32 %181)
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_nonda_switch(i32) #1

declare dso_local i32 @__block_page_mkwrite(%struct.vm_area_struct*, %struct.vm_fault*, i32) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @walk_page_buffers(i32*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @block_page_mkwrite_return(i32) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
