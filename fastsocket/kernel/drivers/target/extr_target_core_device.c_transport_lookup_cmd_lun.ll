; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_transport_lookup_cmd_lun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_transport_lookup_cmd_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, i32, i64, %struct.se_device*, i32, %struct.se_lun*, %struct.TYPE_5__*, i32, %struct.se_dev_entry*, %struct.se_session* }
%struct.se_device = type { i32, i32, i32, i32 }
%struct.se_lun = type { i32, i32, %struct.se_device* }
%struct.TYPE_5__ = type { i32 (...)* }
%struct.se_dev_entry = type { i32, i32, %struct.se_lun*, i32, i32, i32, i32, i32 }
%struct.se_session = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.se_lun }
%struct.TYPE_4__ = type { i32, %struct.se_dev_entry** }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@TCM_NON_EXISTENT_LUN = common dso_local global i32 0, align 4
@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"TARGET_CORE[%s]: Detected WRITE_PROTECTED LUN Access for 0x%08x\0A\00", align 1
@TCM_WRITE_PROTECTED = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"TARGET_CORE[%s]: Detected NON_EXISTENT_LUN Access for 0x%08x\0A\00", align 1
@DMA_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_lookup_cmd_lun(%struct.se_cmd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.se_lun*, align 8
  %7 = alloca %struct.se_session*, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.se_dev_entry*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.se_lun* null, %struct.se_lun** %6, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 10
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TCM_NON_EXISTENT_LUN, align 4
  store i32 %18, i32* %3, align 4
  br label %269

19:                                               ; preds = %2
  %20 = load %struct.se_session*, %struct.se_session** %7, align 8
  %21 = getelementptr inbounds %struct.se_session, %struct.se_session* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.se_session*, %struct.se_session** %7, align 8
  %27 = getelementptr inbounds %struct.se_session, %struct.se_session* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %30, i64 %31
  %33 = load %struct.se_dev_entry*, %struct.se_dev_entry** %32, align 8
  %34 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 9
  store %struct.se_dev_entry* %33, %struct.se_dev_entry** %35, align 8
  %36 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 9
  %38 = load %struct.se_dev_entry*, %struct.se_dev_entry** %37, align 8
  %39 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %148

44:                                               ; preds = %19
  %45 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 9
  %47 = load %struct.se_dev_entry*, %struct.se_dev_entry** %46, align 8
  store %struct.se_dev_entry* %47, %struct.se_dev_entry** %10, align 8
  %48 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %49 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %56 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DMA_TO_DEVICE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %44
  %67 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %68 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %74, i32 0, i32 7
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %80)
  %82 = load %struct.se_session*, %struct.se_session** %7, align 8
  %83 = getelementptr inbounds %struct.se_session, %struct.se_session* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* @TCM_WRITE_PROTECTED, align 4
  store i32 %88, i32* %3, align 4
  br label %269

89:                                               ; preds = %66, %44
  %90 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DMA_TO_DEVICE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %97 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %100 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %122

105:                                              ; preds = %89
  %106 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %116 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %111, %105
  br label %122

122:                                              ; preds = %121, %95
  %123 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %124 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %128 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %127, i32 0, i32 2
  %129 = load %struct.se_lun*, %struct.se_lun** %128, align 8
  store %struct.se_lun* %129, %struct.se_lun** %6, align 8
  %130 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %131 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %130, i32 0, i32 2
  %132 = load %struct.se_lun*, %struct.se_lun** %131, align 8
  %133 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %133, i32 0, i32 6
  store %struct.se_lun* %132, %struct.se_lun** %134, align 8
  %135 = load %struct.se_dev_entry*, %struct.se_dev_entry** %10, align 8
  %136 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %139 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %5, align 8
  %141 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %142 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %144 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %122, %19
  %149 = load %struct.se_session*, %struct.se_session** %7, align 8
  %150 = getelementptr inbounds %struct.se_session, %struct.se_session* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %156 = icmp ne %struct.se_lun* %155, null
  br i1 %156, label %202, label %157

157:                                              ; preds = %148
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %162 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %161, i32 0, i32 7
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32 (...)*, i32 (...)** %164, align 8
  %166 = call i32 (...) %165()
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %166, i64 %167)
  %169 = load i32, i32* @TCM_NON_EXISTENT_LUN, align 4
  store i32 %169, i32* %3, align 4
  br label %269

170:                                              ; preds = %157
  %171 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %172 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %170
  %177 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %178 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DMA_NONE, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* @TCM_WRITE_PROTECTED, align 4
  store i32 %183, i32* %3, align 4
  br label %269

184:                                              ; preds = %176, %170
  %185 = load %struct.se_session*, %struct.se_session** %7, align 8
  %186 = getelementptr inbounds %struct.se_session, %struct.se_session* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store %struct.se_lun* %188, %struct.se_lun** %6, align 8
  %189 = load %struct.se_session*, %struct.se_session** %7, align 8
  %190 = getelementptr inbounds %struct.se_session, %struct.se_session* %189, i32 0, i32 0
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %194 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %193, i32 0, i32 6
  store %struct.se_lun* %192, %struct.se_lun** %194, align 8
  %195 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %196 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %195, i32 0, i32 1
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %198 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %199 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %184, %148
  %203 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %204 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %203, i32 0, i32 2
  %205 = load %struct.se_device*, %struct.se_device** %204, align 8
  %206 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %207 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %206, i32 0, i32 4
  store %struct.se_device* %205, %struct.se_device** %207, align 8
  %208 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %209 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %208, i32 0, i32 2
  %210 = load %struct.se_device*, %struct.se_device** %209, align 8
  store %struct.se_device* %210, %struct.se_device** %8, align 8
  %211 = load %struct.se_device*, %struct.se_device** %8, align 8
  %212 = getelementptr inbounds %struct.se_device, %struct.se_device* %211, i32 0, i32 0
  %213 = load i64, i64* %9, align 8
  %214 = call i32 @spin_lock_irqsave(i32* %212, i64 %213)
  %215 = load %struct.se_device*, %struct.se_device** %8, align 8
  %216 = getelementptr inbounds %struct.se_device, %struct.se_device* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %220 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @DMA_TO_DEVICE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %202
  %225 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %226 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.se_device*, %struct.se_device** %8, align 8
  %229 = getelementptr inbounds %struct.se_device, %struct.se_device* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %227
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 4
  br label %251

234:                                              ; preds = %202
  %235 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %236 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %234
  %241 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %242 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.se_device*, %struct.se_device** %8, align 8
  %245 = getelementptr inbounds %struct.se_device, %struct.se_device* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %243
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 4
  br label %250

250:                                              ; preds = %240, %234
  br label %251

251:                                              ; preds = %250, %224
  %252 = load %struct.se_device*, %struct.se_device** %8, align 8
  %253 = getelementptr inbounds %struct.se_device, %struct.se_device* %252, i32 0, i32 0
  %254 = load i64, i64* %9, align 8
  %255 = call i32 @spin_unlock_irqrestore(i32* %253, i64 %254)
  %256 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %257 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %256, i32 0, i32 0
  %258 = load i64, i64* %9, align 8
  %259 = call i32 @spin_lock_irqsave(i32* %257, i64 %258)
  %260 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %261 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %260, i32 0, i32 2
  %262 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %263 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %262, i32 0, i32 1
  %264 = call i32 @list_add_tail(i32* %261, i32* %263)
  %265 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %266 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %265, i32 0, i32 0
  %267 = load i64, i64* %9, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32* %266, i64 %267)
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %251, %182, %160, %73, %17
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
