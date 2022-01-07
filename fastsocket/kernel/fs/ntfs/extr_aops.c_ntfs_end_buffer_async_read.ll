; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_aops.c_ntfs_end_buffer_async_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_aops.c_ntfs_end_buffer_async_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i32, %struct.buffer_head*, i64, %struct.page* }
%struct.page = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_9__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Buffer I/O error, logical block 0x%llx.\00", align 1
@BH_Uptodate_Lock = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @ntfs_end_buffer_async_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntfs_end_buffer_async_read(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 4
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %8, align 8
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call %struct.TYPE_12__* @NTFS_I(%struct.inode* %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %10, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %116

34:                                               ; preds = %2
  %35 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %36 = call i32 @set_buffer_uptodate(%struct.buffer_head* %35)
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %41 = shl i64 %39, %40
  %42 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %43 = call i32 @bh_offset(%struct.buffer_head* %42)
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %13, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @read_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i64 @i_size_read(%struct.inode* %53)
  store i64 %54, i64* %12, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @read_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp sgt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %34
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %65, %34
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %14, align 8
  %74 = icmp sgt i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %13, align 8
  %85 = sub nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @local_irq_save(i64 %88)
  %90 = load %struct.page*, %struct.page** %8, align 8
  %91 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %92 = call i8* @kmap_atomic(%struct.page* %90, i32 %91)
  store i8* %92, i8** %16, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %95 = call i32 @bh_offset(%struct.buffer_head* %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %93, i64 %96
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %97, i64 %99
  %101 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %103, %105
  %107 = call i32 @memset(i8* %100, i32 0, i64 %106)
  %108 = load %struct.page*, %struct.page** %8, align 8
  %109 = call i32 @flush_dcache_page(%struct.page* %108)
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %112 = call i32 @kunmap_atomic(i8* %110, i32 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @local_irq_restore(i64 %113)
  br label %115

115:                                              ; preds = %87, %67
  br label %130

116:                                              ; preds = %2
  %117 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %118 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %117)
  %119 = load %struct.page*, %struct.page** %8, align 8
  %120 = call i32 @SetPageError(%struct.page* %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ntfs_error(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %116, %115
  %131 = load %struct.page*, %struct.page** %8, align 8
  %132 = call %struct.buffer_head* @page_buffers(%struct.page* %131)
  store %struct.buffer_head* %132, %struct.buffer_head** %6, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @local_irq_save(i64 %133)
  %135 = load i32, i32* @BH_Uptodate_Lock, align 4
  %136 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 1
  %138 = call i32 @bit_spin_lock(i32 %135, i32* %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %140 = call i32 @clear_buffer_async_read(%struct.buffer_head* %139)
  %141 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %142 = call i32 @unlock_buffer(%struct.buffer_head* %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  store %struct.buffer_head* %143, %struct.buffer_head** %7, align 8
  br label %144

144:                                              ; preds = %165, %130
  %145 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %146 = call i32 @buffer_uptodate(%struct.buffer_head* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %148, %144
  %150 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %151 = call i64 @buffer_async_read(%struct.buffer_head* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %155 = call i32 @buffer_locked(%struct.buffer_head* %154)
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %259

159:                                              ; preds = %153
  %160 = call i32 (...) @BUG()
  br label %161

161:                                              ; preds = %159, %149
  %162 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 2
  %164 = load %struct.buffer_head*, %struct.buffer_head** %163, align 8
  store %struct.buffer_head* %164, %struct.buffer_head** %7, align 8
  br label %165

165:                                              ; preds = %161
  %166 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %168 = icmp ne %struct.buffer_head* %166, %167
  br i1 %168, label %144, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @BH_Uptodate_Lock, align 4
  %171 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 1
  %173 = call i32 @bit_spin_unlock(i32 %170, i32* %172)
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @local_irq_restore(i64 %174)
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %177 = call i32 @NInoMstProtected(%struct.TYPE_12__* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %196, label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.page*, %struct.page** %8, align 8
  %184 = call i32 @PageError(%struct.page* %183)
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br label %187

187:                                              ; preds = %182, %179
  %188 = phi i1 [ false, %179 ], [ %186, %182 ]
  %189 = zext i1 %188 to i32
  %190 = call i64 @likely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.page*, %struct.page** %8, align 8
  %194 = call i32 @SetPageUptodate(%struct.page* %193)
  br label %195

195:                                              ; preds = %192, %187
  br label %256

196:                                              ; preds = %169
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %203 = load i32, i32* %20, align 4
  %204 = udiv i32 %202, %203
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %19, align 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = call i32 @BUG_ON(i32 %208)
  %210 = load i64, i64* %5, align 8
  %211 = call i32 @local_irq_save(i64 %210)
  %212 = load %struct.page*, %struct.page** %8, align 8
  %213 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %214 = call i8* @kmap_atomic(%struct.page* %212, i32 %213)
  store i8* %214, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %229, %196
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %19, align 4
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = load i8*, i8** %17, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %20, align 4
  %223 = mul i32 %221, %222
  %224 = zext i32 %223 to i64
  %225 = getelementptr i8, i8* %220, i64 %224
  %226 = bitcast i8* %225 to i32*
  %227 = load i32, i32* %20, align 4
  %228 = call i32 @post_read_mst_fixup(i32* %226, i32 %227)
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %18, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %18, align 4
  br label %215

232:                                              ; preds = %215
  %233 = load i8*, i8** %17, align 8
  %234 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %235 = call i32 @kunmap_atomic(i8* %233, i32 %234)
  %236 = load i64, i64* %5, align 8
  %237 = call i32 @local_irq_restore(i64 %236)
  %238 = load %struct.page*, %struct.page** %8, align 8
  %239 = call i32 @flush_dcache_page(%struct.page* %238)
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %232
  %243 = load %struct.page*, %struct.page** %8, align 8
  %244 = call i32 @PageError(%struct.page* %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  br label %247

247:                                              ; preds = %242, %232
  %248 = phi i1 [ false, %232 ], [ %246, %242 ]
  %249 = zext i1 %248 to i32
  %250 = call i64 @likely(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.page*, %struct.page** %8, align 8
  %254 = call i32 @SetPageUptodate(%struct.page* %253)
  br label %255

255:                                              ; preds = %252, %247
  br label %256

256:                                              ; preds = %255, %195
  %257 = load %struct.page*, %struct.page** %8, align 8
  %258 = call i32 @unlock_page(%struct.page* %257)
  br label %266

259:                                              ; preds = %158
  %260 = load i32, i32* @BH_Uptodate_Lock, align 4
  %261 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %262 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %261, i32 0, i32 1
  %263 = call i32 @bit_spin_unlock(i32 %260, i32* %262)
  %264 = load i64, i64* %5, align 8
  %265 = call i32 @local_irq_restore(i64 %264)
  br label %266

266:                                              ; preds = %259, %256
  ret void
}

declare dso_local %struct.TYPE_12__* @NTFS_I(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ntfs_error(i32, i8*, i64) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @bit_spin_lock(i32, i32*) #1

declare dso_local i32 @clear_buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_async_read(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bit_spin_unlock(i32, i32*) #1

declare dso_local i32 @NInoMstProtected(%struct.TYPE_12__*) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @post_read_mst_fixup(i32*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
