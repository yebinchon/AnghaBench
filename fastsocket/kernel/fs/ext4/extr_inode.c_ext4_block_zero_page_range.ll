; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_block_zero_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_block_zero_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"freed: skip\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"still unmapped\00", align 1
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"zeroed end of block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_block_zero_page_range(i32* %0, %struct.address_space* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.address_space*, %struct.address_space** %7, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %16, align 8
  store i32 0, i32* %19, align 4
  %30 = load %struct.address_space*, %struct.address_space** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.address_space*, %struct.address_space** %7, align 8
  %35 = call i32 @mapping_gfp_mask(%struct.address_space* %34)
  %36 = load i32, i32* @__GFP_FS, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call %struct.page* @find_or_create_page(%struct.address_space* %30, i32 %33, i32 %38)
  store %struct.page* %39, %struct.page** %18, align 8
  %40 = load %struct.page*, %struct.page** %18, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %212

45:                                               ; preds = %4
  %46 = load %struct.inode*, %struct.inode** %16, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub i32 %53, 1
  %55 = and i32 %52, %54
  %56 = sub i32 %51, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %68 = load %struct.inode*, %struct.inode** %16, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %67, %72
  %74 = shl i32 %66, %73
  store i32 %74, i32* %15, align 4
  %75 = load %struct.page*, %struct.page** %18, align 8
  %76 = call i32 @page_has_buffers(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %65
  %79 = load %struct.inode*, %struct.inode** %16, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* @NOBH, align 4
  %83 = call i64 @test_opt(%struct.TYPE_2__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.inode*, %struct.inode** %16, align 8
  %87 = call i64 @ext4_should_writeback_data(%struct.inode* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load %struct.page*, %struct.page** %18, align 8
  %91 = call i64 @PageUptodate(%struct.page* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.page*, %struct.page** %18, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @zero_user(%struct.page* %94, i32 %95, i32 %96)
  %98 = load %struct.page*, %struct.page** %18, align 8
  %99 = call i32 @set_page_dirty(%struct.page* %98)
  br label %206

100:                                              ; preds = %89, %85, %78, %65
  %101 = load %struct.page*, %struct.page** %18, align 8
  %102 = call i32 @page_has_buffers(%struct.page* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.page*, %struct.page** %18, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @create_empty_buffers(%struct.page* %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.page*, %struct.page** %18, align 8
  %110 = call %struct.buffer_head* @page_buffers(%struct.page* %109)
  store %struct.buffer_head* %110, %struct.buffer_head** %17, align 8
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %116, %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp uge i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 0
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  store %struct.buffer_head* %119, %struct.buffer_head** %17, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %14, align 4
  br label %112

125:                                              ; preds = %112
  store i32 0, i32* %19, align 4
  %126 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %127 = call i64 @buffer_freed(%struct.buffer_head* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %131 = call i32 @BUFFER_TRACE(%struct.buffer_head* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %206

132:                                              ; preds = %125
  %133 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %134 = call i32 @buffer_mapped(%struct.buffer_head* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %132
  %137 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %138 = call i32 @BUFFER_TRACE(%struct.buffer_head* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.inode*, %struct.inode** %16, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %142 = call i32 @ext4_get_block(%struct.inode* %139, i32 %140, %struct.buffer_head* %141, i32 0)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %144 = call i32 @buffer_mapped(%struct.buffer_head* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %136
  %147 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %148 = call i32 @BUFFER_TRACE(%struct.buffer_head* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %206

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %132
  %151 = load %struct.page*, %struct.page** %18, align 8
  %152 = call i64 @PageUptodate(%struct.page* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %156 = call i32 @set_buffer_uptodate(%struct.buffer_head* %155)
  br label %157

157:                                              ; preds = %154, %150
  %158 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %159 = call i32 @buffer_uptodate(%struct.buffer_head* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* @READ, align 4
  %165 = call i32 @ll_rw_block(i32 %164, i32 1, %struct.buffer_head** %17)
  %166 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %167 = call i32 @wait_on_buffer(%struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %169 = call i32 @buffer_uptodate(%struct.buffer_head* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %161
  br label %206

172:                                              ; preds = %161
  br label %173

173:                                              ; preds = %172, %157
  %174 = load %struct.inode*, %struct.inode** %16, align 8
  %175 = call i64 @ext4_should_journal_data(%struct.inode* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %179 = call i32 @BUFFER_TRACE(%struct.buffer_head* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32*, i32** %6, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %182 = call i32 @ext4_journal_get_write_access(i32* %180, %struct.buffer_head* %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %206

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %173
  %188 = load %struct.page*, %struct.page** %18, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @zero_user(%struct.page* %188, i32 %189, i32 %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %193 = call i32 @BUFFER_TRACE(%struct.buffer_head* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  %194 = load %struct.inode*, %struct.inode** %16, align 8
  %195 = call i64 @ext4_should_journal_data(%struct.inode* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %187
  %198 = load i32*, i32** %6, align 8
  %199 = load %struct.inode*, %struct.inode** %16, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %201 = call i32 @ext4_handle_dirty_metadata(i32* %198, %struct.inode* %199, %struct.buffer_head* %200)
  store i32 %201, i32* %19, align 4
  br label %205

202:                                              ; preds = %187
  %203 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %204 = call i32 @mark_buffer_dirty(%struct.buffer_head* %203)
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205, %185, %171, %146, %129, %93
  %207 = load %struct.page*, %struct.page** %18, align 8
  %208 = call i32 @unlock_page(%struct.page* %207)
  %209 = load %struct.page*, %struct.page** %18, align 8
  %210 = call i32 @page_cache_release(%struct.page* %209)
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %206, %42
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @test_opt(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @ext4_should_writeback_data(%struct.inode*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
