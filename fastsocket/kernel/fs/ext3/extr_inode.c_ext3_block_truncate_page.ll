; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_block_truncate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_block_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"freed: skip\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"still unmapped\00", align 1
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"zeroed end of block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.page*, %struct.address_space*, i32)* @ext3_block_truncate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_block_truncate_page(i32* %0, %struct.page* %1, %struct.address_space* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.address_space* %2, %struct.address_space** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.address_space*, %struct.address_space** %7, align 8
  %26 = getelementptr inbounds %struct.address_space, %struct.address_space* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %15, align 8
  store i32 0, i32* %17, align 4
  %28 = load %struct.inode*, %struct.inode** %15, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub i32 %35, 1
  %37 = and i32 %34, %36
  %38 = sub i32 %33, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %41 = load %struct.inode*, %struct.inode** %15, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %40, %45
  %47 = shl i32 %39, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.page*, %struct.page** %6, align 8
  %49 = call i32 @page_has_buffers(%struct.page* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %4
  %52 = load %struct.inode*, %struct.inode** %15, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* @NOBH, align 4
  %56 = call i64 @test_opt(%struct.TYPE_2__* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %15, align 8
  %60 = call i64 @ext3_should_writeback_data(%struct.inode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = call i64 @PageUptodate(%struct.page* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.page*, %struct.page** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @zero_user(%struct.page* %67, i32 %68, i32 %69)
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @set_page_dirty(%struct.page* %71)
  br label %186

73:                                               ; preds = %62, %58, %51, %4
  %74 = load %struct.page*, %struct.page** %6, align 8
  %75 = call i32 @page_has_buffers(%struct.page* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.page*, %struct.page** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @create_empty_buffers(%struct.page* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = call %struct.buffer_head* @page_buffers(%struct.page* %82)
  store %struct.buffer_head* %83, %struct.buffer_head** %16, align 8
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %89, %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load %struct.buffer_head*, %struct.buffer_head** %91, align 8
  store %struct.buffer_head* %92, %struct.buffer_head** %16, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %85

98:                                               ; preds = %85
  store i32 0, i32* %17, align 4
  %99 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %100 = call i64 @buffer_freed(%struct.buffer_head* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = call i32 @BUFFER_TRACE(%struct.buffer_head* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %186

105:                                              ; preds = %98
  %106 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %107 = call i32 @buffer_mapped(%struct.buffer_head* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %105
  %110 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %111 = call i32 @BUFFER_TRACE(%struct.buffer_head* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.inode*, %struct.inode** %15, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %115 = call i32 @ext3_get_block(%struct.inode* %112, i32 %113, %struct.buffer_head* %114, i32 0)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %117 = call i32 @buffer_mapped(%struct.buffer_head* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %121 = call i32 @BUFFER_TRACE(%struct.buffer_head* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %186

122:                                              ; preds = %109
  br label %123

123:                                              ; preds = %122, %105
  %124 = load %struct.page*, %struct.page** %6, align 8
  %125 = call i64 @PageUptodate(%struct.page* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %129 = call i32 @set_buffer_uptodate(%struct.buffer_head* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %132 = call i32 @buffer_uptodate(%struct.buffer_head* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* @READ, align 4
  %138 = call i32 @ll_rw_block(i32 %137, i32 1, %struct.buffer_head** %16)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %140 = call i32 @wait_on_buffer(%struct.buffer_head* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %142 = call i32 @buffer_uptodate(%struct.buffer_head* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %186

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %130
  %147 = load %struct.inode*, %struct.inode** %15, align 8
  %148 = call i64 @ext3_should_journal_data(%struct.inode* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %152 = call i32 @BUFFER_TRACE(%struct.buffer_head* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %155 = call i32 @ext3_journal_get_write_access(i32* %153, %struct.buffer_head* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %186

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.page*, %struct.page** %6, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @zero_user(%struct.page* %161, i32 %162, i32 %163)
  %165 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %166 = call i32 @BUFFER_TRACE(%struct.buffer_head* %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  %167 = load %struct.inode*, %struct.inode** %15, align 8
  %168 = call i64 @ext3_should_journal_data(%struct.inode* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load i32*, i32** %5, align 8
  %172 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %173 = call i32 @ext3_journal_dirty_metadata(i32* %171, %struct.buffer_head* %172)
  store i32 %173, i32* %17, align 4
  br label %185

174:                                              ; preds = %160
  %175 = load %struct.inode*, %struct.inode** %15, align 8
  %176 = call i64 @ext3_should_order_data(%struct.inode* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %181 = call i32 @ext3_journal_dirty_data(i32* %179, %struct.buffer_head* %180)
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %178, %174
  %183 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %184 = call i32 @mark_buffer_dirty(%struct.buffer_head* %183)
  br label %185

185:                                              ; preds = %182, %170
  br label %186

186:                                              ; preds = %185, %158, %144, %119, %102, %66
  %187 = load %struct.page*, %struct.page** %6, align 8
  %188 = call i32 @unlock_page(%struct.page* %187)
  %189 = load %struct.page*, %struct.page** %6, align 8
  %190 = call i32 @page_cache_release(%struct.page* %189)
  %191 = load i32, i32* %17, align 4
  ret i32 %191
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @test_opt(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @ext3_should_writeback_data(%struct.inode*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext3_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @ext3_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i64 @ext3_should_order_data(%struct.inode*) #1

declare dso_local i32 @ext3_journal_dirty_data(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
