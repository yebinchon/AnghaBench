; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.c_cvmx_pko_config_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pko.c_cvmx_pko_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_mem_queue_ptrs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%union.cvmx_pko_reg_queue_ptrs1 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@CVMX_PKO_NUM_OUTPUT_PORTS = common dso_local global i64 0, align 8
@CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"ERROR: cvmx_pko_config_port: Invalid port %llu\0A\00", align 1
@CVMX_PKO_INVALID_PORT = common dso_local global i32 0, align 4
@CVMX_PKO_MAX_OUTPUT_QUEUES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"ERROR: cvmx_pko_config_port: Invalid queue range %llu\0A\00", align 1
@CVMX_PKO_INVALID_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [115 x i8] c"ERROR: cvmx_pko_config_port: Static priority queues aren't contiguous or don't start at base queue. q: %d, eq: %d\0A\00", align 1
@CVMX_PKO_INVALID_PRIORITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"ERROR: cvmx_pko_config_port: Static priority queues don't start at base queue. sq: %d\0A\00", align 1
@CVMX_PKO_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"ERROR: cvmx_pko_config_port: Invalid priority %llu\0A\00", align 1
@CVMX_PKO_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i64 0, align 8
@CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"ERROR: cvmx_pko_config_port: Unable to allocate output buffer.\0A\00", align 1
@CVMX_PKO_NO_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"ERROR: cvmx_pko_config_port: Port already setup.\0A\00", align 1
@CVMX_PKO_PORT_ALREADY_SETUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [67 x i8] c"ERROR: cvmx_pko_config_port: Command queue initialization failed.\0A\00", align 1
@CVMX_PKO_CMD_QUEUE_INIT_ERROR = common dso_local global i32 0, align 4
@CVMX_SYNCWS = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_QUEUE_PTRS1 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_QUEUE_PTRS = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_pko_config_port(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.cvmx_pko_mem_queue_ptrs, align 8
  %13 = alloca %union.cvmx_pko_reg_queue_ptrs1, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @CVMX_PKO_NUM_OUTPUT_PORTS, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @CVMX_PKO_INVALID_PORT, align 4
  store i32 %28, i32* %5, align 4
  br label %302

29:                                               ; preds = %21, %4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @CVMX_PKO_MAX_OUTPUT_QUEUES, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @CVMX_PKO_INVALID_QUEUE, align 4
  store i32 %40, i32* %5, align 4
  br label %302

41:                                               ; preds = %29
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %128

45:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %117, %45
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %120

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 128
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %11, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %53, %50
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 128
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  br label %96

81:                                               ; preds = %74, %68, %65, %62
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %89, 1
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %87, %84, %81
  br label %96

96:                                               ; preds = %95, %77
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i64, i64* %11, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %15, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i64*, i64** %9, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 128
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i64, i64* %11, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %15, align 4
  %114 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %115, i32* %5, align 4
  br label %302

116:                                              ; preds = %104, %99, %96
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %46

120:                                              ; preds = %46
  %121 = load i32, i32* %14, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %126, i32* %5, align 4
  br label %302

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %41
  %129 = load i32, i32* @CVMX_PKO_SUCCESS, align 4
  store i32 %129, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %130

130:                                              ; preds = %297, %128
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %300

134:                                              ; preds = %130
  store i64* null, i64** %16, align 8
  %135 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to i64*
  store i64 0, i64* %135, align 8
  %136 = load i64, i64* %11, align 8
  %137 = ashr i64 %136, 3
  %138 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to %struct.TYPE_3__*
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %140, %141
  %143 = ashr i64 %142, 7
  %144 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to %struct.TYPE_3__*
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to i64*
  store i64 0, i64* %146, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %8, align 8
  %149 = sub nsw i64 %148, 1
  %150 = icmp eq i64 %147, %149
  %151 = zext i1 %150 to i32
  %152 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i64, i64* %11, align 8
  %155 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 8
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %6, align 8
  %158 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 7
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* %11, align 8
  %162 = add nsw i64 %160, %161
  %163 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 6
  store i64 %162, i64* %164, align 8
  %165 = call i32 (...) @cvmx_octeon_is_pass1()
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %187, label %167

167:                                              ; preds = %134
  %168 = load i32, i32* %14, align 4
  %169 = icmp sge i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i64, i64* %11, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %15, align 4
  %176 = icmp sle i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i64, i64* %11, align 8
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* %15, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %167, %134
  %188 = load i64*, i64** %9, align 8
  %189 = load i64, i64* %11, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  switch i32 %192, label %227 [
    i32 0, label %193
    i32 1, label %196
    i32 2, label %199
    i32 3, label %202
    i32 4, label %205
    i32 5, label %208
    i32 6, label %211
    i32 7, label %214
    i32 8, label %217
    i32 128, label %220
  ]

193:                                              ; preds = %187
  %194 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  store i32 0, i32* %195, align 8
  br label %236

196:                                              ; preds = %187
  %197 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 4
  store i32 1, i32* %198, align 8
  br label %236

199:                                              ; preds = %187
  %200 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  store i32 17, i32* %201, align 8
  br label %236

202:                                              ; preds = %187
  %203 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  store i32 73, i32* %204, align 8
  br label %236

205:                                              ; preds = %187
  %206 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  store i32 85, i32* %207, align 8
  br label %236

208:                                              ; preds = %187
  %209 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  store i32 87, i32* %210, align 8
  br label %236

211:                                              ; preds = %187
  %212 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32 119, i32* %213, align 8
  br label %236

214:                                              ; preds = %187
  %215 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  store i32 127, i32* %216, align 8
  br label %236

217:                                              ; preds = %187
  %218 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  store i32 255, i32* %219, align 8
  br label %236

220:                                              ; preds = %187
  %221 = call i32 (...) @cvmx_octeon_is_pass1()
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  store i32 255, i32* %225, align 8
  br label %236

226:                                              ; preds = %220
  br label %227

227:                                              ; preds = %187, %226
  %228 = load i64*, i64** %9, align 8
  %229 = load i64, i64* %11, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %231)
  %233 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 4
  store i32 255, i32* %234, align 8
  %235 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %235, i32* %10, align 4
  br label %236

