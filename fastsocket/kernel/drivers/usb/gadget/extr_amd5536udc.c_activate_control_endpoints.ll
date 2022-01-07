; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_activate_control_endpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_activate_control_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"activate_control_endpoints\0A\00", align 1
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@UDC_EPCTL_F = common dso_local global i32 0, align 4
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UDC_FS_EPIN0_BUFF_SIZE = common dso_local global i32 0, align 4
@UDC_EPIN_BUFF_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UDC_EPIN0_BUFF_SIZE = common dso_local global i32 0, align 4
@UDC_FS_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_FS_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_CSR_NE_MAX_PKT = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@UDC_DMA_OUT_STS_L = common dso_local global i32 0, align 4
@udc_timer = common dso_local global i32 0, align 4
@set_rde = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@udc_pollstall_timer = common dso_local global i32 0, align 4
@UDC_DEVCTL_MODE = common dso_local global i32 0, align 4
@UDC_DEVCTL_RDE = common dso_local global i32 0, align 4
@UDC_DEVCTL_TDE = common dso_local global i32 0, align 4
@use_dma_bufferfill_mode = common dso_local global i64 0, align 8
@UDC_DEVCTL_BF = common dso_local global i32 0, align 4
@use_dma_ppb_du = common dso_local global i64 0, align 8
@UDC_DEVCTL_DU = common dso_local global i32 0, align 4
@UDC_EPCTL_CNAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @activate_control_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_control_endpoints(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %2, align 8
  %4 = load %struct.udc*, %struct.udc** %2, align 8
  %5 = call i32 @DBG(%struct.udc* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = getelementptr inbounds %struct.udc, %struct.udc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %9 = load i64, i64* @UDC_EP0IN_IX, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @UDC_EPCTL_F, align 4
  %16 = call i32 @AMD_BIT(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.udc*, %struct.udc** %2, align 8
  %21 = getelementptr inbounds %struct.udc, %struct.udc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load i64, i64* @UDC_EP0IN_IX, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = call i32 @writel(i32 %19, i32* %27)
  %29 = load %struct.udc*, %struct.udc** %2, align 8
  %30 = getelementptr inbounds %struct.udc, %struct.udc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = load i64, i64* @UDC_EP0IN_IX, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.udc*, %struct.udc** %2, align 8
  %36 = getelementptr inbounds %struct.udc, %struct.udc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.udc*, %struct.udc** %2, align 8
  %42 = getelementptr inbounds %struct.udc, %struct.udc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i64, i64* @UDC_EP0IN_IX, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = call i32 @readl(i32* %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.udc*, %struct.udc** %2, align 8
  %51 = getelementptr inbounds %struct.udc, %struct.udc* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_SPEED_FULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @UDC_FS_EPIN0_BUFF_SIZE, align 4
  %59 = load i32, i32* @UDC_EPIN_BUFF_SIZE, align 4
  %60 = call i32 @AMD_ADDBITS(i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %1
  %62 = load %struct.udc*, %struct.udc** %2, align 8
  %63 = getelementptr inbounds %struct.udc, %struct.udc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USB_SPEED_HIGH, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @UDC_EPIN0_BUFF_SIZE, align 4
  %71 = load i32, i32* @UDC_EPIN_BUFF_SIZE, align 4
  %72 = call i32 @AMD_ADDBITS(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %61
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.udc*, %struct.udc** %2, align 8
  %77 = getelementptr inbounds %struct.udc, %struct.udc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i64, i64* @UDC_EP0IN_IX, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = call i32 @writel(i32 %75, i32* %83)
  %85 = load %struct.udc*, %struct.udc** %2, align 8
  %86 = getelementptr inbounds %struct.udc, %struct.udc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i64, i64* @UDC_EP0IN_IX, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = call i32 @readl(i32* %92)
  store i32 %93, i32* %3, align 4
  %94 = load %struct.udc*, %struct.udc** %2, align 8
  %95 = getelementptr inbounds %struct.udc, %struct.udc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @USB_SPEED_FULL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %74
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @UDC_FS_EP0IN_MAX_PKT_SIZE, align 4
  %103 = load i32, i32* @UDC_EP_MAX_PKT_SIZE, align 4
  %104 = call i32 @AMD_ADDBITS(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %3, align 4
  br label %118

105:                                              ; preds = %74
  %106 = load %struct.udc*, %struct.udc** %2, align 8
  %107 = getelementptr inbounds %struct.udc, %struct.udc* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @USB_SPEED_HIGH, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @UDC_EP0IN_MAX_PKT_SIZE, align 4
  %115 = load i32, i32* @UDC_EP_MAX_PKT_SIZE, align 4
  %116 = call i32 @AMD_ADDBITS(i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %105
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.udc*, %struct.udc** %2, align 8
  %121 = getelementptr inbounds %struct.udc, %struct.udc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i64, i64* @UDC_EP0IN_IX, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = call i32 @writel(i32 %119, i32* %127)
  %129 = load %struct.udc*, %struct.udc** %2, align 8
  %130 = getelementptr inbounds %struct.udc, %struct.udc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = call i32 @readl(i32* %136)
  store i32 %137, i32* %3, align 4
  %138 = load %struct.udc*, %struct.udc** %2, align 8
  %139 = getelementptr inbounds %struct.udc, %struct.udc* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @USB_SPEED_FULL, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %118
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @UDC_FS_EP0OUT_MAX_PKT_SIZE, align 4
  %147 = load i32, i32* @UDC_EP_MAX_PKT_SIZE, align 4
  %148 = call i32 @AMD_ADDBITS(i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %162

149:                                              ; preds = %118
  %150 = load %struct.udc*, %struct.udc** %2, align 8
  %151 = getelementptr inbounds %struct.udc, %struct.udc* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @USB_SPEED_HIGH, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @UDC_EP0OUT_MAX_PKT_SIZE, align 4
  %159 = load i32, i32* @UDC_EP_MAX_PKT_SIZE, align 4
  %160 = call i32 @AMD_ADDBITS(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161, %144
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.udc*, %struct.udc** %2, align 8
  %165 = getelementptr inbounds %struct.udc, %struct.udc* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = call i32 @writel(i32 %163, i32* %171)
  %173 = load %struct.udc*, %struct.udc** %2, align 8
  %174 = getelementptr inbounds %struct.udc, %struct.udc* %173, i32 0, i32 2
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = call i32 @readl(i32* %178)
  store i32 %179, i32* %3, align 4
  %180 = load %struct.udc*, %struct.udc** %2, align 8
  %181 = getelementptr inbounds %struct.udc, %struct.udc* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @USB_SPEED_FULL, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %162
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @UDC_FS_EP0OUT_MAX_PKT_SIZE, align 4
  %189 = load i32, i32* @UDC_CSR_NE_MAX_PKT, align 4
  %190 = call i32 @AMD_ADDBITS(i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %3, align 4
  br label %204

191:                                              ; preds = %162
  %192 = load %struct.udc*, %struct.udc** %2, align 8
  %193 = getelementptr inbounds %struct.udc, %struct.udc* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @USB_SPEED_HIGH, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @UDC_EP0OUT_MAX_PKT_SIZE, align 4
  %201 = load i32, i32* @UDC_CSR_NE_MAX_PKT, align 4
  %202 = call i32 @AMD_ADDBITS(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %198, %191
  br label %204

204:                                              ; preds = %203, %186
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.udc*, %struct.udc** %2, align 8
  %207 = getelementptr inbounds %struct.udc, %struct.udc* %206, i32 0, i32 2
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = call i32 @writel(i32 %205, i32* %211)
  %213 = load i64, i64* @use_dma, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %312

215:                                              ; preds = %204
  %216 = load i32, i32* @UDC_DMA_OUT_STS_L, align 4
  %217 = call i32 @AMD_BIT(i32 %216)
  %218 = load %struct.udc*, %struct.udc** %2, align 8
  %219 = getelementptr inbounds %struct.udc, %struct.udc* %218, i32 0, i32 0
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %217
  store i32 %227, i32* %225, align 4
  %228 = load %struct.udc*, %struct.udc** %2, align 8
  %229 = getelementptr inbounds %struct.udc, %struct.udc* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.udc*, %struct.udc** %2, align 8
  %236 = getelementptr inbounds %struct.udc, %struct.udc* %235, i32 0, i32 0
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = call i32 @writel(i32 %234, i32* %242)
  %244 = load %struct.udc*, %struct.udc** %2, align 8
  %245 = getelementptr inbounds %struct.udc, %struct.udc* %244, i32 0, i32 0
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %245, align 8
  %247 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.udc*, %struct.udc** %2, align 8
  %252 = getelementptr inbounds %struct.udc, %struct.udc* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = call i32 @writel(i32 %250, i32* %258)
  %260 = call i64 @timer_pending(i32* @udc_timer)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %215
  store i64 0, i64* @set_rde, align 8
  %263 = load i64, i64* @jiffies, align 8
  %264 = sub nsw i64 %263, 1
  %265 = call i32 @mod_timer(i32* @udc_timer, i64 %264)
  br label %266

266:                                              ; preds = %262, %215
  %267 = call i64 @timer_pending(i32* @udc_pollstall_timer)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i64, i64* @jiffies, align 8
  %271 = sub nsw i64 %270, 1
  %272 = call i32 @mod_timer(i32* @udc_pollstall_timer, i64 %271)
  br label %273

273:                                              ; preds = %269, %266
  %274 = load %struct.udc*, %struct.udc** %2, align 8
  %275 = getelementptr inbounds %struct.udc, %struct.udc* %274, i32 0, i32 1
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = call i32 @readl(i32* %277)
  store i32 %278, i32* %3, align 4
  %279 = load i32, i32* @UDC_DEVCTL_MODE, align 4
  %280 = call i32 @AMD_BIT(i32 %279)
  %281 = load i32, i32* @UDC_DEVCTL_RDE, align 4
  %282 = call i32 @AMD_BIT(i32 %281)
  %283 = or i32 %280, %282
  %284 = load i32, i32* @UDC_DEVCTL_TDE, align 4
  %285 = call i32 @AMD_BIT(i32 %284)
  %286 = or i32 %283, %285
  %287 = load i32, i32* %3, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %3, align 4
  %289 = load i64, i64* @use_dma_bufferfill_mode, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %273
  %292 = load i32, i32* @UDC_DEVCTL_BF, align 4
  %293 = call i32 @AMD_BIT(i32 %292)
  %294 = load i32, i32* %3, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %3, align 4
  br label %305

296:                                              ; preds = %273
  %297 = load i64, i64* @use_dma_ppb_du, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load i32, i32* @UDC_DEVCTL_DU, align 4
  %301 = call i32 @AMD_BIT(i32 %300)
  %302 = load i32, i32* %3, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %299, %296
  br label %305

305:                                              ; preds = %304, %291
  %306 = load i32, i32* %3, align 4
  %307 = load %struct.udc*, %struct.udc** %2, align 8
  %308 = getelementptr inbounds %struct.udc, %struct.udc* %307, i32 0, i32 1
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = call i32 @writel(i32 %306, i32* %310)
  br label %312

312:                                              ; preds = %305, %204
  %313 = load %struct.udc*, %struct.udc** %2, align 8
  %314 = getelementptr inbounds %struct.udc, %struct.udc* %313, i32 0, i32 0
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  %316 = load i64, i64* @UDC_EP0IN_IX, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 4
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = call i32 @readl(i32* %320)
  store i32 %321, i32* %3, align 4
  %322 = load i32, i32* @UDC_EPCTL_CNAK, align 4
  %323 = call i32 @AMD_BIT(i32 %322)
  %324 = load i32, i32* %3, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %3, align 4
  %326 = load i32, i32* %3, align 4
  %327 = load %struct.udc*, %struct.udc** %2, align 8
  %328 = getelementptr inbounds %struct.udc, %struct.udc* %327, i32 0, i32 0
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %328, align 8
  %330 = load i64, i64* @UDC_EP0IN_IX, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 4
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = call i32 @writel(i32 %326, i32* %334)
  %336 = load %struct.udc*, %struct.udc** %2, align 8
  %337 = getelementptr inbounds %struct.udc, %struct.udc* %336, i32 0, i32 0
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %337, align 8
  %339 = load i64, i64* @UDC_EP0IN_IX, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 3
  store i64 0, i64* %341, align 8
  %342 = load %struct.udc*, %struct.udc** %2, align 8
  %343 = getelementptr inbounds %struct.udc, %struct.udc* %342, i32 0, i32 0
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %343, align 8
  %345 = load i64, i64* @UDC_EP0IN_IX, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i64 %345
  %347 = load i64, i64* @UDC_EP0IN_IX, align 8
  %348 = call i32 @UDC_QUEUE_CNAK(%struct.TYPE_12__* %346, i64 %347)
  %349 = load %struct.udc*, %struct.udc** %2, align 8
  %350 = getelementptr inbounds %struct.udc, %struct.udc* %349, i32 0, i32 0
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %350, align 8
  %352 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = call i32 @readl(i32* %356)
  store i32 %357, i32* %3, align 4
  %358 = load i32, i32* @UDC_EPCTL_CNAK, align 4
  %359 = call i32 @AMD_BIT(i32 %358)
  %360 = load i32, i32* %3, align 4
  %361 = or i32 %360, %359
  store i32 %361, i32* %3, align 4
  %362 = load i32, i32* %3, align 4
  %363 = load %struct.udc*, %struct.udc** %2, align 8
  %364 = getelementptr inbounds %struct.udc, %struct.udc* %363, i32 0, i32 0
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %364, align 8
  %366 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 4
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 0
  %371 = call i32 @writel(i32 %362, i32* %370)
  %372 = load %struct.udc*, %struct.udc** %2, align 8
  %373 = getelementptr inbounds %struct.udc, %struct.udc* %372, i32 0, i32 0
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %373, align 8
  %375 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 3
  store i64 0, i64* %377, align 8
  %378 = load %struct.udc*, %struct.udc** %2, align 8
  %379 = getelementptr inbounds %struct.udc, %struct.udc* %378, i32 0, i32 0
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %379, align 8
  %381 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i64 %381
  %383 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %384 = call i32 @UDC_QUEUE_CNAK(%struct.TYPE_12__* %382, i64 %383)
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @AMD_ADDBITS(i32, i32, i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @UDC_QUEUE_CNAK(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
