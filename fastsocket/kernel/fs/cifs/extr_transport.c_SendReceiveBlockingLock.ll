; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceiveBlockingLock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceiveBlockingLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.smb_hdr = type { i64, i32 }
%struct.mid_q_entry = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Null smb session\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Null tcp session\00", align 1
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Illegal length, greater than maximum frame, %d\00", align 1
@CIFS_BLOCKING_OP = common dso_local global i32 0, align 4
@MID_REQUEST_SUBMITTED = common dso_local global i64 0, align 8
@CifsGood = common dso_local global i64 0, align 8
@CifsNew = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION2 = common dso_local global i64 0, align 8
@ENOLCK = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@DeleteMidQEntry = common dso_local global i32 0, align 4
@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Bad MID state?\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceiveBlockingLock(i32 %0, %struct.cifs_tcon* %1, %struct.smb_hdr* %2, %struct.smb_hdr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.smb_hdr*, align 8
  %10 = alloca %struct.smb_hdr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mid_q_entry*, align 8
  %15 = alloca %struct.cifs_ses*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store %struct.smb_hdr* %2, %struct.smb_hdr** %9, align 8
  store %struct.smb_hdr* %3, %struct.smb_hdr** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %17 = icmp eq %struct.cifs_tcon* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %20 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %19, i32 0, i32 0
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %20, align 8
  %22 = icmp eq %struct.cifs_ses* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %5
  %24 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %333

27:                                               ; preds = %18
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 0
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %29, align 8
  store %struct.cifs_ses* %30, %struct.cifs_ses** %15, align 8
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %32 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %333

39:                                               ; preds = %27
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CifsExiting, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %333

50:                                               ; preds = %39
  %51 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %52 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @be32_to_cpu(i32 %53)
  %55 = load i32, i32* @CIFSMaxBufSize, align 4
  %56 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 4
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @be32_to_cpu(i32 %63)
  %65 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %333

68:                                               ; preds = %50
  %69 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %70 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* @CIFS_BLOCKING_OP, align 4
  %73 = call i32 @wait_for_free_request(%struct.TYPE_10__* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %333

78:                                               ; preds = %68
  %79 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %80 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %85 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %86 = call i32 @allocate_mid(%struct.cifs_ses* %84, %struct.smb_hdr* %85, %struct.mid_q_entry** %14)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %333

96:                                               ; preds = %78
  %97 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %98 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %99 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %102 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %101, i32 0, i32 3
  %103 = call i32 @cifs_sign_smb(%struct.smb_hdr* %97, %struct.TYPE_10__* %100, i32* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %96
  %107 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %108 = call i32 @delete_mid(%struct.mid_q_entry* %107)
  %109 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %110 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %6, align 4
  br label %333

115:                                              ; preds = %96
  %116 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %117 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %118 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %120 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = call i32 @cifs_in_send_inc(%struct.TYPE_10__* %121)
  %123 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %124 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %127 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %128 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @be32_to_cpu(i32 %129)
  %131 = call i32 @smb_send(%struct.TYPE_10__* %125, %struct.smb_hdr* %126, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %133 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = call i32 @cifs_in_send_dec(%struct.TYPE_10__* %134)
  %136 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %137 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %136)
  %138 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %139 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %115
  %146 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %147 = call i32 @delete_mid(%struct.mid_q_entry* %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %6, align 4
  br label %333

149:                                              ; preds = %115
  %150 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %151 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %156 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %149
  %161 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %162 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %161, i32 0, i32 0
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CifsGood, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %170 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @CifsNew, align 8
  %175 = icmp ne i64 %173, %174
  br label %176

176:                                              ; preds = %168, %160
  %177 = phi i1 [ false, %160 ], [ %175, %168 ]
  br label %178

178:                                              ; preds = %176, %149
  %179 = phi i1 [ true, %149 ], [ %177, %176 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @wait_event_interruptible(i32 %154, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @ERESTARTSYS, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %276

186:                                              ; preds = %178
  %187 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %188 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %276

192:                                              ; preds = %186
  %193 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %194 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CifsGood, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %192
  %201 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %202 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %201, i32 0, i32 0
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CifsNew, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %276

208:                                              ; preds = %200, %192
  %209 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %210 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SMB_COM_TRANSACTION2, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %216 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %219 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %220 = call i32 @send_nt_cancel(%struct.TYPE_10__* %217, %struct.smb_hdr* %218, %struct.mid_q_entry* %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %214
  %224 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %225 = call i32 @delete_mid(%struct.mid_q_entry* %224)
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %6, align 4
  br label %333

227:                                              ; preds = %214
  br label %246

228:                                              ; preds = %208
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %231 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %232 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %233 = call i32 @send_lock_cancel(i32 %229, %struct.cifs_tcon* %230, %struct.smb_hdr* %231, %struct.smb_hdr* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %228
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @ENOLCK, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp ne i32 %237, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %243 = call i32 @delete_mid(%struct.mid_q_entry* %242)
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %6, align 4
  br label %333

245:                                              ; preds = %236, %228
  br label %246

246:                                              ; preds = %245, %227
  %247 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %248 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %251 = call i32 @wait_for_response(%struct.TYPE_10__* %249, %struct.mid_q_entry* %250)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %246
  %255 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %256 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %255, i32 0, i32 0
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %259 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %260 = call i32 @send_nt_cancel(%struct.TYPE_10__* %257, %struct.smb_hdr* %258, %struct.mid_q_entry* %259)
  %261 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %262 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %263 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %254
  %268 = load i32, i32* @DeleteMidQEntry, align 4
  %269 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %270 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %269, i32 0, i32 2
  store i32 %268, i32* %270, align 4
  %271 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %272 = load i32, i32* %12, align 4
  store i32 %272, i32* %6, align 4
  br label %333

273:                                              ; preds = %254
  %274 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %275

275:                                              ; preds = %273, %246
  store i32 1, i32* %13, align 4
  br label %276

276:                                              ; preds = %275, %200, %186, %178
  %277 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %278 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %279 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %278, i32 0, i32 0
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = call i32 @cifs_sync_mid_result(%struct.mid_q_entry* %277, %struct.TYPE_10__* %280)
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i32, i32* %12, align 4
  store i32 %285, i32* %6, align 4
  br label %333

286:                                              ; preds = %276
  %287 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %288 = icmp eq %struct.smb_hdr* %287, null
  br i1 %288, label %295, label %289

289:                                              ; preds = %286
  %290 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %291 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %289, %286
  %296 = load i32, i32* @EIO, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %12, align 4
  %298 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %318

299:                                              ; preds = %289
  %300 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %301 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @get_rfc1002_length(i32 %302)
  %304 = load i32*, i32** %11, align 8
  store i32 %303, i32* %304, align 4
  %305 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %306 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %307 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load i32*, i32** %11, align 8
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 4
  %312 = call i32 @memcpy(%struct.smb_hdr* %305, i32 %308, i32 %311)
  %313 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %314 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %315 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %314, i32 0, i32 0
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = call i32 @cifs_check_receive(%struct.mid_q_entry* %313, %struct.TYPE_10__* %316, i32 0)
  store i32 %317, i32* %12, align 4
  br label %318

318:                                              ; preds = %299, %295
  %319 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %320 = call i32 @delete_mid(%struct.mid_q_entry* %319)
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = load i32, i32* %12, align 4
  %325 = load i32, i32* @EACCES, align 4
  %326 = sub nsw i32 0, %325
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load i32, i32* @ERESTARTSYS, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %6, align 4
  br label %333

331:                                              ; preds = %323, %318
  %332 = load i32, i32* %12, align 4
  store i32 %332, i32* %6, align 4
  br label %333

333:                                              ; preds = %331, %328, %284, %267, %241, %223, %145, %106, %89, %76, %60, %47, %35, %23
  %334 = load i32, i32* %6, align 4
  ret i32 %334
}

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wait_for_free_request(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_mid(%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @delete_mid(%struct.mid_q_entry*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TYPE_10__*) #1

declare dso_local i32 @smb_send(%struct.TYPE_10__*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TYPE_10__*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @send_nt_cancel(%struct.TYPE_10__*, %struct.smb_hdr*, %struct.mid_q_entry*) #1

declare dso_local i32 @send_lock_cancel(i32, %struct.cifs_tcon*, %struct.smb_hdr*, %struct.smb_hdr*) #1

declare dso_local i32 @wait_for_response(%struct.TYPE_10__*, %struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_sync_mid_result(%struct.mid_q_entry*, %struct.TYPE_10__*) #1

declare dso_local i32 @get_rfc1002_length(i32) #1

declare dso_local i32 @memcpy(%struct.smb_hdr*, i32, i32) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
