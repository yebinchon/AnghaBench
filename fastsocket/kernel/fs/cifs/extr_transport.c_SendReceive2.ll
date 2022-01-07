; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceive2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceive2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.mid_q_entry = type { i64, i32*, i64, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.smb_hdr = type { i32 }

@CIFS_TIMEOUT_MASK = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Null session\00", align 1
@EIO = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@MID_REQUEST_SUBMITTED = common dso_local global i64 0, align 8
@CIFS_ASYNC_OP = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@DeleteMidQEntry = common dso_local global i32 0, align 4
@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Bad MID state?\00", align 1
@CIFS_LARGE_BUFFER = common dso_local global i32 0, align 4
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@CIFS_NO_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceive2(i32 %0, %struct.cifs_ses* %1, %struct.kvec* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_ses*, align 8
  %10 = alloca %struct.kvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mid_q_entry*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.smb_rqst, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %9, align 8
  store %struct.kvec* %2, %struct.kvec** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.kvec*, %struct.kvec** %10, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i64 0
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %17, align 8
  %23 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 1
  %26 = load %struct.kvec*, %struct.kvec** %10, align 8
  store %struct.kvec* %26, %struct.kvec** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @CIFS_TIMEOUT_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %33 = icmp eq %struct.cifs_ses* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %6
  %35 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %36 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp eq %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %6
  %40 = load i8*, i8** %17, align 8
  %41 = call i32 @cifs_small_buf_release(i8* %40)
  %42 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %259

45:                                               ; preds = %34
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %47 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CifsExiting, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @cifs_small_buf_release(i8* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %259

58:                                               ; preds = %45
  %59 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %60 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @wait_for_free_request(%struct.TYPE_10__* %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 @cifs_small_buf_release(i8* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %259

70:                                               ; preds = %58
  %71 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %72 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %77 = call %struct.mid_q_entry* @cifs_setup_request(%struct.cifs_ses* %76, %struct.smb_rqst* %18)
  store %struct.mid_q_entry* %77, %struct.mid_q_entry** %16, align 8
  %78 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %79 = call i64 @IS_ERR(%struct.mid_q_entry* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %70
  %82 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %83 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i8*, i8** %17, align 8
  %88 = call i32 @cifs_small_buf_release(i8* %87)
  %89 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %90 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @cifs_add_credits(%struct.TYPE_10__* %91, i32 1)
  %93 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %94 = call i32 @PTR_ERR(%struct.mid_q_entry* %93)
  store i32 %94, i32* %7, align 4
  br label %259

95:                                               ; preds = %70
  %96 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %97 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %98 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %100 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = call i32 @cifs_in_send_inc(%struct.TYPE_10__* %101)
  %103 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %104 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = load %struct.kvec*, %struct.kvec** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @smb_sendv(%struct.TYPE_10__* %105, %struct.kvec* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %110 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = call i32 @cifs_in_send_dec(%struct.TYPE_10__* %111)
  %113 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %114 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %113)
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %95
  %118 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %119 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 2
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %95
  %125 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %126 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @cifs_small_buf_release(i8* %133)
  br label %251

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* @CIFS_ASYNC_OP, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %17, align 8
  %141 = call i32 @cifs_small_buf_release(i8* %140)
  br label %251

142:                                              ; preds = %135
  %143 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %144 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %147 = call i32 @wait_for_response(%struct.TYPE_10__* %145, %struct.mid_q_entry* %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %142
  %151 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %152 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = bitcast i8* %154 to %struct.smb_hdr*
  %156 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %157 = call i32 @send_nt_cancel(%struct.TYPE_10__* %153, %struct.smb_hdr* %155, %struct.mid_q_entry* %156)
  %158 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %159 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %160 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %150
  %165 = load i32, i32* @DeleteMidQEntry, align 4
  %166 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %167 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %169 = load i8*, i8** %17, align 8
  %170 = call i32 @cifs_small_buf_release(i8* %169)
  %171 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %172 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = call i32 @cifs_add_credits(%struct.TYPE_10__* %173, i32 1)
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %7, align 4
  br label %259

176:                                              ; preds = %150
  %177 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %178

178:                                              ; preds = %176, %142
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @cifs_small_buf_release(i8* %179)
  %181 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %182 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %183 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %182, i32 0, i32 0
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = call i32 @cifs_sync_mid_result(%struct.mid_q_entry* %181, %struct.TYPE_10__* %184)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %178
  %189 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %190 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = call i32 @cifs_add_credits(%struct.TYPE_10__* %191, i32 1)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %7, align 4
  br label %259

194:                                              ; preds = %178
  %195 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %196 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %201 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199, %194
  %206 = load i32, i32* @EIO, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %14, align 4
  %208 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %251

209:                                              ; preds = %199
  %210 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %211 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = bitcast i32* %212 to i8*
  store i8* %213, i8** %17, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = load %struct.kvec*, %struct.kvec** %10, align 8
  %216 = getelementptr inbounds %struct.kvec, %struct.kvec* %215, i64 0
  %217 = getelementptr inbounds %struct.kvec, %struct.kvec* %216, i32 0, i32 0
  store i8* %214, i8** %217, align 8
  %218 = load i8*, i8** %17, align 8
  %219 = call i64 @get_rfc1002_length(i8* %218)
  %220 = add nsw i64 %219, 4
  %221 = load %struct.kvec*, %struct.kvec** %10, align 8
  %222 = getelementptr inbounds %struct.kvec, %struct.kvec* %221, i64 0
  %223 = getelementptr inbounds %struct.kvec, %struct.kvec* %222, i32 0, i32 1
  store i64 %220, i64* %223, align 8
  %224 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %225 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %209
  %229 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %230 = load i32*, i32** %12, align 8
  store i32 %229, i32* %230, align 4
  br label %234

231:                                              ; preds = %209
  %232 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %233 = load i32*, i32** %12, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %236 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %237 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %236, i32 0, i32 0
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* @CIFS_LOG_ERROR, align 4
  %241 = and i32 %239, %240
  %242 = call i32 @cifs_check_receive(%struct.mid_q_entry* %235, %struct.TYPE_10__* %238, i32 %241)
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @CIFS_NO_RESP, align 4
  %245 = and i32 %243, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %234
  %248 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %249 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %248, i32 0, i32 1
  store i32* null, i32** %249, align 8
  br label %250

250:                                              ; preds = %247, %234
  br label %251

251:                                              ; preds = %250, %205, %139, %132
  %252 = load %struct.mid_q_entry*, %struct.mid_q_entry** %16, align 8
  %253 = call i32 @delete_mid(%struct.mid_q_entry* %252)
  %254 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %255 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = call i32 @cifs_add_credits(%struct.TYPE_10__* %256, i32 1)
  %258 = load i32, i32* %14, align 4
  store i32 %258, i32* %7, align 4
  br label %259

259:                                              ; preds = %251, %188, %164, %81, %66, %53, %39
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

declare dso_local i32 @cifs_small_buf_release(i8*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @wait_for_free_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mid_q_entry* @cifs_setup_request(%struct.cifs_ses*, %struct.smb_rqst*) #1

declare dso_local i64 @IS_ERR(%struct.mid_q_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_add_credits(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.mid_q_entry*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TYPE_10__*) #1

declare dso_local i32 @smb_sendv(%struct.TYPE_10__*, %struct.kvec*, i32) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TYPE_10__*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @wait_for_response(%struct.TYPE_10__*, %struct.mid_q_entry*) #1

declare dso_local i32 @send_nt_cancel(%struct.TYPE_10__*, %struct.smb_hdr*, %struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_sync_mid_result(%struct.mid_q_entry*, %struct.TYPE_10__*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i64 @get_rfc1002_length(i8*) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
