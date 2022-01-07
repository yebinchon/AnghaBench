; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.vm_fault = type { %struct.page* }
%struct.page = type { i64 }
%struct.inode = type { i64, i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.TYPE_6__ = type { %struct.btrfs_root*, i32, i32, %struct.extent_io_tree }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_page_mkwrite(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.extent_io_tree*, align 8
  %10 = alloca %struct.btrfs_ordered_extent*, align 8
  %11 = alloca %struct.extent_state*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %6, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_5__* @fdentry(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %30, align 8
  store %struct.btrfs_root* %31, %struct.btrfs_root** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store %struct.extent_io_tree* %34, %struct.extent_io_tree** %9, align 8
  store %struct.extent_state* null, %struct.extent_state** %11, align 8
  store i32 0, i32* %16, align 4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sb_start_pagefault(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %41 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %39, i64 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %2
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @btrfs_update_time(i32 %47)
  store i32 %48, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %49

49:                                               ; preds = %44, %2
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %58, i32* %15, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %216

65:                                               ; preds = %61
  br label %220

66:                                               ; preds = %49
  %67 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %105, %66
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = call i32 @lock_page(%struct.page* %69)
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i64 @i_size_read(%struct.inode* %71)
  store i64 %72, i64* %14, align 8
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i64 @page_offset(%struct.page* %73)
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %77 = add i64 %75, %76
  %78 = sub i64 %77, 1
  store i64 %78, i64* %18, align 8
  %79 = load %struct.page*, %struct.page** %6, align 8
  %80 = getelementptr inbounds %struct.page, %struct.page* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %68
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %68
  br label %204

91:                                               ; preds = %86
  %92 = load %struct.page*, %struct.page** %6, align 8
  %93 = call i32 @wait_on_page_writeback(%struct.page* %92)
  %94 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i32 @lock_extent_bits(%struct.extent_io_tree* %94, i64 %95, i64 %96, i32 0, %struct.extent_state** %11)
  %98 = load %struct.page*, %struct.page** %6, align 8
  %99 = call i32 @set_page_extent_mapped(%struct.page* %98)
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = load i64, i64* %17, align 8
  %102 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %100, i64 %101)
  store %struct.btrfs_ordered_extent* %102, %struct.btrfs_ordered_extent** %10, align 8
  %103 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %104 = icmp ne %struct.btrfs_ordered_extent* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %91
  %106 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i32, i32* @GFP_NOFS, align 4
  %110 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %106, i64 %107, i64 %108, %struct.extent_state** %11, i32 %109)
  %111 = load %struct.page*, %struct.page** %6, align 8
  %112 = call i32 @unlock_page(%struct.page* %111)
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %115 = call i32 @btrfs_start_ordered_extent(%struct.inode* %113, %struct.btrfs_ordered_extent* %114, i32 1)
  %116 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %10, align 8
  %117 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %116)
  br label %68

118:                                              ; preds = %91
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i32, i32* @EXTENT_DIRTY, align 4
  %125 = load i32, i32* @EXTENT_DELALLOC, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @GFP_NOFS, align 4
  %130 = call i32 @clear_extent_bit(%struct.extent_io_tree* %121, i64 %122, i64 %123, i32 %128, i32 0, i32 0, %struct.extent_state** %11, i32 %129)
  %131 = load %struct.inode*, %struct.inode** %7, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %18, align 8
  %134 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %131, i64 %132, i64 %133, %struct.extent_state** %11)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %118
  %138 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i32, i32* @GFP_NOFS, align 4
  %142 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %138, i64 %139, i64 %140, %struct.extent_state** %11, i32 %141)
  %143 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %143, i32* %15, align 4
  br label %204

144:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %147 = add i64 %145, %146
  %148 = load i64, i64* %14, align 8
  %149 = icmp ugt i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %153 = xor i64 %152, -1
  %154 = and i64 %151, %153
  store i64 %154, i64* %13, align 8
  br label %157

155:                                              ; preds = %144
  %156 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %156, i64* %13, align 8
  br label %157

157:                                              ; preds = %155, %150
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = load %struct.page*, %struct.page** %6, align 8
  %163 = call i8* @kmap(%struct.page* %162)
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %168 = load i64, i64* %13, align 8
  %169 = sub i64 %167, %168
  %170 = call i32 @memset(i8* %166, i32 0, i64 %169)
  %171 = load %struct.page*, %struct.page** %6, align 8
  %172 = call i32 @flush_dcache_page(%struct.page* %171)
  %173 = load %struct.page*, %struct.page** %6, align 8
  %174 = call i32 @kunmap(%struct.page* %173)
  br label %175

175:                                              ; preds = %161, %157
  %176 = load %struct.page*, %struct.page** %6, align 8
  %177 = call i32 @ClearPageChecked(%struct.page* %176)
  %178 = load %struct.page*, %struct.page** %6, align 8
  %179 = call i32 @set_page_dirty(%struct.page* %178)
  %180 = load %struct.page*, %struct.page** %6, align 8
  %181 = call i32 @SetPageUptodate(%struct.page* %180)
  %182 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %183 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.inode*, %struct.inode** %7, align 8
  %188 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %187)
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  store i32 %186, i32* %189, align 4
  %190 = load %struct.inode*, %struct.inode** %7, align 8
  %191 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %190)
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load %struct.btrfs_root*, %struct.btrfs_root** %192, align 8
  %194 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.inode*, %struct.inode** %7, align 8
  %197 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %196)
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 8
  %199 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load i32, i32* @GFP_NOFS, align 4
  %203 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %199, i64 %200, i64 %201, %struct.extent_state** %11, i32 %202)
  br label %204

204:                                              ; preds = %175, %137, %90
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %204
  %208 = load %struct.inode*, %struct.inode** %7, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @sb_end_pagefault(i32 %210)
  %212 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %212, i32* %3, align 4
  br label %226

213:                                              ; preds = %204
  %214 = load %struct.page*, %struct.page** %6, align 8
  %215 = call i32 @unlock_page(%struct.page* %214)
  br label %216

216:                                              ; preds = %213, %64
  %217 = load %struct.inode*, %struct.inode** %7, align 8
  %218 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %219 = call i32 @btrfs_delalloc_release_space(%struct.inode* %217, i64 %218)
  br label %220

220:                                              ; preds = %216, %65
  %221 = load %struct.inode*, %struct.inode** %7, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @sb_end_pagefault(i32 %223)
  %225 = load i32, i32* %15, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %220, %207
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.TYPE_5__* @fdentry(i32) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_update_time(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local i32 @set_page_extent_mapped(%struct.page*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, i32, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i64, i64, %struct.extent_state**) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

declare dso_local i32 @btrfs_delalloc_release_space(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
