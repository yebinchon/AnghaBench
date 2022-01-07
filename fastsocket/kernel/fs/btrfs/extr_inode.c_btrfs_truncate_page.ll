; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_truncate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.extent_state = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.TYPE_2__ = type { %struct.extent_io_tree, %struct.btrfs_root* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @btrfs_truncate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_truncate_page(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.extent_io_tree*, align 8
  %8 = alloca %struct.btrfs_ordered_extent*, align 8
  %9 = alloca %struct.extent_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.address_space*, %struct.address_space** %3, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %5, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %24, align 8
  store %struct.btrfs_root* %25, %struct.btrfs_root** %6, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.extent_io_tree* %28, %struct.extent_io_tree** %7, align 8
  store %struct.extent_state* null, %struct.extent_state** %9, align 8
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.address_space*, %struct.address_space** %3, align 8
  %40 = call i32 @btrfs_alloc_write_mask(%struct.address_space* %39)
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %197

47:                                               ; preds = %2
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %50 = call i32 @btrfs_delalloc_reserve_space(%struct.inode* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %197

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %16, align 4
  br label %57

57:                                               ; preds = %116, %89, %54
  %58 = load %struct.address_space*, %struct.address_space** %3, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.page* @find_or_create_page(%struct.address_space* %58, i32 %59, i32 %60)
  store %struct.page* %61, %struct.page** %14, align 8
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %67 = call i32 @btrfs_delalloc_release_space(%struct.inode* %65, i32 %66)
  br label %197

68:                                               ; preds = %57
  %69 = load %struct.page*, %struct.page** %14, align 8
  %70 = call i64 @page_offset(%struct.page* %69)
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %18, align 8
  %76 = load %struct.page*, %struct.page** %14, align 8
  %77 = call i32 @PageUptodate(%struct.page* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %68
  %80 = load %struct.page*, %struct.page** %14, align 8
  %81 = call i32 @btrfs_readpage(i32* null, %struct.page* %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.page*, %struct.page** %14, align 8
  %83 = call i32 @lock_page(%struct.page* %82)
  %84 = load %struct.page*, %struct.page** %14, align 8
  %85 = getelementptr inbounds %struct.page, %struct.page* %84, i32 0, i32 0
  %86 = load %struct.address_space*, %struct.address_space** %85, align 8
  %87 = load %struct.address_space*, %struct.address_space** %3, align 8
  %88 = icmp ne %struct.address_space* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.page*, %struct.page** %14, align 8
  %91 = call i32 @unlock_page(%struct.page* %90)
  %92 = load %struct.page*, %struct.page** %14, align 8
  %93 = call i32 @page_cache_release(%struct.page* %92)
  br label %57

94:                                               ; preds = %79
  %95 = load %struct.page*, %struct.page** %14, align 8
  %96 = call i32 @PageUptodate(%struct.page* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %16, align 4
  br label %185

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %68
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = call i32 @wait_on_page_writeback(%struct.page* %103)
  %105 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i32 @lock_extent_bits(%struct.extent_io_tree* %105, i64 %106, i64 %107, i32 0, %struct.extent_state** %9)
  %109 = load %struct.page*, %struct.page** %14, align 8
  %110 = call i32 @set_page_extent_mapped(%struct.page* %109)
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = load i64, i64* %17, align 8
  %113 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %111, i64 %112)
  store %struct.btrfs_ordered_extent* %113, %struct.btrfs_ordered_extent** %8, align 8
  %114 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %115 = icmp ne %struct.btrfs_ordered_extent* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %102
  %117 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i32, i32* @GFP_NOFS, align 4
  %121 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %117, i64 %118, i64 %119, %struct.extent_state** %9, i32 %120)
  %122 = load %struct.page*, %struct.page** %14, align 8
  %123 = call i32 @unlock_page(%struct.page* %122)
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i32 @page_cache_release(%struct.page* %124)
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %128 = call i32 @btrfs_start_ordered_extent(%struct.inode* %126, %struct.btrfs_ordered_extent* %127, i32 1)
  %129 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %8, align 8
  %130 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %129)
  br label %57

131:                                              ; preds = %102
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i32, i32* @EXTENT_DIRTY, align 4
  %138 = load i32, i32* @EXTENT_DELALLOC, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @GFP_NOFS, align 4
  %143 = call i32 @clear_extent_bit(%struct.extent_io_tree* %134, i64 %135, i64 %136, i32 %141, i32 0, i32 0, %struct.extent_state** %9, i32 %142)
  %144 = load %struct.inode*, %struct.inode** %5, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %144, i64 %145, i64 %146, %struct.extent_state** %9)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %131
  %151 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i32, i32* @GFP_NOFS, align 4
  %155 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %151, i64 %152, i64 %153, %struct.extent_state** %9, i32 %154)
  br label %185

156:                                              ; preds = %131
  store i32 0, i32* %16, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.page*, %struct.page** %14, align 8
  %162 = call i8* @kmap(%struct.page* %161)
  store i8* %162, i8** %10, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* %13, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub i32 %167, %168
  %170 = call i32 @memset(i8* %166, i32 0, i32 %169)
  %171 = load %struct.page*, %struct.page** %14, align 8
  %172 = call i32 @flush_dcache_page(%struct.page* %171)
  %173 = load %struct.page*, %struct.page** %14, align 8
  %174 = call i32 @kunmap(%struct.page* %173)
  br label %175

175:                                              ; preds = %160, %156
  %176 = load %struct.page*, %struct.page** %14, align 8
  %177 = call i32 @ClearPageChecked(%struct.page* %176)
  %178 = load %struct.page*, %struct.page** %14, align 8
  %179 = call i32 @set_page_dirty(%struct.page* %178)
  %180 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i32, i32* @GFP_NOFS, align 4
  %184 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %180, i64 %181, i64 %182, %struct.extent_state** %9, i32 %183)
  br label %185

185:                                              ; preds = %175, %150, %98
  %186 = load i32, i32* %16, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %191 = call i32 @btrfs_delalloc_release_space(%struct.inode* %189, i32 %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load %struct.page*, %struct.page** %14, align 8
  %194 = call i32 @unlock_page(%struct.page* %193)
  %195 = load %struct.page*, %struct.page** %14, align 8
  %196 = call i32 @page_cache_release(%struct.page* %195)
  br label %197

197:                                              ; preds = %192, %64, %53, %46
  %198 = load i32, i32* %16, align 4
  ret i32 %198
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_alloc_write_mask(%struct.address_space*) #1

declare dso_local i32 @btrfs_delalloc_reserve_space(%struct.inode*, i32) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @btrfs_delalloc_release_space(%struct.inode*, i32) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @btrfs_readpage(i32*, %struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local i32 @set_page_extent_mapped(%struct.page*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, i32, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i64, i64, %struct.extent_state**) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
