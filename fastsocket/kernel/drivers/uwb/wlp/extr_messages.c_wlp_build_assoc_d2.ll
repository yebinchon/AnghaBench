; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_d2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_build_assoc_d2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_8__, i32, %struct.wlp_device_info*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.wlp_device_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_wss = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wlp_uuid = type { i32 }
%struct.wlp_frame_assoc = type { i8*, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"WLP: Unable to setup device information for D2 message.\0A\00", align 1
@WLP_WSS_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"WLP: Cannot allocate memory for association message.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WLP_PROTOCOL_ID = common dso_local global i32 0, align 4
@WLP_FRAME_ASSOCIATION = common dso_local global i32 0, align 4
@WLP_ASSOC_D2 = common dso_local global i32 0, align 4
@WLP_VERSION = common dso_local global i32 0, align 4
@WLP_ASSOC_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_wss*, %struct.sk_buff**, %struct.wlp_uuid*)* @wlp_build_assoc_d2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_build_assoc_d2(%struct.wlp* %0, %struct.wlp_wss* %1, %struct.sk_buff** %2, %struct.wlp_uuid* %3) #0 {
  %5 = alloca %struct.wlp*, align 8
  %6 = alloca %struct.wlp_wss*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca %struct.wlp_uuid*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wlp_device_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wlp_frame_assoc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %5, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  store %struct.wlp_uuid* %3, %struct.wlp_uuid** %8, align 8
  %17 = load %struct.wlp*, %struct.wlp** %5, align 8
  %18 = getelementptr inbounds %struct.wlp, %struct.wlp* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %22 = load %struct.wlp*, %struct.wlp** %5, align 8
  %23 = getelementptr inbounds %struct.wlp, %struct.wlp* %22, i32 0, i32 2
  %24 = load %struct.wlp_device_info*, %struct.wlp_device_info** %23, align 8
  %25 = icmp eq %struct.wlp_device_info* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.wlp*, %struct.wlp** %5, align 8
  %28 = call i32 @__wlp_setup_device_info(%struct.wlp* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %9, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %244

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.wlp*, %struct.wlp** %5, align 8
  %37 = getelementptr inbounds %struct.wlp, %struct.wlp* %36, i32 0, i32 2
  %38 = load %struct.wlp_device_info*, %struct.wlp_device_info** %37, align 8
  store %struct.wlp_device_info* %38, %struct.wlp_device_info** %11, align 8
  %39 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %40 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = add i64 44, %43
  %45 = add i64 %44, 4
  %46 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %47 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = add i64 %45, %50
  %52 = add i64 %51, 4
  %53 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %54 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = add i64 %52, %57
  %59 = add i64 %58, 4
  %60 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %61 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strlen(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = add i64 %59, %64
  %66 = add i64 %65, 4
  %67 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %68 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = add i64 %66, %71
  %73 = add i64 %72, 4
  %74 = add i64 %73, 4
  store i64 %74, i64* %16, align 8
  %75 = load %struct.wlp*, %struct.wlp** %5, align 8
  %76 = getelementptr inbounds %struct.wlp, %struct.wlp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WLP_WSS_STATE_ACTIVE, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %35
  %82 = load %struct.wlp*, %struct.wlp** %5, align 8
  %83 = getelementptr inbounds %struct.wlp, %struct.wlp* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strlen(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = add i64 8, %87
  %89 = load i64, i64* %16, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %16, align 8
  br label %91

91:                                               ; preds = %81, %35
  %92 = load i64, i64* %16, align 8
  %93 = call %struct.sk_buff* @dev_alloc_skb(i64 %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %14, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %95 = icmp eq %struct.sk_buff* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %9, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %244

101:                                              ; preds = %91
  %102 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = bitcast i8* %105 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %106, %struct.wlp_frame_assoc** %13, align 8
  %107 = load i32, i32* @WLP_PROTOCOL_ID, align 4
  %108 = call i32 @cpu_to_le16(i32 %107)
  %109 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %110 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @WLP_FRAME_ASSOCIATION, align 4
  %113 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %114 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @WLP_ASSOC_D2, align 4
  %117 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %118 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %120 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %119, i32 0, i32 2
  %121 = load i32, i32* @WLP_VERSION, align 4
  %122 = call i32 @wlp_set_version(i32* %120, i32 %121)
  %123 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %124 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %123, i32 0, i32 1
  %125 = load i32, i32* @WLP_ASSOC_D2, align 4
  %126 = call i32 @wlp_set_msg_type(i32* %124, i32 %125)
  %127 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %13, align 8
  %128 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %15, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = load %struct.wlp_uuid*, %struct.wlp_uuid** %8, align 8
  %132 = call i64 @wlp_set_uuid_e(i8* %130, %struct.wlp_uuid* %131)
  store i64 %132, i64* %12, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr i8, i8* %133, i64 %134
  %136 = load %struct.wlp*, %struct.wlp** %5, align 8
  %137 = getelementptr inbounds %struct.wlp, %struct.wlp* %136, i32 0, i32 1
  %138 = call i64 @wlp_set_uuid_r(i8* %135, i32* %137)
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %12, align 8
  %141 = load %struct.wlp*, %struct.wlp** %5, align 8
  %142 = getelementptr inbounds %struct.wlp, %struct.wlp* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WLP_WSS_STATE_ACTIVE, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %101
  %148 = load i8*, i8** %15, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr i8, i8* %148, i64 %149
  %151 = load %struct.wlp*, %struct.wlp** %5, align 8
  %152 = getelementptr inbounds %struct.wlp, %struct.wlp* %151, i32 0, i32 0
  %153 = call i64 @wlp_set_wss_info(i8* %150, %struct.TYPE_8__* %152)
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %12, align 8
  br label %156

156:                                              ; preds = %147, %101
  %157 = load i8*, i8** %15, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr i8, i8* %157, i64 %158
  %160 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %161 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %164 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @strlen(i32 %165)
  %167 = call i64 @wlp_set_dev_name(i8* %159, i32 %162, i32 %166)
  %168 = load i64, i64* %12, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %12, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr i8, i8* %170, i64 %171
  %173 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %174 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %177 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @strlen(i32 %178)
  %180 = call i64 @wlp_set_manufacturer(i8* %172, i32 %175, i32 %179)
  %181 = load i64, i64* %12, align 8
  %182 = add i64 %181, %180
  store i64 %182, i64* %12, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i64, i64* %12, align 8
  %185 = getelementptr i8, i8* %183, i64 %184
  %186 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %187 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %190 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @strlen(i32 %191)
  %193 = call i64 @wlp_set_model_name(i8* %185, i32 %188, i32 %192)
  %194 = load i64, i64* %12, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %12, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr i8, i8* %196, i64 %197
  %199 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %200 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %203 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @strlen(i32 %204)
  %206 = call i64 @wlp_set_model_nr(i8* %198, i32 %201, i32 %205)
  %207 = load i64, i64* %12, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %12, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = load i64, i64* %12, align 8
  %211 = getelementptr i8, i8* %209, i64 %210
  %212 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %213 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %216 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @strlen(i32 %217)
  %219 = call i64 @wlp_set_serial(i8* %211, i32 %214, i32 %218)
  %220 = load i64, i64* %12, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %12, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = load i64, i64* %12, align 8
  %224 = getelementptr i8, i8* %222, i64 %223
  %225 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %226 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %225, i32 0, i32 0
  %227 = call i64 @wlp_set_prim_dev_type(i8* %224, i32* %226)
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %12, align 8
  %230 = load i8*, i8** %15, align 8
  %231 = load i64, i64* %12, align 8
  %232 = getelementptr i8, i8* %230, i64 %231
  %233 = load i32, i32* @WLP_ASSOC_ERROR_NONE, align 4
  %234 = call i64 @wlp_set_wlp_assc_err(i8* %232, i32 %233)
  %235 = load i64, i64* %12, align 8
  %236 = add i64 %235, %234
  store i64 %236, i64* %12, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %238 = load i64, i64* %12, align 8
  %239 = add i64 32, %238
  %240 = trunc i64 %239 to i32
  %241 = call i32 @skb_put(%struct.sk_buff* %237, i32 %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %243 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %242, %struct.sk_buff** %243, align 8
  br label %244

244:                                              ; preds = %156, %96, %31
  %245 = load i32, i32* %10, align 4
  ret i32 %245
}

declare dso_local i32 @__wlp_setup_device_info(%struct.wlp*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wlp_set_version(i32*, i32) #1

declare dso_local i32 @wlp_set_msg_type(i32*, i32) #1

declare dso_local i64 @wlp_set_uuid_e(i8*, %struct.wlp_uuid*) #1

declare dso_local i64 @wlp_set_uuid_r(i8*, i32*) #1

declare dso_local i64 @wlp_set_wss_info(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @wlp_set_dev_name(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_manufacturer(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_model_name(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_model_nr(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_serial(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_prim_dev_type(i8*, i32*) #1

declare dso_local i64 @wlp_set_wlp_assc_err(i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
