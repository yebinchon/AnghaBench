; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_io_parms = type { i32, i32, i32, i32, %struct.cifs_tcon* }
%struct.cifs_tcon = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__, i64, i8*, i8*, i64, i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.smb_com_readx_req = type { i64 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Reading %d bytes on fid %d\00", align 1
@CAP_LARGE_FILES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SMB_COM_READ_ANDX = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Send error in read = %d\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bad length %d for count %d\00", align 1
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@CIFS_LARGE_BUFFER = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBRead(i32 %0, %struct.cifs_io_parms* %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_io_parms*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.kvec], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.cifs_tcon*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.smb_com_readx_req*, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_io_parms* %1, %struct.cifs_io_parms** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %28 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %29 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %19, align 4
  %31 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %32 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %20, align 4
  %34 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %35 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %21, align 4
  %37 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %38 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %37, i32 0, i32 4
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %38, align 8
  store %struct.cifs_tcon* %39, %struct.cifs_tcon** %22, align 8
  %40 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %41 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %47 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CAP_LARGE_FILES, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %5
  store i32 12, i32* %16, align 4
  br label %63

55:                                               ; preds = %5
  store i32 10, i32* %16, align 4
  %56 = load i32, i32* %21, align 4
  %57 = ashr i32 %56, 32
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %270

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32*, i32** %9, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @SMB_COM_READ_ANDX, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %68 = bitcast %struct.TYPE_9__** %13 to i8**
  %69 = call i32 @small_smb_init(i32 %65, i32 %66, %struct.cifs_tcon* %67, i8** %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %270

74:                                               ; preds = %63
  %75 = load i32, i32* %19, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* %19, align 4
  %81 = ashr i32 %80, 16
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i8* %82, i8** %85, align 8
  %86 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %87 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load i32, i32* @ECONNABORTED, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %270

95:                                               ; preds = %74
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i32 255, i32* %97, align 8
  %98 = load i32, i32* %20, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %21, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 12
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load i32, i32* %21, align 4
  %109 = ashr i32 %108, 32
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %107, %95
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %23, align 4
  %117 = and i32 %116, 65535
  %118 = call i8* @cpu_to_le16(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %23, align 4
  %122 = lshr i32 %121, 16
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 12
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %136

131:                                              ; preds = %113
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = bitcast %struct.TYPE_9__* %132 to %struct.smb_com_readx_req*
  store %struct.smb_com_readx_req* %133, %struct.smb_com_readx_req** %24, align 8
  %134 = load %struct.smb_com_readx_req*, %struct.smb_com_readx_req** %24, align 8
  %135 = getelementptr inbounds %struct.smb_com_readx_req, %struct.smb_com_readx_req* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %138 = bitcast %struct.TYPE_9__* %137 to i8*
  %139 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %140 = getelementptr inbounds %struct.kvec, %struct.kvec* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 16
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @be32_to_cpu(i32 %144)
  %146 = add nsw i64 %145, 4
  %147 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %148 = getelementptr inbounds %struct.kvec, %struct.kvec* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %151 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %154 = load i32, i32* @CIFS_LOG_ERROR, align 4
  %155 = call i32 @SendReceive2(i32 %149, %struct.TYPE_10__* %152, %struct.kvec* %153, i32 1, i32* %17, i32 %154)
  store i32 %155, i32* %12, align 4
  %156 = load %struct.cifs_tcon*, %struct.cifs_tcon** %22, align 8
  %157 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %156, i32 0, i32 0
  %158 = call i32 @cifs_stats_inc(i32* %157)
  %159 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %160 = getelementptr inbounds %struct.kvec, %struct.kvec* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 16
  %162 = bitcast i8* %161 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %14, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %136
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %219

168:                                              ; preds = %136
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le16_to_cpu(i32 %171)
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %25, align 4
  %174 = shl i32 %173, 16
  store i32 %174, i32* %25, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  %179 = load i32, i32* %25, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %25, align 4
  %181 = load i32, i32* %25, align 4
  %182 = load i32*, i32** %9, align 8
  store i32 %181, i32* %182, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* @CIFSMaxBufSize, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %25, align 4
  %188 = load i32, i32* %23, align 4
  %189 = icmp ugt i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186, %168
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %192)
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %12, align 4
  %196 = load i32*, i32** %9, align 8
  store i32 0, i32* %196, align 4
  br label %218

197:                                              ; preds = %186
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = bitcast i32* %200 to i8*
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @le16_to_cpu(i32 %204)
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %201, i64 %206
  store i8* %207, i8** %15, align 8
  %208 = load i8**, i8*** %10, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %197
  %212 = load i8**, i8*** %10, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = load i32, i32* %25, align 4
  %216 = call i32 @memcpy(i8* %213, i8* %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %197
  br label %218

218:                                              ; preds = %217, %190
  br label %219

219:                                              ; preds = %218, %165
  %220 = load i8**, i8*** %10, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %243

223:                                              ; preds = %219
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %229 = getelementptr inbounds %struct.kvec, %struct.kvec* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 16
  %231 = call i32 @cifs_small_buf_release(i8* %230)
  br label %242

232:                                              ; preds = %223
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %238 = getelementptr inbounds %struct.kvec, %struct.kvec* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 16
  %240 = call i32 @cifs_buf_release(i8* %239)
  br label %241

241:                                              ; preds = %236, %232
  br label %242

242:                                              ; preds = %241, %227
  br label %268

243:                                              ; preds = %219
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  %248 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %249 = getelementptr inbounds %struct.kvec, %struct.kvec* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 16
  %251 = load i8**, i8*** %10, align 8
  store i8* %250, i8** %251, align 8
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %257 = load i32*, i32** %11, align 8
  store i32 %256, i32* %257, align 4
  br label %266

258:                                              ; preds = %247
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %264 = load i32*, i32** %11, align 8
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %262, %258
  br label %266

266:                                              ; preds = %265, %255
  br label %267

267:                                              ; preds = %266, %243
  br label %268

268:                                              ; preds = %267, %242
  %269 = load i32, i32* %12, align 4
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %268, %92, %72, %59
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @SendReceive2(i32, %struct.TYPE_10__*, %struct.kvec*, i32, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cifs_small_buf_release(i8*) #1

declare dso_local i32 @cifs_buf_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
