; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-ipd.h_cvmx_ipd_free_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-ipd.h_cvmx_ipd_free_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ipd_ptr_count = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64 }
%union.cvmx_ipd_ctl_status = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%union.cvmx_ipd_wqe_ptr_valid = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%union.cvmx_ipd_pwp_ptr_fifo_ctl = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64 }
%union.cvmx_ipd_pkt_ptr_valid = type { i8* }
%union.cvmx_ipd_prc_port_ptr_fifo_ctl = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%union.cvmx_ipd_prc_hold_ptr_fifo_ctl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%union.cvmx_pip_sft_rst = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@OCTEON_CN38XX_PASS1 = common dso_local global i32 0, align 4
@OCTEON_CN38XX_PASS2 = common dso_local global i32 0, align 4
@CVMX_IPD_PTR_COUNT = common dso_local global i32 0, align 4
@OCTEON_FEATURE_NO_WPTR = common dso_local global i32 0, align 4
@CVMX_IPD_CTL_STATUS = common dso_local global i32 0, align 4
@CVMX_IPD_WQE_PTR_VALID = common dso_local global i32 0, align 4
@CVMX_FPA_PACKET_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4
@CVMX_IPD_PWP_PTR_FIFO_CTL = common dso_local global i32 0, align 4
@CVMX_IPD_PKT_PTR_VALID = common dso_local global i32 0, align 4
@CVMX_IPD_PRC_PORT_PTR_FIFO_CTL = common dso_local global i32 0, align 4
@CVMX_IPD_PRC_HOLD_PTR_FIFO_CTL = common dso_local global i32 0, align 4
@CVMX_PIP_SFT_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cvmx_ipd_free_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_ipd_free_ptr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.cvmx_ipd_ptr_count, align 8
  %3 = alloca %union.cvmx_ipd_ctl_status, align 8
  %4 = alloca %union.cvmx_ipd_wqe_ptr_valid, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_ipd_pwp_ptr_fifo_ctl, align 8
  %7 = alloca %union.cvmx_ipd_pkt_ptr_valid, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_ipd_prc_port_ptr_fifo_ctl, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.cvmx_ipd_prc_hold_ptr_fifo_ctl, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.cvmx_ipd_pwp_ptr_fifo_ctl, align 8
  %14 = alloca %union.cvmx_ipd_ctl_status, align 8
  %15 = alloca %union.cvmx_pip_sft_rst, align 8
  %16 = load i32, i32* @OCTEON_CN38XX_PASS1, align 4
  %17 = call i32 @OCTEON_IS_MODEL(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %328, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @OCTEON_CN38XX_PASS2, align 4
  %21 = call i32 @OCTEON_IS_MODEL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %328, label %23

23:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  %24 = load i32, i32* @CVMX_IPD_PTR_COUNT, align 4
  %25 = call i8* @cvmx_read_csr(i32 %24)
  %26 = bitcast %union.cvmx_ipd_ptr_count* %2 to i8**
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @OCTEON_FEATURE_NO_WPTR, align 4
  %28 = call i64 @octeon_has_feature(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* @CVMX_IPD_CTL_STATUS, align 4
  %32 = call i8* @cvmx_read_csr(i32 %31)
  %33 = bitcast %union.cvmx_ipd_ctl_status* %3 to i8**
  store i8* %32, i8** %33, align 8
  %34 = bitcast %union.cvmx_ipd_ctl_status* %3 to %struct.TYPE_15__*
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %23
  %41 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load i32, i32* @CVMX_IPD_WQE_PTR_VALID, align 4
  %47 = call i8* @cvmx_read_csr(i32 %46)
  %48 = bitcast %union.cvmx_ipd_wqe_ptr_valid* %4 to i8**
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = bitcast %union.cvmx_ipd_wqe_ptr_valid* %4 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 7
  %57 = call i32 @cvmx_phys_to_ptr(i32 %56)
  %58 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %59 = call i32 @cvmx_fpa_free(i32 %57, i32 %58, i32 0)
  br label %69

60:                                               ; preds = %45
  %61 = bitcast %union.cvmx_ipd_wqe_ptr_valid* %4 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 7
  %66 = call i32 @cvmx_phys_to_ptr(i32 %65)
  %67 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %68 = call i32 @cvmx_fpa_free(i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %60, %51
  br label %70

70:                                               ; preds = %69, %40
  %71 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %141

75:                                               ; preds = %70
  %76 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %77 = call i8* @cvmx_read_csr(i32 %76)
  %78 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to i8**
  store i8* %77, i8** %78, align 8
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %131, %75
  %80 = load i32, i32* %5, align 4
  %81 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %79
  %86 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %93, %94
  %96 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = srem i32 %95, %98
  %100 = add nsw i32 %90, %99
  %101 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %104 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to i8**
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @cvmx_write_csr(i32 %103, i8* %105)
  %107 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %108 = call i8* @cvmx_read_csr(i32 %107)
  %109 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to i8**
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %1, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %85
  %113 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 7
  %118 = call i32 @cvmx_phys_to_ptr(i32 %117)
  %119 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %120 = call i32 @cvmx_fpa_free(i32 %118, i32 %119, i32 0)
  br label %130

121:                                              ; preds = %85
  %122 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 7
  %127 = call i32 @cvmx_phys_to_ptr(i32 %126)
  %128 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %129 = call i32 @cvmx_fpa_free(i32 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %121, %112
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %79

134:                                              ; preds = %79
  %135 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to %struct.TYPE_14__*
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %138 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %6 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @cvmx_write_csr(i32 %137, i8* %139)
  br label %141

141:                                              ; preds = %134, %70
  %142 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load i32, i32* @CVMX_IPD_PKT_PTR_VALID, align 4
  %148 = call i8* @cvmx_read_csr(i32 %147)
  %149 = bitcast %union.cvmx_ipd_pkt_ptr_valid* %7 to i8**
  store i8* %148, i8** %149, align 8
  %150 = bitcast %union.cvmx_ipd_pkt_ptr_valid* %7 to %struct.TYPE_10__*
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 %152, 7
  %154 = call i32 @cvmx_phys_to_ptr(i32 %153)
  %155 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %156 = call i32 @cvmx_fpa_free(i32 %154, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %146, %141
  %158 = load i32, i32* @CVMX_IPD_PRC_PORT_PTR_FIFO_CTL, align 4
  %159 = call i8* @cvmx_read_csr(i32 %158)
  %160 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to i8**
  store i8* %159, i8** %160, align 8
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %192, %157
  %162 = load i32, i32* %8, align 4
  %163 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %195

167:                                              ; preds = %161
  %168 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = srem i32 %170, %173
  %175 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load i32, i32* @CVMX_IPD_PRC_PORT_PTR_FIFO_CTL, align 4
  %178 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to i8**
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @cvmx_write_csr(i32 %177, i8* %179)
  %181 = load i32, i32* @CVMX_IPD_PRC_PORT_PTR_FIFO_CTL, align 4
  %182 = call i8* @cvmx_read_csr(i32 %181)
  %183 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to i8**
  store i8* %182, i8** %183, align 8
  %184 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = shl i32 %187, 7
  %189 = call i32 @cvmx_phys_to_ptr(i32 %188)
  %190 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %191 = call i32 @cvmx_fpa_free(i32 %189, i32 %190, i32 0)
  br label %192

192:                                              ; preds = %167
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %161

195:                                              ; preds = %161
  %196 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to %struct.TYPE_11__*
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  store i32 1, i32* %197, align 4
  %198 = load i32, i32* @CVMX_IPD_PRC_PORT_PTR_FIFO_CTL, align 4
  %199 = bitcast %union.cvmx_ipd_prc_port_ptr_fifo_ctl* %9 to i8**
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @cvmx_write_csr(i32 %198, i8* %200)
  %202 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %255

206:                                              ; preds = %195
  %207 = load i32, i32* @CVMX_IPD_PRC_HOLD_PTR_FIFO_CTL, align 4
  %208 = call i8* @cvmx_read_csr(i32 %207)
  %209 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to i8**
  store i8* %208, i8** %209, align 8
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %245, %206
  %211 = load i32, i32* %10, align 4
  %212 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %248

216:                                              ; preds = %210
  %217 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  %219 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %221, %222
  %224 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = srem i32 %223, %226
  %228 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @CVMX_IPD_PRC_HOLD_PTR_FIFO_CTL, align 4
  %231 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to i8**
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @cvmx_write_csr(i32 %230, i8* %232)
  %234 = load i32, i32* @CVMX_IPD_PRC_HOLD_PTR_FIFO_CTL, align 4
  %235 = call i8* @cvmx_read_csr(i32 %234)
  %236 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to i8**
  store i8* %235, i8** %236, align 8
  %237 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  %241 = shl i32 %240, 7
  %242 = call i32 @cvmx_phys_to_ptr(i32 %241)
  %243 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %244 = call i32 @cvmx_fpa_free(i32 %242, i32 %243, i32 0)
  br label %245

245:                                              ; preds = %216
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %210

248:                                              ; preds = %210
  %249 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to %struct.TYPE_12__*
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load i32, i32* @CVMX_IPD_PRC_HOLD_PTR_FIFO_CTL, align 4
  %252 = bitcast %union.cvmx_ipd_prc_hold_ptr_fifo_ctl* %11 to i8**
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @cvmx_write_csr(i32 %251, i8* %253)
  br label %255

255:                                              ; preds = %248, %195
  %256 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %309

260:                                              ; preds = %255
  %261 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %262 = call i8* @cvmx_read_csr(i32 %261)
  %263 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to i8**
  store i8* %262, i8** %263, align 8
  store i32 0, i32* %12, align 4
  br label %264

264:                                              ; preds = %299, %260
  %265 = load i32, i32* %12, align 4
  %266 = bitcast %union.cvmx_ipd_ptr_count* %2 to %struct.TYPE_13__*
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %302

270:                                              ; preds = %264
  %271 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  %273 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %275, %276
  %278 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = srem i32 %277, %280
  %282 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  %284 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %285 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to i8**
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @cvmx_write_csr(i32 %284, i8* %286)
  %288 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %289 = call i8* @cvmx_read_csr(i32 %288)
  %290 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to i8**
  store i8* %289, i8** %290, align 8
  %291 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = shl i32 %294, 7
  %296 = call i32 @cvmx_phys_to_ptr(i32 %295)
  %297 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %298 = call i32 @cvmx_fpa_free(i32 %296, i32 %297, i32 0)
  br label %299

299:                                              ; preds = %270
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %12, align 4
  br label %264

302:                                              ; preds = %264
  %303 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to %struct.TYPE_14__*
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  store i32 1, i32* %304, align 8
  %305 = load i32, i32* @CVMX_IPD_PWP_PTR_FIFO_CTL, align 4
  %306 = bitcast %union.cvmx_ipd_pwp_ptr_fifo_ctl* %13 to i8**
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @cvmx_write_csr(i32 %305, i8* %307)
  br label %309

309:                                              ; preds = %302, %255
  %310 = load i32, i32* @CVMX_IPD_CTL_STATUS, align 4
  %311 = call i8* @cvmx_read_csr(i32 %310)
  %312 = bitcast %union.cvmx_ipd_ctl_status* %14 to i8**
  store i8* %311, i8** %312, align 8
  %313 = bitcast %union.cvmx_ipd_ctl_status* %14 to %struct.TYPE_15__*
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  store i32 1, i32* %314, align 8
  %315 = load i32, i32* @CVMX_IPD_CTL_STATUS, align 4
  %316 = bitcast %union.cvmx_ipd_ctl_status* %14 to i8**
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @cvmx_write_csr(i32 %315, i8* %317)
  %319 = load i32, i32* @CVMX_PIP_SFT_RST, align 4
  %320 = call i8* @cvmx_read_csr(i32 %319)
  %321 = bitcast %union.cvmx_pip_sft_rst* %15 to i8**
  store i8* %320, i8** %321, align 8
  %322 = bitcast %union.cvmx_pip_sft_rst* %15 to %struct.TYPE_16__*
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 0
  store i32 1, i32* %323, align 8
  %324 = load i32, i32* @CVMX_PIP_SFT_RST, align 4
  %325 = bitcast %union.cvmx_pip_sft_rst* %15 to i8**
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @cvmx_write_csr(i32 %324, i8* %326)
  br label %328

328:                                              ; preds = %309, %19, %0
  ret void
}

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_fpa_free(i32, i32, i32) #1

declare dso_local i32 @cvmx_phys_to_ptr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
