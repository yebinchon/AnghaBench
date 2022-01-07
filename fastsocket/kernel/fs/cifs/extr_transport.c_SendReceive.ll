; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_transport.c_SendReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.smb_hdr = type { i32 }
%struct.mid_q_entry = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Null smb session\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Null tcp session\00", align 1
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Illegal length, greater than maximum frame, %d\00", align 1
@MID_REQUEST_SUBMITTED = common dso_local global i64 0, align 8
@CIFS_ASYNC_OP = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@DeleteMidQEntry = common dso_local global i32 0, align 4
@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Bad MID state?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceive(i32 %0, %struct.cifs_ses* %1, %struct.smb_hdr* %2, %struct.smb_hdr* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_ses*, align 8
  %10 = alloca %struct.smb_hdr*, align 8
  %11 = alloca %struct.smb_hdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mid_q_entry*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %9, align 8
  store %struct.smb_hdr* %2, %struct.smb_hdr** %10, align 8
  store %struct.smb_hdr* %3, %struct.smb_hdr** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %17 = icmp eq %struct.cifs_ses* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %246

22:                                               ; preds = %6
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %24 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %246

31:                                               ; preds = %22
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %33 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CifsExiting, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %246

42:                                               ; preds = %31
  %43 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %44 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = load i32, i32* @CIFSMaxBufSize, align 4
  %48 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 4
  %51 = icmp sgt i32 %46, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %54 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %246

60:                                               ; preds = %42
  %61 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %62 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @wait_for_free_request(%struct.TYPE_11__* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %7, align 4
  br label %246

70:                                               ; preds = %60
  %71 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %72 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %77 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %78 = call i32 @allocate_mid(%struct.cifs_ses* %76, %struct.smb_hdr* %77, %struct.mid_q_entry** %15)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %83 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %88 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @cifs_add_credits(%struct.TYPE_11__* %89, i32 1)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %7, align 4
  br label %246

92:                                               ; preds = %70
  %93 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %94 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %95 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %98 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %97, i32 0, i32 3
  %99 = call i32 @cifs_sign_smb(%struct.smb_hdr* %93, %struct.TYPE_11__* %96, i32* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %104 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %238

108:                                              ; preds = %92
  %109 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %110 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %111 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %113 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call i32 @cifs_in_send_inc(%struct.TYPE_11__* %114)
  %116 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %117 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %120 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %121 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @be32_to_cpu(i32 %122)
  %124 = call i32 @smb_send(%struct.TYPE_11__* %118, %struct.smb_hdr* %119, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %126 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = call i32 @cifs_in_send_dec(%struct.TYPE_11__* %127)
  %129 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %130 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %129)
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %108
  %134 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %135 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 2
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %133, %108
  %141 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %142 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %141, i32 0, i32 0
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %238

149:                                              ; preds = %140
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @CIFS_ASYNC_OP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %238

154:                                              ; preds = %149
  %155 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %156 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %159 = call i32 @wait_for_response(%struct.TYPE_11__* %157, %struct.mid_q_entry* %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %187

162:                                              ; preds = %154
  %163 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %164 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %163, i32 0, i32 0
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %167 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %168 = call i32 @send_nt_cancel(%struct.TYPE_11__* %165, %struct.smb_hdr* %166, %struct.mid_q_entry* %167)
  %169 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %170 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %171 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %162
  %176 = load i32, i32* @DeleteMidQEntry, align 4
  %177 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %178 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %180 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %181 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = call i32 @cifs_add_credits(%struct.TYPE_11__* %182, i32 1)
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %7, align 4
  br label %246

185:                                              ; preds = %162
  %186 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %187

187:                                              ; preds = %185, %154
  %188 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %189 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %190 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %189, i32 0, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = call i32 @cifs_sync_mid_result(%struct.mid_q_entry* %188, %struct.TYPE_11__* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %197 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = call i32 @cifs_add_credits(%struct.TYPE_11__* %198, i32 1)
  %200 = load i32, i32* %14, align 4
  store i32 %200, i32* %7, align 4
  br label %246

201:                                              ; preds = %187
  %202 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %203 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %208 = icmp ne %struct.smb_hdr* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %211 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %209, %206, %201
  %216 = load i32, i32* @EIO, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %14, align 4
  %218 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %238

219:                                              ; preds = %209
  %220 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %221 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @get_rfc1002_length(i32 %222)
  %224 = load i32*, i32** %12, align 8
  store i32 %223, i32* %224, align 4
  %225 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %226 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %227 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 4
  %232 = call i32 @memcpy(%struct.smb_hdr* %225, i32 %228, i32 %231)
  %233 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %234 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %235 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %234, i32 0, i32 0
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = call i32 @cifs_check_receive(%struct.mid_q_entry* %233, %struct.TYPE_11__* %236, i32 0)
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %219, %215, %153, %148, %102
  %239 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %240 = call i32 @delete_mid(%struct.mid_q_entry* %239)
  %241 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %242 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %241, i32 0, i32 0
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = call i32 @cifs_add_credits(%struct.TYPE_11__* %243, i32 1)
  %245 = load i32, i32* %14, align 4
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %238, %195, %175, %81, %68, %52, %39, %27, %18
  %247 = load i32, i32* %7, align 4
  ret i32 %247
}

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wait_for_free_request(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_mid(%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_add_credits(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TYPE_11__*) #1

declare dso_local i32 @smb_send(%struct.TYPE_11__*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TYPE_11__*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @wait_for_response(%struct.TYPE_11__*, %struct.mid_q_entry*) #1

declare dso_local i32 @send_nt_cancel(%struct.TYPE_11__*, %struct.smb_hdr*, %struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_sync_mid_result(%struct.mid_q_entry*, %struct.TYPE_11__*) #1

declare dso_local i32 @get_rfc1002_length(i32) #1

declare dso_local i32 @memcpy(%struct.smb_hdr*, i32, i32) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
