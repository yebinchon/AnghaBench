; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_add_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_dir.c_exofs_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.exofs_sb_info* }
%struct.exofs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.exofs_dir_entry = type { i64, i32, i64, i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ERROR: exofs_add_link: zero-length directory entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"exofs_add_link: BAD dentry=%p or inode=%p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exofs_add_link(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.exofs_sb_info*, align 8
  %15 = alloca %struct.exofs_dir_entry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.exofs_dir_entry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call i32 @exofs_chunk_size(%struct.inode* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @EXOFS_DIR_REC_LEN(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %10, align 4
  store %struct.page* null, %struct.page** %13, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %44, align 8
  store %struct.exofs_sb_info* %45, %struct.exofs_sb_info** %14, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = call i64 @dir_pages(%struct.inode* %46)
  store i64 %47, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %48

48:                                               ; preds = %162, %2
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %165

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call %struct.page* @exofs_get_page(%struct.inode* %53, i64 %54)
  store %struct.page* %55, %struct.page** %13, align 8
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = call i32 @PTR_ERR(%struct.page* %56)
  store i32 %57, i32* %20, align 4
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i64 @IS_ERR(%struct.page* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %259

62:                                               ; preds = %52
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = call i32 @lock_page(%struct.page* %63)
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = call i8* @page_address(%struct.page* %65)
  store i8* %66, i8** %18, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @exofs_last_byte(%struct.inode* %68, i64 %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %21, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = bitcast i8* %73 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %74, %struct.exofs_dir_entry** %15, align 8
  %75 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %75, %76
  %78 = load i8*, i8** %18, align 8
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %18, align 8
  br label %81

81:                                               ; preds = %149, %62
  %82 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %83 = bitcast %struct.exofs_dir_entry* %82 to i8*
  %84 = load i8*, i8** %18, align 8
  %85 = icmp ule i8* %83, %84
  br i1 %85, label %86, label %157

86:                                               ; preds = %81
  %87 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %88 = bitcast %struct.exofs_dir_entry* %87 to i8*
  %89 = load i8*, i8** %21, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  store i16 0, i16* %12, align 2
  %92 = load i32, i32* %9, align 4
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %11, align 2
  %94 = load i32, i32* %9, align 4
  %95 = trunc i32 %94 to i16
  %96 = call i8* @cpu_to_le16(i16 zeroext %95)
  %97 = ptrtoint i8* %96 to i64
  %98 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %99 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %101 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %171

102:                                              ; preds = %86
  %103 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %104 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %20, align 4
  br label %261

111:                                              ; preds = %102
  %112 = load i32, i32* @EEXIST, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %117 = call i64 @exofs_match(i32 %114, i8* %115, %struct.exofs_dir_entry* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %261

120:                                              ; preds = %111
  %121 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %122 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @EXOFS_DIR_REC_LEN(i32 %123)
  %125 = ptrtoint i8* %124 to i16
  store i16 %125, i16* %12, align 2
  %126 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %127 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call zeroext i16 @le16_to_cpu(i64 %128)
  store i16 %129, i16* %11, align 2
  %130 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %131 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %120
  %135 = load i16, i16* %11, align 2
  %136 = zext i16 %135 to i32
  %137 = load i32, i32* %10, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %171

140:                                              ; preds = %134, %120
  %141 = load i16, i16* %11, align 2
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* %12, align 2
  %144 = zext i16 %143 to i32
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %144, %145
  %147 = icmp uge i32 %142, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %171

149:                                              ; preds = %140
  %150 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %151 = bitcast %struct.exofs_dir_entry* %150 to i8*
  %152 = load i16, i16* %11, align 2
  %153 = zext i16 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = bitcast i8* %155 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %156, %struct.exofs_dir_entry** %15, align 8
  br label %81

157:                                              ; preds = %81
  %158 = load %struct.page*, %struct.page** %13, align 8
  %159 = call i32 @unlock_page(%struct.page* %158)
  %160 = load %struct.page*, %struct.page** %13, align 8
  %161 = call i32 @exofs_put_page(%struct.page* %160)
  br label %162

162:                                              ; preds = %157
  %163 = load i64, i64* %17, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %17, align 8
  br label %48

165:                                              ; preds = %48
  %166 = load %struct.dentry*, %struct.dentry** %4, align 8
  %167 = load %struct.inode*, %struct.inode** %5, align 8
  %168 = call i32 (i8*, ...) @EXOFS_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %166, %struct.inode* %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %264

171:                                              ; preds = %148, %139, %91
  %172 = load %struct.page*, %struct.page** %13, align 8
  %173 = call i32 @page_offset(%struct.page* %172)
  %174 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %175 = bitcast %struct.exofs_dir_entry* %174 to i8*
  %176 = sext i32 %173 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  %178 = load %struct.page*, %struct.page** %13, align 8
  %179 = call i8* @page_address(%struct.page* %178)
  %180 = ptrtoint i8* %177 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %19, align 4
  %184 = load %struct.page*, %struct.page** %13, align 8
  %185 = getelementptr inbounds %struct.page, %struct.page* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i16, i16* %11, align 2
  %189 = call i32 @exofs_write_begin(i32* null, i32 %186, i32 %187, i16 zeroext %188, i32 0, %struct.page** %13, i32* null)
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %171
  br label %261

193:                                              ; preds = %171
  %194 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %195 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %193
  %199 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %200 = bitcast %struct.exofs_dir_entry* %199 to i8*
  %201 = load i16, i16* %12, align 2
  %202 = zext i16 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = bitcast i8* %204 to %struct.exofs_dir_entry*
  store %struct.exofs_dir_entry* %205, %struct.exofs_dir_entry** %22, align 8
  %206 = load i16, i16* %11, align 2
  %207 = zext i16 %206 to i32
  %208 = load i16, i16* %12, align 2
  %209 = zext i16 %208 to i32
  %210 = sub nsw i32 %207, %209
  %211 = trunc i32 %210 to i16
  %212 = call i8* @cpu_to_le16(i16 zeroext %211)
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %22, align 8
  %215 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = load i16, i16* %12, align 2
  %217 = call i8* @cpu_to_le16(i16 zeroext %216)
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %220 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  %221 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %22, align 8
  store %struct.exofs_dir_entry* %221, %struct.exofs_dir_entry** %15, align 8
  br label %222

222:                                              ; preds = %198, %193
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %225 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %227 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @memcpy(i32 %228, i8* %229, i32 %230)
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i64 @cpu_to_le64(i32 %234)
  %236 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %237 = getelementptr inbounds %struct.exofs_dir_entry, %struct.exofs_dir_entry* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  %238 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %15, align 8
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = call i32 @exofs_set_de_type(%struct.exofs_dir_entry* %238, %struct.inode* %239)
  %241 = load %struct.page*, %struct.page** %13, align 8
  %242 = load i32, i32* %19, align 4
  %243 = load i16, i16* %11, align 2
  %244 = call i32 @exofs_commit_chunk(%struct.page* %241, i32 %242, i16 zeroext %243)
  store i32 %244, i32* %20, align 4
  %245 = load i32, i32* @CURRENT_TIME, align 4
  %246 = load %struct.inode*, %struct.inode** %6, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load %struct.inode*, %struct.inode** %6, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 1
  store i32 %245, i32* %249, align 4
  %250 = load %struct.inode*, %struct.inode** %6, align 8
  %251 = call i32 @mark_inode_dirty(%struct.inode* %250)
  %252 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %14, align 8
  %253 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %261, %222
  %257 = load %struct.page*, %struct.page** %13, align 8
  %258 = call i32 @exofs_put_page(%struct.page* %257)
  br label %259

259:                                              ; preds = %256, %61
  %260 = load i32, i32* %20, align 4
  store i32 %260, i32* %3, align 4
  br label %264

261:                                              ; preds = %192, %119, %107
  %262 = load %struct.page*, %struct.page** %13, align 8
  %263 = call i32 @unlock_page(%struct.page* %262)
  br label %256

264:                                              ; preds = %259, %165
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @exofs_chunk_size(%struct.inode*) #1

declare dso_local i8* @EXOFS_DIR_REC_LEN(i32) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local %struct.page* @exofs_get_page(%struct.inode*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @exofs_last_byte(%struct.inode*, i64) #1

declare dso_local i8* @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @EXOFS_ERR(i8*, ...) #1

declare dso_local i64 @exofs_match(i32, i8*, %struct.exofs_dir_entry*) #1

declare dso_local zeroext i16 @le16_to_cpu(i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @exofs_put_page(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @exofs_write_begin(i32*, i32, i32, i16 zeroext, i32, %struct.page**, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @exofs_set_de_type(%struct.exofs_dir_entry*, %struct.inode*) #1

declare dso_local i32 @exofs_commit_chunk(%struct.page*, i32, i16 zeroext) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