236:                                              ; preds = %227, %223, %217, %214, %211, %208, %205, %202, %199, %196, %193
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %279

240:                                              ; preds = %236
  %241 = load i64, i64* %7, align 8
  %242 = load i64, i64* %11, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @CVMX_CMD_QUEUE_PKO(i64 %243)
  %245 = load i32, i32* @CVMX_PKO_MAX_QUEUE_DEPTH, align 4
  %246 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 4
  %247 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 8
  %248 = load i32, i32* @CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST, align 4
  %249 = mul nsw i32 %248, 8
  %250 = sext i32 %249 to i64
  %251 = sub nsw i64 %247, %250
  %252 = call i32 @cvmx_cmd_queue_initialize(i32 %244, i32 %245, i32 %246, i64 %251)
  store i32 %252, i32* %17, align 4
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %240
  %257 = load i32, i32* %17, align 4
  switch i32 %257, label %265 [
    i32 129, label %258
    i32 131, label %261
    i32 130, label %264
  ]

258:                                              ; preds = %256
  %259 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %260 = load i32, i32* @CVMX_PKO_NO_MEMORY, align 4
  store i32 %260, i32* %5, align 4
  br label %302

261:                                              ; preds = %256
  %262 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %263 = load i32, i32* @CVMX_PKO_PORT_ALREADY_SETUP, align 4
  store i32 %263, i32* %5, align 4
  br label %302

264:                                              ; preds = %256
  br label %265

265:                                              ; preds = %256, %264
  %266 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %267 = load i32, i32* @CVMX_PKO_CMD_QUEUE_INIT_ERROR, align 4
  store i32 %267, i32* %5, align 4
  br label %302

268:                                              ; preds = %240
  %269 = load i64, i64* %7, align 8
  %270 = load i64, i64* %11, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @CVMX_CMD_QUEUE_PKO(i64 %271)
  %273 = call i64 @cvmx_cmd_queue_buffer(i32 %272)
  %274 = inttoptr i64 %273 to i64*
  store i64* %274, i64** %16, align 8
  %275 = load i64*, i64** %16, align 8
  %276 = call i32 @cvmx_ptr_to_phys(i64* %275)
  %277 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 5
  store i32 %276, i32* %278, align 4
  br label %282

279:                                              ; preds = %236
  %280 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 5
  store i32 0, i32* %281, align 4
  br label %282

282:                                              ; preds = %279, %268
  %283 = load i32, i32* @CVMX_SYNCWS, align 4
  %284 = load i32, i32* @OCTEON_CN3XXX, align 4
  %285 = call i32 @OCTEON_IS_MODEL(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* @CVMX_PKO_REG_QUEUE_PTRS1, align 4
  %289 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to i64*
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @cvmx_write_csr(i32 %288, i64 %290)
  br label %292

292:                                              ; preds = %287, %282
  %293 = load i32, i32* @CVMX_PKO_MEM_QUEUE_PTRS, align 4
  %294 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @cvmx_write_csr(i32 %293, i64 %295)
  br label %297

297:                                              ; preds = %292
  %298 = load i64, i64* %11, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %11, align 8
  br label %130

300:                                              ; preds = %130
  %301 = load i32, i32* %10, align 4
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %300, %265, %261, %258, %123, %110, %35, %25
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_octeon_is_pass1(...) #1

declare dso_local i32 @cvmx_cmd_queue_initialize(i32, i32, i32, i64) #1

declare dso_local i32 @CVMX_CMD_QUEUE_PKO(i64) #1

declare dso_local i64 @cvmx_cmd_queue_buffer(i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i64*) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
