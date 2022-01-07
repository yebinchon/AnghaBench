; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_83.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_lun*, %struct.se_device* }
%struct.se_lun = type { %struct.se_port* }
%struct.se_port = type { i32, %struct.t10_alua_tg_pt_gp_member*, %struct.se_portal_group* }
%struct.t10_alua_tg_pt_gp_member = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)* }
%struct.se_device = type { i32, %struct.t10_alua_lu_gp_member*, %struct.TYPE_4__ }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp* }
%struct.t10_alua_lu_gp = type { i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@DF_EMULATED_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"LIO-ORG\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s,t,0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_emulate_evpd_83(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_lun*, align 8
  %7 = alloca %struct.se_port*, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %10 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %11 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.t10_alua_lu_gp*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 1
  %26 = load %struct.se_device*, %struct.se_device** %25, align 8
  store %struct.se_device* %26, %struct.se_device** %5, align 8
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 0
  %29 = load %struct.se_lun*, %struct.se_lun** %28, align 8
  store %struct.se_lun* %29, %struct.se_lun** %6, align 8
  store %struct.se_port* null, %struct.se_port** %7, align 8
  store %struct.se_portal_group* null, %struct.se_portal_group** %8, align 8
  %30 = load %struct.se_device*, %struct.se_device** %5, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8* %34, i8** %12, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i64 4, i64* %15, align 8
  %35 = load %struct.se_device*, %struct.se_device** %5, align 8
  %36 = getelementptr inbounds %struct.se_device, %struct.se_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %2
  br label %87

42:                                               ; preds = %2
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %15, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 1, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %15, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %15, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, 3
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %15, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 16, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %15, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 96, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 1, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %15, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 64, i8* %75, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 80, i8* %78, align 1
  %79 = load %struct.se_device*, %struct.se_device** %5, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = call i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device* %79, i8* %82)
  store i32 20, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %42, %41
  store i32 8, i32* %17, align 4
  store i64 4, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 8
  store i64 %89, i64* %13, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  %96 = load %struct.se_device*, %struct.se_device** %5, align 8
  %97 = getelementptr inbounds %struct.se_device, %struct.se_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %87
  %103 = load %struct.se_device*, %struct.se_device** %5, align 8
  %104 = getelementptr inbounds %struct.se_device, %struct.se_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = call i64 @strlen(i8* %107)
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %14, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 12
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct.se_device*, %struct.se_device** %5, align 8
  %117 = getelementptr inbounds %struct.se_device, %struct.se_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %115, i8* %120)
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %102, %87
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %15, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 2, i8* %129, align 1
  %130 = load i8*, i8** %4, align 8
  %131 = load i64, i64* %15, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 1, i8* %133, align 1
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %15, align 8
  %136 = add i64 %135, 2
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %4, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, 4
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = call i32 @memcpy(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %143 = load i32, i32* %17, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %15, align 8
  %149 = add i64 %148, 3
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8 %146, i8* %150, align 1
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %15, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %15, align 8
  %160 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %161 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %160, i32 0, i32 0
  %162 = load %struct.se_port*, %struct.se_port** %161, align 8
  store %struct.se_port* %162, %struct.se_port** %7, align 8
  %163 = load %struct.se_port*, %struct.se_port** %7, align 8
  %164 = icmp ne %struct.se_port* %163, null
  br i1 %164, label %165, label %499

165:                                              ; preds = %126
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %166 = load %struct.se_port*, %struct.se_port** %7, align 8
  %167 = getelementptr inbounds %struct.se_port, %struct.se_port* %166, i32 0, i32 2
  %168 = load %struct.se_portal_group*, %struct.se_portal_group** %167, align 8
  store %struct.se_portal_group* %168, %struct.se_portal_group** %8, align 8
  %169 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %170 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %172, align 8
  %174 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %175 = call i32 %173(%struct.se_portal_group* %174)
  %176 = shl i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = load i8*, i8** %4, align 8
  %179 = load i64, i64* %15, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8 %177, i8* %180, align 1
  %181 = load i8*, i8** %4, align 8
  %182 = load i64, i64* %15, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %15, align 8
  %184 = getelementptr inbounds i8, i8* %181, i64 %182
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = or i32 %186, 1
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %184, align 1
  %189 = load i8*, i8** %4, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8 -128, i8* %191, align 1
  %192 = load i8*, i8** %4, align 8
  %193 = load i64, i64* %15, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = or i32 %196, 16
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1
  %199 = load i8*, i8** %4, align 8
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %15, align 8
  %202 = getelementptr inbounds i8, i8* %199, i64 %200
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %204, 4
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %202, align 1
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %15, align 8
  %209 = load i8*, i8** %4, align 8
  %210 = load i64, i64* %15, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %15, align 8
  %212 = getelementptr inbounds i8, i8* %209, i64 %210
  store i8 4, i8* %212, align 1
  %213 = load i64, i64* %15, align 8
  %214 = add i64 %213, 2
  store i64 %214, i64* %15, align 8
  %215 = load %struct.se_port*, %struct.se_port** %7, align 8
  %216 = getelementptr inbounds %struct.se_port, %struct.se_port* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = ashr i32 %217, 8
  %219 = and i32 %218, 255
  %220 = trunc i32 %219 to i8
  %221 = load i8*, i8** %4, align 8
  %222 = load i64, i64* %15, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %15, align 8
  %224 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8 %220, i8* %224, align 1
  %225 = load %struct.se_port*, %struct.se_port** %7, align 8
  %226 = getelementptr inbounds %struct.se_port, %struct.se_port* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 255
  %229 = trunc i32 %228 to i8
  %230 = load i8*, i8** %4, align 8
  %231 = load i64, i64* %15, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %15, align 8
  %233 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8 %229, i8* %233, align 1
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 8
  store i32 %235, i32* %16, align 4
  %236 = load %struct.se_port*, %struct.se_port** %7, align 8
  %237 = getelementptr inbounds %struct.se_port, %struct.se_port* %236, i32 0, i32 1
  %238 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %237, align 8
  store %struct.t10_alua_tg_pt_gp_member* %238, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %239 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %240 = icmp ne %struct.t10_alua_tg_pt_gp_member* %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %165
  br label %325

242:                                              ; preds = %165
  %243 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %244 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %243, i32 0, i32 0
  %245 = call i32 @spin_lock(i32* %244)
  %246 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %247 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %246, i32 0, i32 1
  %248 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %247, align 8
  store %struct.t10_alua_tg_pt_gp* %248, %struct.t10_alua_tg_pt_gp** %10, align 8
  %249 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %250 = icmp ne %struct.t10_alua_tg_pt_gp* %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %242
  %252 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %253 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %252, i32 0, i32 0
  %254 = call i32 @spin_unlock(i32* %253)
  br label %325

255:                                              ; preds = %242
  %256 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %257 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %22, align 4
  %259 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %11, align 8
  %260 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %259, i32 0, i32 0
  %261 = call i32 @spin_unlock(i32* %260)
  %262 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %263 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %262, i32 0, i32 0
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %265, align 8
  %267 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %268 = call i32 %266(%struct.se_portal_group* %267)
  %269 = shl i32 %268, 4
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %4, align 8
  %272 = load i64, i64* %15, align 8
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8 %270, i8* %273, align 1
  %274 = load i8*, i8** %4, align 8
  %275 = load i64, i64* %15, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %15, align 8
  %277 = getelementptr inbounds i8, i8* %274, i64 %275
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = or i32 %279, 1
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %277, align 1
  %282 = load i8*, i8** %4, align 8
  %283 = load i64, i64* %15, align 8
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8 -128, i8* %284, align 1
  %285 = load i8*, i8** %4, align 8
  %286 = load i64, i64* %15, align 8
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = or i32 %289, 16
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %287, align 1
  %292 = load i8*, i8** %4, align 8
  %293 = load i64, i64* %15, align 8
  %294 = add i64 %293, 1
  store i64 %294, i64* %15, align 8
  %295 = getelementptr inbounds i8, i8* %292, i64 %293
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = or i32 %297, 5
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %295, align 1
  %300 = load i64, i64* %15, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %15, align 8
  %302 = load i8*, i8** %4, align 8
  %303 = load i64, i64* %15, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %15, align 8
  %305 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 4, i8* %305, align 1
  %306 = load i64, i64* %15, align 8
  %307 = add i64 %306, 2
  store i64 %307, i64* %15, align 8
  %308 = load i32, i32* %22, align 4
  %309 = ashr i32 %308, 8
  %310 = and i32 %309, 255
  %311 = trunc i32 %310 to i8
  %312 = load i8*, i8** %4, align 8
  %313 = load i64, i64* %15, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %15, align 8
  %315 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8 %311, i8* %315, align 1
  %316 = load i32, i32* %22, align 4
  %317 = and i32 %316, 255
  %318 = trunc i32 %317 to i8
  %319 = load i8*, i8** %4, align 8
  %320 = load i64, i64* %15, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %15, align 8
  %322 = getelementptr inbounds i8, i8* %319, i64 %320
  store i8 %318, i8* %322, align 1
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 8
  store i32 %324, i32* %16, align 4
  br label %325

325:                                              ; preds = %255, %251, %241
  %326 = load %struct.se_device*, %struct.se_device** %5, align 8
  %327 = getelementptr inbounds %struct.se_device, %struct.se_device* %326, i32 0, i32 1
  %328 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %327, align 8
  store %struct.t10_alua_lu_gp_member* %328, %struct.t10_alua_lu_gp_member** %9, align 8
  %329 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %330 = icmp ne %struct.t10_alua_lu_gp_member* %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %325
  br label %393

332:                                              ; preds = %325
  %333 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %334 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %333, i32 0, i32 0
  %335 = call i32 @spin_lock(i32* %334)
  %336 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %337 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %336, i32 0, i32 1
  %338 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %337, align 8
  store %struct.t10_alua_lu_gp* %338, %struct.t10_alua_lu_gp** %18, align 8
  %339 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %18, align 8
  %340 = icmp ne %struct.t10_alua_lu_gp* %339, null
  br i1 %340, label %345, label %341

341:                                              ; preds = %332
  %342 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %343 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %342, i32 0, i32 0
  %344 = call i32 @spin_unlock(i32* %343)
  br label %393

345:                                              ; preds = %332
  %346 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %18, align 8
  %347 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %21, align 4
  %349 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %9, align 8
  %350 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %349, i32 0, i32 0
  %351 = call i32 @spin_unlock(i32* %350)
  %352 = load i8*, i8** %4, align 8
  %353 = load i64, i64* %15, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %15, align 8
  %355 = getelementptr inbounds i8, i8* %352, i64 %353
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = or i32 %357, 1
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %355, align 1
  %360 = load i8*, i8** %4, align 8
  %361 = load i64, i64* %15, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* %15, align 8
  %363 = getelementptr inbounds i8, i8* %360, i64 %361
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = or i32 %365, 6
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %363, align 1
  %368 = load i64, i64* %15, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %15, align 8
  %370 = load i8*, i8** %4, align 8
  %371 = load i64, i64* %15, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %15, align 8
  %373 = getelementptr inbounds i8, i8* %370, i64 %371
  store i8 4, i8* %373, align 1
  %374 = load i64, i64* %15, align 8
  %375 = add i64 %374, 2
  store i64 %375, i64* %15, align 8
  %376 = load i32, i32* %21, align 4
  %377 = ashr i32 %376, 8
  %378 = and i32 %377, 255
  %379 = trunc i32 %378 to i8
  %380 = load i8*, i8** %4, align 8
  %381 = load i64, i64* %15, align 8
  %382 = add i64 %381, 1
  store i64 %382, i64* %15, align 8
  %383 = getelementptr inbounds i8, i8* %380, i64 %381
  store i8 %379, i8* %383, align 1
  %384 = load i32, i32* %21, align 4
  %385 = and i32 %384, 255
  %386 = trunc i32 %385 to i8
  %387 = load i8*, i8** %4, align 8
  %388 = load i64, i64* %15, align 8
  %389 = add i64 %388, 1
  store i64 %389, i64* %15, align 8
  %390 = getelementptr inbounds i8, i8* %387, i64 %388
  store i8 %386, i8* %390, align 1
  %391 = load i32, i32* %16, align 4
  %392 = add nsw i32 %391, 8
  store i32 %392, i32* %16, align 4
  br label %393

393:                                              ; preds = %345, %341, %331
  %394 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %395 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %394, i32 0, i32 0
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 1
  %398 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %397, align 8
  %399 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %400 = call i8* %398(%struct.se_portal_group* %399)
  %401 = call i64 @strlen(i8* %400)
  store i64 %401, i64* %20, align 8
  %402 = load i64, i64* %20, align 8
  %403 = add i64 %402, 10
  store i64 %403, i64* %20, align 8
  %404 = load i64, i64* %20, align 8
  %405 = sub i64 0, %404
  %406 = and i64 %405, 3
  store i64 %406, i64* %19, align 8
  %407 = load i64, i64* %19, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %393
  %410 = load i64, i64* %19, align 8
  %411 = load i64, i64* %20, align 8
  %412 = add i64 %411, %410
  store i64 %412, i64* %20, align 8
  br label %413

413:                                              ; preds = %409, %393
  %414 = load i64, i64* %20, align 8
  %415 = add i64 %414, 4
  store i64 %415, i64* %20, align 8
  %416 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %417 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %416, i32 0, i32 0
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 0
  %420 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %419, align 8
  %421 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %422 = call i32 %420(%struct.se_portal_group* %421)
  %423 = shl i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = load i8*, i8** %4, align 8
  %426 = load i64, i64* %15, align 8
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  store i8 %424, i8* %427, align 1
  %428 = load i8*, i8** %4, align 8
  %429 = load i64, i64* %15, align 8
  %430 = add i64 %429, 1
  store i64 %430, i64* %15, align 8
  %431 = getelementptr inbounds i8, i8* %428, i64 %429
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = or i32 %433, 3
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %431, align 1
  %436 = load i8*, i8** %4, align 8
  %437 = load i64, i64* %15, align 8
  %438 = getelementptr inbounds i8, i8* %436, i64 %437
  store i8 -128, i8* %438, align 1
  %439 = load i8*, i8** %4, align 8
  %440 = load i64, i64* %15, align 8
  %441 = getelementptr inbounds i8, i8* %439, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = or i32 %443, 16
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %441, align 1
  %446 = load i8*, i8** %4, align 8
  %447 = load i64, i64* %15, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %15, align 8
  %449 = getelementptr inbounds i8, i8* %446, i64 %447
  %450 = load i8, i8* %449, align 1
  %451 = zext i8 %450 to i32
  %452 = or i32 %451, 8
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %449, align 1
  %454 = load i64, i64* %15, align 8
  %455 = add i64 %454, 2
  store i64 %455, i64* %15, align 8
  %456 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %457 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %456, i32 0, i32 0
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 2
  %460 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %459, align 8
  %461 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %462 = call i32 %460(%struct.se_portal_group* %461)
  store i32 %462, i32* %23, align 4
  %463 = load i8*, i8** %4, align 8
  %464 = load i64, i64* %15, align 8
  %465 = getelementptr inbounds i8, i8* %463, i64 %464
  %466 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %467 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %466, i32 0, i32 0
  %468 = load %struct.TYPE_3__*, %struct.TYPE_3__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i32 0, i32 1
  %470 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %469, align 8
  %471 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %472 = call i8* %470(%struct.se_portal_group* %471)
  %473 = load i32, i32* %23, align 4
  %474 = call i64 (i8*, i8*, i8*, ...) @sprintf(i8* %465, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %472, i32 %473)
  store i64 %474, i64* %20, align 8
  %475 = load i64, i64* %20, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %20, align 8
  %477 = load i64, i64* %19, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %413
  %480 = load i64, i64* %19, align 8
  %481 = load i64, i64* %20, align 8
  %482 = add i64 %481, %480
  store i64 %482, i64* %20, align 8
  br label %483

483:                                              ; preds = %479, %413
  %484 = load i64, i64* %20, align 8
  %485 = trunc i64 %484 to i8
  %486 = load i8*, i8** %4, align 8
  %487 = load i64, i64* %15, align 8
  %488 = sub i64 %487, 1
  %489 = getelementptr inbounds i8, i8* %486, i64 %488
  store i8 %485, i8* %489, align 1
  %490 = load i64, i64* %20, align 8
  %491 = load i64, i64* %15, align 8
  %492 = add i64 %491, %490
  store i64 %492, i64* %15, align 8
  %493 = load i64, i64* %20, align 8
  %494 = add i64 %493, 4
  %495 = load i32, i32* %16, align 4
  %496 = sext i32 %495 to i64
  %497 = add i64 %496, %494
  %498 = trunc i64 %497 to i32
  store i32 %498, i32* %16, align 4
  br label %499

499:                                              ; preds = %483, %126
  %500 = load i32, i32* %16, align 4
  %501 = ashr i32 %500, 8
  %502 = and i32 %501, 255
  %503 = trunc i32 %502 to i8
  %504 = load i8*, i8** %4, align 8
  %505 = getelementptr inbounds i8, i8* %504, i64 2
  store i8 %503, i8* %505, align 1
  %506 = load i32, i32* %16, align 4
  %507 = and i32 %506, 255
  %508 = trunc i32 %507 to i8
  %509 = load i8*, i8** %4, align 8
  %510 = getelementptr inbounds i8, i8* %509, i64 3
  store i8 %508, i8* %510, align 1
  ret i32 0
}

declare dso_local i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
