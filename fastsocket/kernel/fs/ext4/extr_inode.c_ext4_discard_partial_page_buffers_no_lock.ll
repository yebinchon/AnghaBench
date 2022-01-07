; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_discard_partial_page_buffers_no_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_discard_partial_page_buffers_no_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i32* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT4_DISCARD_PARTIAL_PG_ZERO_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Buffer discarded\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"still unmapped\00", align 1
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Partial buffer zeroed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_discard_partial_page_buffers_no_lock(i32* %0, %struct.inode* %1, %struct.page* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %21, align 4
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %237

47:                                               ; preds = %6
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  %65 = shl i32 %57, %64
  store i32 %65, i32* %19, align 4
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @page_has_buffers(%struct.page* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %56
  %70 = load %struct.page*, %struct.page** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @create_empty_buffers(%struct.page* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69, %56
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = call %struct.buffer_head* @page_buffers(%struct.page* %74)
  store %struct.buffer_head* %75, %struct.buffer_head** %20, align 8
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %81, %73
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  store %struct.buffer_head* %84, %struct.buffer_head** %20, align 8
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %18, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %18, align 4
  br label %77

90:                                               ; preds = %77
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %226, %90
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %94, %95
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %235

98:                                               ; preds = %92
  store i32 0, i32* %21, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %99, %100
  %102 = load i32, i32* %18, align 4
  %103 = sub i32 %101, %102
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub i32 %106, 1
  %108 = and i32 %105, %107
  %109 = sub i32 %104, %108
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* %22, align 4
  store i32 %114, i32* %23, align 4
  br label %115

115:                                              ; preds = %113, %98
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @EXT4_DISCARD_PARTIAL_PG_ZERO_UNMAPPED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %122 = call i64 @buffer_mapped(%struct.buffer_head* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %226

125:                                              ; preds = %120, %115
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %125
  %130 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %131 = call i32 @clear_buffer_dirty(%struct.buffer_head* %130)
  %132 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %135 = call i32 @clear_buffer_mapped(%struct.buffer_head* %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %137 = call i32 @clear_buffer_req(%struct.buffer_head* %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %139 = call i32 @clear_buffer_new(%struct.buffer_head* %138)
  %140 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %141 = call i32 @clear_buffer_delay(%struct.buffer_head* %140)
  %142 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %143 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %142)
  %144 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %145 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %144)
  %146 = load %struct.page*, %struct.page** %10, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %23, align 4
  %149 = call i32 @zero_user(%struct.page* %146, i32 %147, i32 %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %151 = call i32 @BUFFER_TRACE(%struct.buffer_head* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %226

152:                                              ; preds = %125
  %153 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %154 = call i64 @buffer_mapped(%struct.buffer_head* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %152
  %157 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %158 = call i32 @BUFFER_TRACE(%struct.buffer_head* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %162 = call i32 @ext4_get_block(%struct.inode* %159, i32 %160, %struct.buffer_head* %161, i32 0)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %164 = call i64 @buffer_mapped(%struct.buffer_head* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %156
  %167 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %168 = call i32 @BUFFER_TRACE(%struct.buffer_head* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %226

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %169, %152
  %171 = load %struct.page*, %struct.page** %10, align 8
  %172 = call i64 @PageUptodate(%struct.page* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %176 = call i32 @set_buffer_uptodate(%struct.buffer_head* %175)
  br label %177

177:                                              ; preds = %174, %170
  %178 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %179 = call i32 @buffer_uptodate(%struct.buffer_head* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* @READ, align 4
  %185 = call i32 @ll_rw_block(i32 %184, i32 1, %struct.buffer_head** %20)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %187 = call i32 @wait_on_buffer(%struct.buffer_head* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %189 = call i32 @buffer_uptodate(%struct.buffer_head* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  br label %226

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192, %177
  %194 = load %struct.inode*, %struct.inode** %9, align 8
  %195 = call i64 @ext4_should_journal_data(%struct.inode* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %199 = call i32 @BUFFER_TRACE(%struct.buffer_head* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %200 = load i32*, i32** %8, align 8
  %201 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %202 = call i32 @ext4_journal_get_write_access(i32* %200, %struct.buffer_head* %201)
  store i32 %202, i32* %21, align 4
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %226

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %193
  %208 = load %struct.page*, %struct.page** %10, align 8
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %23, align 4
  %211 = call i32 @zero_user(%struct.page* %208, i32 %209, i32 %210)
  store i32 0, i32* %21, align 4
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = call i64 @ext4_should_journal_data(%struct.inode* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load i32*, i32** %8, align 8
  %217 = load %struct.inode*, %struct.inode** %9, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %219 = call i32 @ext4_handle_dirty_metadata(i32* %216, %struct.inode* %217, %struct.buffer_head* %218)
  store i32 %219, i32* %21, align 4
  br label %223

220:                                              ; preds = %207
  %221 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %222 = call i32 @mark_buffer_dirty(%struct.buffer_head* %221)
  br label %223

223:                                              ; preds = %220, %215
  %224 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %225 = call i32 @BUFFER_TRACE(%struct.buffer_head* %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %205, %191, %166, %129, %124
  %227 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %228 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %227, i32 0, i32 0
  %229 = load %struct.buffer_head*, %struct.buffer_head** %228, align 8
  store %struct.buffer_head* %229, %struct.buffer_head** %20, align 8
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %19, align 4
  %232 = load i32, i32* %23, align 4
  %233 = load i32, i32* %18, align 4
  %234 = add i32 %233, %232
  store i32 %234, i32* %18, align 4
  br label %92

235:                                              ; preds = %92
  %236 = load i32, i32* %21, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %235, %44
  %238 = load i32, i32* %7, align 4
  ret i32 %238
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
