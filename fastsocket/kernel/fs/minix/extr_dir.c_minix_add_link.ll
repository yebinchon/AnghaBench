; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_add_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i8*, i64, i32 }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i8*, i64 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AOP_FLAG_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.minix_sb_info*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  store %struct.super_block* %39, %struct.super_block** %9, align 8
  %40 = load %struct.super_block*, %struct.super_block** %9, align 8
  %41 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %40)
  store %struct.minix_sb_info* %41, %struct.minix_sb_info** %10, align 8
  store %struct.page* null, %struct.page** %11, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i64 @dir_pages(%struct.inode* %42)
  store i64 %43, i64* %12, align 8
  store i8* null, i8** %20, align 8
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %153, %2
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %156

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call %struct.page* @dir_get_page(%struct.inode* %49, i64 %50)
  store %struct.page* %51, %struct.page** %11, align 8
  %52 = load %struct.page*, %struct.page** %11, align 8
  %53 = call i32 @PTR_ERR(%struct.page* %52)
  store i32 %53, i32* %19, align 4
  %54 = load %struct.page*, %struct.page** %11, align 8
  %55 = call i64 @IS_ERR(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %250

58:                                               ; preds = %48
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = call i32 @lock_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = call i64 @page_address(%struct.page* %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @minix_last_byte(%struct.inode* %65, i64 %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8* %69, i8** %23, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %75 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %73 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %22, align 8
  %81 = load i8*, i8** %14, align 8
  store i8* %81, i8** %15, align 8
  br label %82

82:                                               ; preds = %144, %58
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %22, align 8
  %85 = icmp ule i8* %83, %84
  br i1 %85, label %86, label %148

86:                                               ; preds = %82
  %87 = load i8*, i8** %15, align 8
  %88 = bitcast i8* %87 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %16, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = bitcast i8* %89 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %17, align 8
  %91 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %92 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MINIX_V3, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %20, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %21, align 8
  br label %110

103:                                              ; preds = %86
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %20, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %21, align 8
  br label %110

110:                                              ; preds = %103, %96
  %111 = load i8*, i8** %15, align 8
  %112 = load i8*, i8** %23, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %116 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MINIX_V3, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  br label %126

123:                                              ; preds = %114
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %160

127:                                              ; preds = %110
  %128 = load i64, i64* %21, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %160

131:                                              ; preds = %127
  %132 = load i32, i32* @EEXIST, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %136 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = call i64 @namecompare(i32 %134, i32 %137, i8* %138, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %252

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143
  %145 = load i8*, i8** %15, align 8
  %146 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %147 = call i8* @minix_next_entry(i8* %145, %struct.minix_sb_info* %146)
  store i8* %147, i8** %15, align 8
  br label %82

148:                                              ; preds = %82
  %149 = load %struct.page*, %struct.page** %11, align 8
  %150 = call i32 @unlock_page(%struct.page* %149)
  %151 = load %struct.page*, %struct.page** %11, align 8
  %152 = call i32 @dir_put_page(%struct.page* %151)
  br label %153

153:                                              ; preds = %148
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %13, align 8
  br label %44

156:                                              ; preds = %44
  %157 = call i32 (...) @BUG()
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %255

160:                                              ; preds = %130, %126
  %161 = load %struct.page*, %struct.page** %11, align 8
  %162 = call i32 @page_offset(%struct.page* %161)
  %163 = load i8*, i8** %15, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load %struct.page*, %struct.page** %11, align 8
  %167 = call i64 @page_address(%struct.page* %166)
  %168 = inttoptr i64 %167 to i8*
  %169 = ptrtoint i8* %165 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %18, align 4
  %173 = load %struct.page*, %struct.page** %11, align 8
  %174 = getelementptr inbounds %struct.page, %struct.page* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %178 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* @AOP_FLAG_UNINTERRUPTIBLE, align 4
  %181 = call i32 @__minix_write_begin(i32* null, i32 %175, i32 %176, i8* %179, i32 %180, %struct.page** %11, i32* null)
  store i32 %181, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %160
  br label %252

185:                                              ; preds = %160
  %186 = load i8*, i8** %20, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @memcpy(i8* %186, i8* %187, i32 %188)
  %190 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %191 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MINIX_V3, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %185
  %196 = load i8*, i8** %20, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %201 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = getelementptr inbounds i8, i8* %206, i64 -4
  %208 = call i32 @memset(i8* %199, i32 0, i8* %207)
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  br label %233

214:                                              ; preds = %185
  %215 = load i8*, i8** %20, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %220 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  %226 = getelementptr inbounds i8, i8* %225, i64 -2
  %227 = call i32 @memset(i8* %218, i32 0, i8* %226)
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %214, %195
  %234 = load %struct.page*, %struct.page** %11, align 8
  %235 = load i32, i32* %18, align 4
  %236 = load %struct.minix_sb_info*, %struct.minix_sb_info** %10, align 8
  %237 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @dir_commit_chunk(%struct.page* %234, i32 %235, i8* %238)
  store i32 %239, i32* %19, align 4
  %240 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %241 = load %struct.inode*, %struct.inode** %6, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.inode*, %struct.inode** %6, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 1
  store i32 %240, i32* %244, align 4
  %245 = load %struct.inode*, %struct.inode** %6, align 8
  %246 = call i32 @mark_inode_dirty(%struct.inode* %245)
  br label %247

247:                                              ; preds = %252, %233
  %248 = load %struct.page*, %struct.page** %11, align 8
  %249 = call i32 @dir_put_page(%struct.page* %248)
  br label %250

250:                                              ; preds = %247, %57
  %251 = load i32, i32* %19, align 4
  store i32 %251, i32* %3, align 4
  br label %255

252:                                              ; preds = %184, %142
  %253 = load %struct.page*, %struct.page** %11, align 8
  %254 = call i32 @unlock_page(%struct.page* %253)
  br label %247

255:                                              ; preds = %250, %156
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @dir_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @minix_last_byte(%struct.inode*, i64) #1

declare dso_local i64 @namecompare(i32, i32, i8*, i8*) #1

declare dso_local i8* @minix_next_entry(i8*, %struct.minix_sb_info*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @__minix_write_begin(i32*, i32, i32, i8*, i32, %struct.page**, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i8*) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i8*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
