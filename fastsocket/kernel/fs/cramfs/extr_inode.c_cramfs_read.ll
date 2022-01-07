; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cramfs/extr_inode.c_cramfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i32 }

@BLKS_PER_BUF = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@READ_BUFFERS = common dso_local global i32 0, align 4
@buffer_dev = common dso_local global %struct.super_block** null, align 8
@buffer_blocknr = common dso_local global i32* null, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@read_buffers = common dso_local global i8** null, align 8
@next_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i32, i32)* @cramfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cramfs_read(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.address_space*, %struct.address_space** %26, align 8
  store %struct.address_space* %27, %struct.address_space** %8, align 8
  %28 = load i32, i32* @BLKS_PER_BUF, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca %struct.page*, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %225

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %93, %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @READ_BUFFERS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load %struct.super_block**, %struct.super_block*** @buffer_dev, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.super_block*, %struct.super_block** %48, i64 %50
  %52 = load %struct.super_block*, %struct.super_block** %51, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = icmp ne %struct.super_block* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %93

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** @buffer_blocknr, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %93

65:                                               ; preds = %56
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** @buffer_blocknr, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %66, %71
  %73 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %78, %79
  %81 = load i32, i32* @BUFFER_SIZE, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %93

84:                                               ; preds = %65
  %85 = load i8**, i8*** @read_buffers, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr i8, i8* %89, i64 %91
  store i8* %92, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %225

93:                                               ; preds = %83, %64, %55
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %43

96:                                               ; preds = %43
  %97 = load %struct.address_space*, %struct.address_space** %8, align 8
  %98 = getelementptr inbounds %struct.address_space, %struct.address_space* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %103 = lshr i32 %101, %102
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %132, %96
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @BLKS_PER_BUF, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  store %struct.page* null, %struct.page** %18, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %14, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.address_space*, %struct.address_space** %8, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %118, %119
  %121 = call %struct.page* @read_mapping_page_async(%struct.address_space* %117, i32 %120, i32* null)
  store %struct.page* %121, %struct.page** %18, align 8
  %122 = load %struct.page*, %struct.page** %18, align 8
  %123 = call i64 @IS_ERR(%struct.page* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  store %struct.page* null, %struct.page** %18, align 8
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126, %109
  %128 = load %struct.page*, %struct.page** %18, align 8
  %129 = load i32, i32* %11, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %130
  store %struct.page* %128, %struct.page** %131, align 8
  br label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %105

135:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %161, %135
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @BLKS_PER_BUF, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %142
  %144 = load %struct.page*, %struct.page** %143, align 8
  store %struct.page* %144, %struct.page** %19, align 8
  %145 = load %struct.page*, %struct.page** %19, align 8
  %146 = icmp ne %struct.page* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %140
  %148 = load %struct.page*, %struct.page** %19, align 8
  %149 = call i32 @wait_on_page_locked(%struct.page* %148)
  %150 = load %struct.page*, %struct.page** %19, align 8
  %151 = call i32 @PageUptodate(%struct.page* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load %struct.page*, %struct.page** %19, align 8
  %155 = call i32 @page_cache_release(%struct.page* %154)
  %156 = load i32, i32* %11, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %157
  store %struct.page* null, %struct.page** %158, align 8
  br label %159

159:                                              ; preds = %153, %147
  br label %160

160:                                              ; preds = %159, %140
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %136

164:                                              ; preds = %136
  %165 = load i32, i32* @next_buffer, align 4
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @NEXT_BUFFER(i32 %166)
  store i32 %167, i32* @next_buffer, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32*, i32** @buffer_blocknr, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  %173 = load %struct.super_block*, %struct.super_block** %5, align 8
  %174 = load %struct.super_block**, %struct.super_block*** @buffer_dev, align 8
  %175 = load i32, i32* %13, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.super_block*, %struct.super_block** %174, i64 %176
  store %struct.super_block* %173, %struct.super_block** %177, align 8
  %178 = load i8**, i8*** @read_buffers, align 8
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %15, align 8
  store i32 0, i32* %11, align 4
  br label %183

183:                                              ; preds = %213, %164
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @BLKS_PER_BUF, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %216

187:                                              ; preds = %183
  %188 = load i32, i32* %11, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %189
  %191 = load %struct.page*, %struct.page** %190, align 8
  store %struct.page* %191, %struct.page** %20, align 8
  %192 = load %struct.page*, %struct.page** %20, align 8
  %193 = icmp ne %struct.page* %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load i8*, i8** %15, align 8
  %196 = load %struct.page*, %struct.page** %20, align 8
  %197 = call i32 @kmap(%struct.page* %196)
  %198 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %199 = call i32 @memcpy(i8* %195, i32 %197, i32 %198)
  %200 = load %struct.page*, %struct.page** %20, align 8
  %201 = call i32 @kunmap(%struct.page* %200)
  %202 = load %struct.page*, %struct.page** %20, align 8
  %203 = call i32 @page_cache_release(%struct.page* %202)
  br label %208

204:                                              ; preds = %187
  %205 = load i8*, i8** %15, align 8
  %206 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %207 = call i32 @memset(i8* %205, i32 0, i32 %206)
  br label %208

208:                                              ; preds = %204, %194
  %209 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %210 = load i8*, i8** %15, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %15, align 8
  br label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %11, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %183

216:                                              ; preds = %183
  %217 = load i8**, i8*** @read_buffers, align 8
  %218 = load i32, i32* %13, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr i8, i8* %221, i64 %223
  store i8* %224, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %225

225:                                              ; preds = %216, %84, %34
  %226 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i8*, i8** %4, align 8
  ret i8* %227
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.page* @read_mapping_page_async(%struct.address_space*, i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.page*) #2

declare dso_local i32 @wait_on_page_locked(%struct.page*) #2

declare dso_local i32 @PageUptodate(%struct.page*) #2

declare dso_local i32 @page_cache_release(%struct.page*) #2

declare dso_local i32 @NEXT_BUFFER(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @kmap(%struct.page*) #2

declare dso_local i32 @kunmap(%struct.page*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
