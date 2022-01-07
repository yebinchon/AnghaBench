; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i64, i64, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64 }
%union.cvmx_gmxx_rxx_int_reg = type { i8* }
%union.cvmx_gmxx_rxx_frm_ctl = type { i8* }
%union.cvmx_ipd_sub_port_fcs = type { i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@global_register_lock = common dso_local global i32 0, align 4
@USE_10MBPS_PREAMBLE_WORKAROUND = common dso_local global i64 0, align 8
@CVMX_IPD_SUB_PORT_FCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: Using 10Mbps with software preamble removal\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: %u Mbps %s duplex, port %2d, queue %2d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: %u Mbps %s duplex, port %2d, POW\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: Link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_rgmii_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_rgmii_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_gmxx_rxx_int_reg, align 8
  %10 = alloca %union.cvmx_gmxx_rxx_frm_ctl, align 8
  %11 = alloca %union.cvmx_ipd_sub_port_fcs, align 8
  %12 = alloca %union.cvmx_gmxx_rxx_frm_ctl, align 8
  %13 = alloca %union.cvmx_ipd_sub_port_fcs, align 8
  %14 = alloca %union.cvmx_gmxx_rxx_int_reg, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %18)
  store %struct.octeon_ethernet* %19, %struct.octeon_ethernet** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @global_register_lock, i64 %20)
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  call void @cvmx_helper_link_get(%struct.TYPE_12__* sret %6, i64 %24)
  %25 = bitcast %struct.TYPE_12__* %5 to i8*
  %26 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %105

33:                                               ; preds = %1
  %34 = load i64, i64* @USE_10MBPS_PREAMBLE_WORKAROUND, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %102

41:                                               ; preds = %36
  %42 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %43 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @INTERFACE(i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @INDEX(i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %50, i32 %51)
  %53 = call i8* @cvmx_read_csr(i32 %52)
  %54 = bitcast %union.cvmx_gmxx_rxx_int_reg* %9 to i8**
  store i8* %53, i8** %54, align 8
  %55 = bitcast %union.cvmx_gmxx_rxx_int_reg* %9 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %60, i32 %61)
  %63 = call i8* @cvmx_read_csr(i32 %62)
  %64 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to i8**
  store i8* %63, i8** %64, align 8
  %65 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %67, i32 %68)
  %70 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %10 to i8**
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cvmx_write_csr(i32 %69, i8* %71)
  %73 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %74 = call i8* @cvmx_read_csr(i32 %73)
  %75 = bitcast %union.cvmx_ipd_sub_port_fcs* %11 to i8**
  store i8* %74, i8** %75, align 8
  %76 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %77 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = shl i64 1, %78
  %80 = xor i64 4294967295, %79
  %81 = bitcast %union.cvmx_ipd_sub_port_fcs* %11 to %struct.TYPE_10__*
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = and i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %88 = bitcast %union.cvmx_ipd_sub_port_fcs* %11 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @cvmx_write_csr(i32 %87, i8* %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %91, i32 %92)
  %94 = bitcast %union.cvmx_gmxx_rxx_int_reg* %9 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @cvmx_write_csr(i32 %93, i8* %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %59, %41
  br label %102

102:                                              ; preds = %101, %36, %33
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* @global_register_lock, i64 %103)
  br label %236

105:                                              ; preds = %1
  %106 = load i64, i64* @USE_10MBPS_PREAMBLE_WORKAROUND, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %158

108:                                              ; preds = %105
  %109 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %110 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @INTERFACE(i64 %111)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %114 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @INDEX(i64 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %117, i32 %118)
  %120 = call i8* @cvmx_read_csr(i32 %119)
  %121 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %12 to i8**
  store i8* %120, i8** %121, align 8
  %122 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %12 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %124, i32 %125)
  %127 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %12 to i8**
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @cvmx_write_csr(i32 %126, i8* %128)
  %130 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %131 = call i8* @cvmx_read_csr(i32 %130)
  %132 = bitcast %union.cvmx_ipd_sub_port_fcs* %13 to i8**
  store i8* %131, i8** %132, align 8
  %133 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %134 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = shl i64 1, %135
  %137 = bitcast %union.cvmx_ipd_sub_port_fcs* %13 to %struct.TYPE_10__*
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = or i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  %143 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %144 = bitcast %union.cvmx_ipd_sub_port_fcs* %13 to i8**
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @cvmx_write_csr(i32 %143, i8* %145)
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %147, i32 %148)
  %150 = call i8* @cvmx_read_csr(i32 %149)
  %151 = bitcast %union.cvmx_gmxx_rxx_int_reg* %14 to i8**
  store i8* %150, i8** %151, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %152, i32 %153)
  %155 = bitcast %union.cvmx_gmxx_rxx_int_reg* %14 to i8**
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @cvmx_write_csr(i32 %154, i8* %156)
  br label %158

158:                                              ; preds = %108, %105
  %159 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %160 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  call void @cvmx_helper_link_autoconf(%struct.TYPE_12__* sret %17, i64 %161)
  %162 = bitcast %struct.TYPE_12__* %5 to i8*
  %163 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 32, i1 false)
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %167 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* @global_register_lock, i64 %168)
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %224

174:                                              ; preds = %158
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = call i64 @netif_carrier_ok(%struct.net_device* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = call i32 @netif_carrier_on(%struct.net_device* %179)
  br label %181

181:                                              ; preds = %178, %174
  %182 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %183 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, -1
  br i1 %185, label %186, label %206

186:                                              ; preds = %181
  %187 = load %struct.net_device*, %struct.net_device** %2, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %199 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %200 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %203 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %192, i8* %198, i64 %201, i32 %204)
  br label %223

206:                                              ; preds = %181
  %207 = load %struct.net_device*, %struct.net_device** %2, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %219 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %220 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %209, i32 %212, i8* %218, i64 %221)
  br label %223

223:                                              ; preds = %206, %186
  br label %236

224:                                              ; preds = %158
  %225 = load %struct.net_device*, %struct.net_device** %2, align 8
  %226 = call i64 @netif_carrier_ok(%struct.net_device* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %224
  %229 = load %struct.net_device*, %struct.net_device** %2, align 8
  %230 = call i32 @netif_carrier_off(%struct.net_device* %229)
  br label %231

231:                                              ; preds = %228, %224
  %232 = load %struct.net_device*, %struct.net_device** %2, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, i32, ...) @DEBUGPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %102, %231, %223
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local void @cvmx_helper_link_get(%struct.TYPE_12__* sret, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_REG(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @DEBUGPRINT(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local void @cvmx_helper_link_autoconf(%struct.TYPE_12__* sret, i64) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
