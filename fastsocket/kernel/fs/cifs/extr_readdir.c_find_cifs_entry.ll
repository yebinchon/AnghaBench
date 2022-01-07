; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_find_cifs_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_find_cifs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.file = type { i64, %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i8*, i8*, i32, i32, i32, i64 }
%struct.smb_hdr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"In fce \00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"search backing up - close and restart search\00", align 1
@cifs_file_list_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"freeing SMB ff cache buf on search rewind\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"error %d reinitiating a search on rewind\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"calling findnext2\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"found entry - pos_in_buf %d\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"reached end of buf searching for pos in buf %d index to find %lld rc %d\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"index not in buffer - could not findnext into it\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"can not return entries pos_in_buf beyond last\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.file*, i8**, i32*)* @find_cifs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cifs_entry(i32 %0, %struct.cifs_tcon* %1, %struct.file* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cifsFileInfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.file*, %struct.file** %9, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load %struct.file*, %struct.file** %9, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %24, align 8
  store %struct.cifsFileInfo* %25, %struct.cifsFileInfo** %16, align 8
  %26 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %27 = icmp eq %struct.cifsFileInfo* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %5
  %29 = load i8**, i8*** %10, align 8
  %30 = icmp eq i8** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28, %5
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %275

37:                                               ; preds = %31
  %38 = load i8**, i8*** %10, align 8
  store i8* null, i8** %38, align 8
  %39 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %40 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %44 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %42, %47
  store i64 %48, i64* %14, align 8
  %49 = load %struct.file*, %struct.file** %9, align 8
  %50 = call i32 @dump_cifs_file_struct(%struct.file* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %53 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.file*, %struct.file** %9, align 8
  %59 = call i64 @is_dir_changed(%struct.file* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %37
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %136

65:                                               ; preds = %61, %57
  %66 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @spin_lock(i32* @cifs_file_list_lock)
  %68 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %69 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %65
  %74 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %75 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %80 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = call i32 @spin_unlock(i32* @cifs_file_list_lock)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %84 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %85 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CIFSFindClose(i32 %82, %struct.cifs_tcon* %83, i32 %86)
  br label %90

88:                                               ; preds = %73, %65
  %89 = call i32 @spin_unlock(i32* @cifs_file_list_lock)
  br label %90

90:                                               ; preds = %88, %78
  %91 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %92 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %119

96:                                               ; preds = %90
  %97 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %99 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %105 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @cifs_small_buf_release(i8* %107)
  br label %115

109:                                              ; preds = %96
  %110 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %111 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @cifs_buf_release(i8* %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %117 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %90
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.file*, %struct.file** %9, align 8
  %122 = call i32 @initiate_cifs_search(i32 %120, %struct.file* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %6, align 4
  br label %275

129:                                              ; preds = %119
  %130 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %131 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %135 = call i32 @cifs_save_resume_key(i32 %133, %struct.cifsFileInfo* %134)
  br label %136

136:                                              ; preds = %129, %61
  br label %137

137:                                              ; preds = %177, %136
  %138 = load i64, i64* %15, align 8
  %139 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %140 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %138, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %137
  %145 = load i32, i32* %12, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %149 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %147, %144, %137
  %155 = phi i1 [ false, %144 ], [ false, %137 ], [ %153, %147 ]
  br i1 %155, label %156, label %178

156:                                              ; preds = %154
  %157 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %160 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %161 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %164 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %163, i32 0, i32 1
  %165 = call i32 @CIFSFindNext(i32 %158, %struct.cifs_tcon* %159, i32 %162, %struct.TYPE_2__* %164)
  store i32 %165, i32* %12, align 4
  %166 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %167 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %171 = call i32 @cifs_save_resume_key(i32 %169, %struct.cifsFileInfo* %170)
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %156
  %175 = load i32, i32* @ENOENT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %6, align 4
  br label %275

177:                                              ; preds = %156
  br label %137

178:                                              ; preds = %154
  %179 = load i64, i64* %15, align 8
  %180 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %181 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %179, %183
  br i1 %184, label %185, label %253

185:                                              ; preds = %178
  %186 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %187 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %191 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = bitcast i8* %193 to %struct.smb_hdr*
  %195 = call i32 @smbCalcSize(%struct.smb_hdr* %194)
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %189, i64 %196
  store i8* %197, i8** %19, align 8
  %198 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %199 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %18, align 8
  %202 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %203 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %207 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = sub nsw i64 %205, %210
  store i64 %211, i64* %14, align 8
  %212 = load i64, i64* %15, align 8
  %213 = load i64, i64* %14, align 8
  %214 = sub nsw i64 %212, %213
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  store i32 0, i32* %17, align 4
  br label %218

218:                                              ; preds = %235, %185
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load i8*, i8** %18, align 8
  %224 = icmp ne i8* %223, null
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i1 [ false, %218 ], [ %224, %222 ]
  br i1 %226, label %227, label %238

227:                                              ; preds = %225
  %228 = load i8*, i8** %18, align 8
  %229 = load i8*, i8** %19, align 8
  %230 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %231 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i8* @nxt_dir_entry(i8* %228, i8* %229, i32 %233)
  store i8* %234, i8** %18, align 8
  br label %235

235:                                              ; preds = %227
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %218

238:                                              ; preds = %225
  %239 = load i8*, i8** %18, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %241, label %250

241:                                              ; preds = %238
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32, i32* %13, align 4
  %247 = load i64, i64* %15, align 8
  %248 = load i32, i32* %12, align 4
  %249 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %246, i64 %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %241, %238
  store i32 0, i32* %12, align 4
  %251 = load i8*, i8** %18, align 8
  %252 = load i8**, i8*** %10, align 8
  store i8* %251, i8** %252, align 8
  br label %255

253:                                              ; preds = %178
  %254 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %275

255:                                              ; preds = %250
  %256 = load i32, i32* %13, align 4
  %257 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %258 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = icmp sge i32 %256, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %255
  %263 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %264 = load i32*, i32** %11, align 8
  store i32 0, i32* %264, align 4
  br label %273

265:                                              ; preds = %255
  %266 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %267 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i32*, i32** %11, align 8
  store i32 %271, i32* %272, align 4
  br label %273

273:                                              ; preds = %265, %262
  %274 = load i32, i32* %12, align 4
  store i32 %274, i32* %6, align 4
  br label %275

275:                                              ; preds = %273, %253, %174, %125, %34
  %276 = load i32, i32* %6, align 4
  ret i32 %276
}

declare dso_local i32 @dump_cifs_file_struct(%struct.file*, i8*) #1

declare dso_local i64 @is_dir_changed(%struct.file*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @CIFSFindClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_small_buf_release(i8*) #1

declare dso_local i32 @cifs_buf_release(i8*) #1

declare dso_local i32 @initiate_cifs_search(i32, %struct.file*) #1

declare dso_local i32 @cifs_save_resume_key(i32, %struct.cifsFileInfo*) #1

declare dso_local i32 @CIFSFindNext(i32, %struct.cifs_tcon*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @smbCalcSize(%struct.smb_hdr*) #1

declare dso_local i8* @nxt_dir_entry(i8*, i8*, i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
