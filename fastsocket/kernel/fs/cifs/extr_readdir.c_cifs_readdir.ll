; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.cifsFileInfo*, %struct.TYPE_11__ }
%struct.cifsFileInfo = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"initiate cifs search rc %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Filldir for current dir failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Filldir for parent dir failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"End of search, empty dir\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fce error %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"entry %lld found\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"could not find entry\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"loop through %d times filling dir for net buf %p\00", align 1
@UNICODE_NAME_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"past SMB end,  num to fill %d i %d\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"last entry in buf at pos %lld %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cifs_sb_info*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.cifsFileInfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %13, align 8
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %19 = call i32 (...) @GetXid()
  store i32 %19, i32* %9, align 4
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.cifs_sb_info* @CIFS_SB(i32 %25)
  store %struct.cifs_sb_info* %26, %struct.cifs_sb_info** %11, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %28, align 8
  %30 = icmp eq %struct.cifsFileInfo* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = call i32 @initiate_cifs_search(i32 %32, %struct.file* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %249

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %99 [
    i32 0, label %45
    i32 1, label %71
  ]

45:                                               ; preds = %41
  %46 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DT_DIR, align 4
  %60 = call i32 %46(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %50, i32 %58, i32 %59)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %248

66:                                               ; preds = %45
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %41, %66
  %72 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DT_DIR, align 4
  %88 = call i32 %72(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 %76, i32 %86, i32 %87)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %71
  %91 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %248

94:                                               ; preds = %71
  %95 = load %struct.file*, %struct.file** %5, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %41, %94
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 1
  %102 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %101, align 8
  %103 = icmp eq %struct.cifsFileInfo* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @FreeXid(i32 %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %253

110:                                              ; preds = %99
  %111 = load %struct.file*, %struct.file** %5, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %111, i32 0, i32 1
  %113 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %112, align 8
  store %struct.cifsFileInfo* %113, %struct.cifsFileInfo** %13, align 8
  %114 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %115 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %121 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %248

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %130 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.cifs_tcon* @tlink_tcon(i32 %131)
  store %struct.cifs_tcon* %132, %struct.cifs_tcon** %12, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %135 = load %struct.file*, %struct.file** %5, align 8
  %136 = call i32 @find_cifs_entry(i32 %133, %struct.cifs_tcon* %134, %struct.file* %135, i8** %14, i32* %15)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %8, align 4
  %141 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %249

142:                                              ; preds = %128
  %143 = load i8*, i8** %14, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.file*, %struct.file** %5, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %152

150:                                              ; preds = %142
  %151 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %249

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %156 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %154, i8* %158)
  %160 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %161 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = bitcast i8* %163 to %struct.smb_hdr*
  %165 = call i32 @smbCalcSize(%struct.smb_hdr* %164)
  store i32 %165, i32* %18, align 4
  %166 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %167 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %18, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8* %172, i8** %17, align 8
  %173 = load i32, i32* @UNICODE_NAME_MAX, align 4
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i8* @kmalloc(i32 %173, i32 %174)
  store i8* %175, i8** %16, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %153
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %8, align 4
  br label %248

181:                                              ; preds = %153
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %242, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %15, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = icmp eq i32 %187, 0
  br label %189

189:                                              ; preds = %186, %182
  %190 = phi i1 [ false, %182 ], [ %188, %186 ]
  br i1 %190, label %191, label %245

191:                                              ; preds = %189
  %192 = load i8*, i8** %14, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %195, i32 %196)
  br label %245

198:                                              ; preds = %191
  %199 = load i8*, i8** %14, align 8
  %200 = load %struct.file*, %struct.file** %5, align 8
  %201 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %7, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = load i8*, i8** %16, align 8
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @cifs_filldir(i8* %199, %struct.file* %200, i32 (i8*, i8*, i32, i32, i32, i32)* %201, i8* %202, i8* %203, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @EOVERFLOW, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %198
  store i32 0, i32* %8, align 4
  br label %245

211:                                              ; preds = %198
  %212 = load %struct.file*, %struct.file** %5, align 8
  %213 = getelementptr inbounds %struct.file, %struct.file* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 8
  %216 = load %struct.file*, %struct.file** %5, align 8
  %217 = getelementptr inbounds %struct.file, %struct.file* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %220 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %218, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %211
  %225 = load %struct.file*, %struct.file** %5, align 8
  %226 = getelementptr inbounds %struct.file, %struct.file* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %227, i8* %228)
  %230 = load i8*, i8** %14, align 8
  %231 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %232 = call i32 @cifs_save_resume_key(i8* %230, %struct.cifsFileInfo* %231)
  br label %245

233:                                              ; preds = %211
  %234 = load i8*, i8** %14, align 8
  %235 = load i8*, i8** %17, align 8
  %236 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %13, align 8
  %237 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @nxt_dir_entry(i8* %234, i8* %235, i32 %239)
  store i8* %240, i8** %14, align 8
  br label %241

241:                                              ; preds = %233
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %10, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %10, align 4
  br label %182

245:                                              ; preds = %224, %210, %194, %189
  %246 = load i8*, i8** %16, align 8
  %247 = call i32 @kfree(i8* %246)
  br label %248

248:                                              ; preds = %245, %178, %125, %90, %62
  br label %249

249:                                              ; preds = %248, %150, %139, %39
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @FreeXid(i32 %250)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %249, %104
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @GetXid(...) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @initiate_cifs_search(i32, %struct.file*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @find_cifs_entry(i32, %struct.cifs_tcon*, %struct.file*, i8**, i32*) #1

declare dso_local i32 @smbCalcSize(%struct.smb_hdr*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cifs_filldir(i8*, %struct.file*, i32 (i8*, i8*, i32, i32, i32, i32)*, i8*, i8*, i32) #1

declare dso_local i32 @cifs_save_resume_key(i8*, %struct.cifsFileInfo*) #1

declare dso_local i8* @nxt_dir_entry(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
