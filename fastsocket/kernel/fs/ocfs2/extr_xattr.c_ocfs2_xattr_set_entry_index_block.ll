; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_index_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_entry_index_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_info = type { i64, i32, i32, i64 }
%struct.ocfs2_xattr_search = type { i32, i32, i32, %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_header* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_header = type { i32, i32, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Set xattr %s in xattr index block\0A\00", align 1
@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i32 0, align 4
@OCFS2_XATTR_HEADER_GAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"bucket %llu has header size of %u which exceed block size\0A\00", align 1
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [123 x i8] c"xs->not_found = %d, in xattr bucket %llu: free = %d, need = %d, max_free = %d, xh_free_start = %u, xh_name_value_len = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [118 x i8] c"Can't get enough space for xattr insert by defragment. Need %u bytes, but we have %d, so allocate new bucket for it.\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xattr_set_entry_index_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_set_entry_index_block(%struct.inode* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_set_ctxt* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_info*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %9 = alloca %struct.ocfs2_xattr_header*, align 8
  %10 = alloca %struct.ocfs2_xattr_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store %struct.ocfs2_xattr_set_ctxt* %3, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  store i64 0, i64* %18, align 8
  %23 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strlen(i32 %25)
  store i64 %26, i64* %19, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %32 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %33 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mlog_entry(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %313, %4
  %37 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %37, i32 0, i32 4
  %39 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %38, align 8
  store %struct.ocfs2_xattr_header* %39, %struct.ocfs2_xattr_header** %9, align 8
  %40 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 12, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @OCFS2_XATTR_BUCKET_SIZE, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %57 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = sub nsw i32 %55, %59
  %61 = load i32, i32* @OCFS2_XATTR_HEADER_GAP, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %20, align 8
  %66 = icmp ugt i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @bucket_blkno(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @mlog_bug_on_msg(i32 %67, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %71, i32 %72)
  %74 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %75 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %36
  %79 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %80 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  store i64 %85, i64* %18, align 8
  br label %97

86:                                               ; preds = %78, %36
  %87 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %88 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @OCFS2_XATTR_SIZE(i64 %94)
  store i64 %95, i64* %18, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %99 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i64, i64* %19, align 8
  %104 = call i64 @OCFS2_XATTR_SIZE(i64 %103)
  %105 = add i64 4, %104
  %106 = load i64, i64* %18, align 8
  %107 = add i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %16, align 4
  br label %139

109:                                              ; preds = %97
  %110 = load i64, i64* %18, align 8
  %111 = load i64, i64* %19, align 8
  %112 = call i64 @OCFS2_XATTR_SIZE(i64 %111)
  %113 = add i64 %110, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %116 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %115, i32 0, i32 3
  %117 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %116, align 8
  store %struct.ocfs2_xattr_entry* %117, %struct.ocfs2_xattr_entry** %10, align 8
  %118 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %10, align 8
  %119 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %109
  %122 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %10, align 8
  %123 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @le64_to_cpu(i32 %124)
  %126 = call i64 @OCFS2_XATTR_SIZE(i64 %125)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %17, align 4
  br label %132

128:                                              ; preds = %109
  %129 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  %130 = call i64 @OCFS2_XATTR_SIZE(i64 %129)
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %128, %121
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %18, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %132
  br label %139

139:                                              ; preds = %138, %102
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %12, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* @OCFS2_XATTR_HEADER_GAP, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %20, align 8
  %148 = urem i64 %146, %147
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %139
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %20, align 8
  %156 = urem i64 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %152, %139
  %162 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %163 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %166 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @bucket_blkno(i32 %167)
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %174 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @le16_to_cpu(i32 %175)
  %177 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %178 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le16_to_cpu(i32 %179)
  %181 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %169, i32 %170, i32 %171, i32 %172, i32 %176, i32 %180)
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %197, label %185

185:                                              ; preds = %161
  %186 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %187 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %317

190:                                              ; preds = %185
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 0
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = call i32 @ocfs2_xattr_max_xe_in_bucket(%struct.TYPE_2__* %194)
  %196 = icmp eq i32 %191, %195
  br i1 %196, label %197, label %317

197:                                              ; preds = %190, %161
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %15, align 4
  %200 = icmp sle i32 %198, %199
  br i1 %200, label %201, label %257

201:                                              ; preds = %197
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.inode*, %struct.inode** %5, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = call i32 @ocfs2_xattr_max_xe_in_bucket(%struct.TYPE_2__* %205)
  %207 = icmp slt i32 %202, %206
  br i1 %207, label %208, label %257

208:                                              ; preds = %201
  %209 = load %struct.inode*, %struct.inode** %5, align 8
  %210 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %211 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %214 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @ocfs2_defrag_xattr_bucket(%struct.inode* %209, i32 %212, i32 %215)
  store i32 %216, i32* %21, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @mlog_errno(i32 %220)
  br label %324

222:                                              ; preds = %208
  %223 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %224 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @le16_to_cpu(i32 %225)
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %12, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* @OCFS2_XATTR_HEADER_GAP, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %14, align 4
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %20, align 8
  %235 = urem i64 %233, %234
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp ult i64 %235, %237
  br i1 %238, label %239, label %248

239:                                              ; preds = %222
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %20, align 8
  %243 = urem i64 %241, %242
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %239, %222
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %16, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %318

253:                                              ; preds = %248
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %14, align 4
  %256 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %201, %197
  %258 = load i32, i32* %22, align 4
  %259 = call i32 @BUG_ON(i32 %258)
  %260 = load %struct.inode*, %struct.inode** %5, align 8
  %261 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %262 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %265 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @ocfs2_check_xattr_bucket_collision(%struct.inode* %260, i32 %263, i32 %266)
  store i32 %267, i32* %21, align 4
  %268 = load i32, i32* %21, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %257
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @mlog_errno(i32 %271)
  br label %324

273:                                              ; preds = %257
  %274 = load %struct.inode*, %struct.inode** %5, align 8
  %275 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %276 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %279 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %282 = call i32 @ocfs2_add_new_xattr_bucket(%struct.inode* %274, i32 %277, i32 %280, %struct.ocfs2_xattr_set_ctxt* %281)
  store i32 %282, i32* %21, align 4
  %283 = load i32, i32* %21, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %273
  %286 = load i32, i32* %21, align 4
  %287 = call i32 @mlog_errno(i32 %286)
  br label %324

288:                                              ; preds = %273
  %289 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %290 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @ocfs2_xattr_bucket_relse(i32 %291)
  %293 = load %struct.inode*, %struct.inode** %5, align 8
  %294 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %295 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %298 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %301 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %304 = call i32 @ocfs2_xattr_index_block_find(%struct.inode* %293, i32 %296, i32 %299, i32 %302, %struct.ocfs2_xattr_search* %303)
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %21, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %288
  %308 = load i32, i32* %21, align 4
  %309 = load i32, i32* @ENODATA, align 4
  %310 = sub nsw i32 0, %309
  %311 = icmp ne i32 %308, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %307
  br label %324

313:                                              ; preds = %307, %288
  %314 = load i32, i32* %21, align 4
  %315 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %316 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  store i32 1, i32* %22, align 4
  br label %36

317:                                              ; preds = %190, %185
  br label %318

318:                                              ; preds = %317, %252
  %319 = load %struct.inode*, %struct.inode** %5, align 8
  %320 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %6, align 8
  %321 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %322 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %8, align 8
  %323 = call i32 @ocfs2_xattr_set_in_bucket(%struct.inode* %319, %struct.ocfs2_xattr_info* %320, %struct.ocfs2_xattr_search* %321, %struct.ocfs2_xattr_set_ctxt* %322)
  store i32 %323, i32* %21, align 4
  br label %324

324:                                              ; preds = %318, %312, %285, %270, %219
  %325 = load i32, i32* %21, align 4
  %326 = call i32 @mlog_exit(i32 %325)
  %327 = load i32, i32* %21, align 4
  ret i32 %327
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @mlog_entry(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i32) #1

declare dso_local i64 @bucket_blkno(i32) #1

declare dso_local i64 @OCFS2_XATTR_SIZE(i64) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ocfs2_xattr_max_xe_in_bucket(%struct.TYPE_2__*) #1

declare dso_local i32 @ocfs2_defrag_xattr_bucket(%struct.inode*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_check_xattr_bucket_collision(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_add_new_xattr_bucket(%struct.inode*, i32, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(i32) #1

declare dso_local i32 @ocfs2_xattr_index_block_find(%struct.inode*, i32, i32, i32, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_set_in_bucket(%struct.inode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
