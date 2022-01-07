; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c_cvmx_helper_dump_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-util.c_cvmx_helper_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %union.cvmx_buf_ptr, %struct.TYPE_12__, i32, i32, i32 }
%union.cvmx_buf_ptr = type { i64, [16 x i8] }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%union.cvmx_ipd_wqe_fpa_queue = type { i8* }
%union.cvmx_pip_ip_offset = type { i8* }
%union.cvmx_pip_gbl_cfg = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Packet Length:   %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"    Input Port:  %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    QoS:         %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"    Buffers:     %u\0A\00", align 1
@CVMX_IPD_WQE_FPA_QUEUE = common dso_local global i32 0, align 4
@CVMX_PIP_IP_OFFSET = common dso_local global i32 0, align 4
@CVMX_PIP_GBL_CFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"    Buffer Start:%llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"    Buffer I   : %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"    Buffer Back: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"    Buffer Pool: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"    Buffer Data: %llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"    Buffer Size: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_dump_packet(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.cvmx_buf_ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.cvmx_ipd_wqe_fpa_queue, align 8
  %10 = alloca %union.cvmx_pip_ip_offset, align 8
  %11 = alloca %union.cvmx_pip_gbl_cfg, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %107

36:                                               ; preds = %1
  %37 = load i32, i32* @CVMX_IPD_WQE_FPA_QUEUE, align 4
  %38 = call i8* @cvmx_read_csr(i32 %37)
  %39 = bitcast %union.cvmx_ipd_wqe_fpa_queue* %9 to i8**
  store i8* %38, i8** %39, align 8
  %40 = bitcast %union.cvmx_buf_ptr* %5 to i64*
  store i64 0, i64* %40, align 8
  %41 = bitcast %union.cvmx_ipd_wqe_fpa_queue* %9 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 128, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cvmx_ptr_to_phys(i32 %50)
  %52 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %36
  %65 = load i32, i32* @CVMX_PIP_IP_OFFSET, align 4
  %66 = call i8* @cvmx_read_csr(i32 %65)
  %67 = bitcast %union.cvmx_pip_ip_offset* %10 to i8**
  store i8* %66, i8** %67, align 8
  %68 = bitcast %union.cvmx_pip_ip_offset* %10 to %struct.TYPE_10__*
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 3
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %71, %76
  %78 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, 1
  %88 = shl i32 %87, 2
  %89 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %106

93:                                               ; preds = %36
  %94 = load i32, i32* @CVMX_PIP_GBL_CFG, align 4
  %95 = call i8* @cvmx_read_csr(i32 %94)
  %96 = bitcast %union.cvmx_pip_gbl_cfg* %11 to i8**
  store i8* %95, i8** %96, align 8
  %97 = bitcast %union.cvmx_pip_gbl_cfg* %11 to %struct.TYPE_13__*
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %93, %64
  br label %112

107:                                              ; preds = %1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %111 = bitcast %union.cvmx_buf_ptr* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  br label %112

112:                                              ; preds = %107, %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %207, %112
  %117 = load i64, i64* %4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %208

119:                                              ; preds = %116
  %120 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 7
  %124 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  %128 = shl i32 %127, 7
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  %132 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %147)
  %149 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %154 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @cvmx_phys_to_ptr(i32 %156)
  %158 = inttoptr i64 %157 to i64*
  store i64* %158, i64** %7, align 8
  %159 = load i64*, i64** %7, align 8
  %160 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %159, i64 %163
  store i64* %164, i64** %8, align 8
  store i64 0, i64* %3, align 8
  br label %165

165:                                              ; preds = %193, %119
  %166 = load i64*, i64** %7, align 8
  %167 = load i64*, i64** %8, align 8
  %168 = icmp ult i64* %166, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %165
  %170 = load i64, i64* %4, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %194

173:                                              ; preds = %169
  %174 = load i64, i64* %4, align 8
  %175 = add nsw i64 %174, -1
  store i64 %175, i64* %4, align 8
  br label %176

176:                                              ; preds = %173
  %177 = load i64*, i64** %7, align 8
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %179)
  %181 = load i64*, i64** %7, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 1
  store i64* %182, i64** %7, align 8
  %183 = load i64, i64* %4, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load i64, i64* %3, align 8
  %187 = icmp eq i64 %186, 7
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %193

190:                                              ; preds = %185, %176
  %191 = load i64, i64* %3, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %3, align 8
  br label %193

193:                                              ; preds = %190, %188
  br label %165

194:                                              ; preds = %172, %165
  %195 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %196 = load i64, i64* %4, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = bitcast %union.cvmx_buf_ptr* %5 to %struct.TYPE_14__*
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 %201, 8
  %203 = call i64 @cvmx_phys_to_ptr(i32 %202)
  %204 = inttoptr i64 %203 to %union.cvmx_buf_ptr*
  %205 = bitcast %union.cvmx_buf_ptr* %5 to i8*
  %206 = bitcast %union.cvmx_buf_ptr* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %205, i8* align 8 %206, i64 24, i1 false)
  br label %207

207:                                              ; preds = %198, %194
  br label %116

208:                                              ; preds = %116
  ret i32 0
}

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i32) #1

declare dso_local i64 @likely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
