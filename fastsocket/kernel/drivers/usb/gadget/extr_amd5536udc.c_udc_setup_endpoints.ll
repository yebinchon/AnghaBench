; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_setup_endpoints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_setup_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i64, i64, i64, %struct.TYPE_7__, %struct.udc_ep*, %struct.TYPE_8__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.udc_ep = type { i64, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__*, i32*, i32, i32, i32, %struct.udc* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"udc_setup_endpoints()\0A\00", align 1
@UDC_DEVSTS_ENUM_SPEED = common dso_local global i32 0, align 4
@UDC_DEVSTS_ENUM_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UDC_DEVSTS_ENUM_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UDC_EP_NUM = common dso_local global i64 0, align 8
@ep_string = common dso_local global i32* null, align 8
@UDC_EPIN_NUM = common dso_local global i64 0, align 8
@UDC_TXFIFO_SIZE = common dso_local global i32 0, align 4
@UDC_RXFIFO_SIZE = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@UDC_EP0IN_IX = common dso_local global i64 0, align 8
@UDC_EP0OUT_IX = common dso_local global i64 0, align 8
@UDC_EPCTL_SNAK = common dso_local global i32 0, align 4
@UDC_FS_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_FS_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0IN_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@UDC_EP0OUT_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*)* @udc_setup_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_setup_endpoints(%struct.udc* %0) #0 {
  %2 = alloca %struct.udc*, align 8
  %3 = alloca %struct.udc_ep*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.udc* %0, %struct.udc** %2, align 8
  %6 = load %struct.udc*, %struct.udc** %2, align 8
  %7 = call i32 @DBG(%struct.udc* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.udc*, %struct.udc** %2, align 8
  %9 = getelementptr inbounds %struct.udc, %struct.udc* %8, i32 0, i32 5
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i64 @readl(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @UDC_DEVSTS_ENUM_SPEED, align 4
  %15 = call i64 @AMD_GETBITS(i64 %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @UDC_DEVSTS_ENUM_SPEED_HIGH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i64, i64* @USB_SPEED_HIGH, align 8
  %21 = load %struct.udc*, %struct.udc** %2, align 8
  %22 = getelementptr inbounds %struct.udc, %struct.udc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  br label %34

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @UDC_DEVSTS_ENUM_SPEED_FULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* @USB_SPEED_FULL, align 8
  %30 = load %struct.udc*, %struct.udc** %2, align 8
  %31 = getelementptr inbounds %struct.udc, %struct.udc* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %19
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %149, %34
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @UDC_EP_NUM, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %152

39:                                               ; preds = %35
  %40 = load %struct.udc*, %struct.udc** %2, align 8
  %41 = getelementptr inbounds %struct.udc, %struct.udc* %40, i32 0, i32 4
  %42 = load %struct.udc_ep*, %struct.udc_ep** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %42, i64 %43
  store %struct.udc_ep* %44, %struct.udc_ep** %3, align 8
  %45 = load %struct.udc*, %struct.udc** %2, align 8
  %46 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %47 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %46, i32 0, i32 10
  store %struct.udc* %45, %struct.udc** %47, align 8
  %48 = load i32*, i32** @ep_string, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %53 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %57 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.udc*, %struct.udc** %2, align 8
  %59 = getelementptr inbounds %struct.udc, %struct.udc* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %62 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @UDC_EPIN_NUM, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %39
  %67 = load i32, i32* @UDC_TXFIFO_SIZE, align 4
  %68 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %69 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %71 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  br label %78

72:                                               ; preds = %39
  %73 = load i32, i32* @UDC_RXFIFO_SIZE, align 4
  %74 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %75 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %77 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.udc*, %struct.udc** %2, align 8
  %80 = getelementptr inbounds %struct.udc, %struct.udc* %79, i32 0, i32 6
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %85 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %84, i32 0, i32 5
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %85, align 8
  %86 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %87 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %78
  %91 = load %struct.udc*, %struct.udc** %2, align 8
  %92 = getelementptr inbounds %struct.udc, %struct.udc* %91, i32 0, i32 5
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %95 = call i32 @ep_init(%struct.TYPE_8__* %93, %struct.udc_ep* %94)
  br label %96

96:                                               ; preds = %90, %78
  %97 = load i64, i64* @use_dma, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %96
  %100 = load %struct.udc*, %struct.udc** %2, align 8
  %101 = getelementptr inbounds %struct.udc, %struct.udc* %100, i32 0, i32 5
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.udc_ep*, %struct.udc_ep** %3, align 8
  %105 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %104, i32 0, i32 6
  store i32* %103, i32** %105, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @UDC_EP0IN_IX, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %99
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @UDC_EPIN_NUM, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %113
  %118 = load %struct.udc*, %struct.udc** %2, align 8
  %119 = getelementptr inbounds %struct.udc, %struct.udc* %118, i32 0, i32 4
  %120 = load %struct.udc_ep*, %struct.udc_ep** %119, align 8
  %121 = load i64, i64* %4, align 8
  %122 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %120, i64 %121
  %123 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %122, i32 0, i32 5
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = call i64 @readl(i32* %125)
  store i64 %126, i64* %5, align 8
  %127 = load i32, i32* @UDC_EPCTL_SNAK, align 4
  %128 = call i64 @AMD_BIT(i32 %127)
  %129 = load i64, i64* %5, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %5, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.udc*, %struct.udc** %2, align 8
  %133 = getelementptr inbounds %struct.udc, %struct.udc* %132, i32 0, i32 4
  %134 = load %struct.udc_ep*, %struct.udc_ep** %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %134, i64 %135
  %137 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %136, i32 0, i32 5
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = call i32 @writel(i64 %131, i32* %139)
  %141 = load %struct.udc*, %struct.udc** %2, align 8
  %142 = getelementptr inbounds %struct.udc, %struct.udc* %141, i32 0, i32 4
  %143 = load %struct.udc_ep*, %struct.udc_ep** %142, align 8
  %144 = load i64, i64* %4, align 8
  %145 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %143, i64 %144
  %146 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %145, i32 0, i32 2
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %117, %113, %109, %99
  br label %148

148:                                              ; preds = %147, %96
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %4, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %4, align 8
  br label %35

152:                                              ; preds = %35
  %153 = load %struct.udc*, %struct.udc** %2, align 8
  %154 = getelementptr inbounds %struct.udc, %struct.udc* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @USB_SPEED_FULL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load i32, i32* @UDC_FS_EP0IN_MAX_PKT_SIZE, align 4
  %161 = load %struct.udc*, %struct.udc** %2, align 8
  %162 = getelementptr inbounds %struct.udc, %struct.udc* %161, i32 0, i32 4
  %163 = load %struct.udc_ep*, %struct.udc_ep** %162, align 8
  %164 = load i64, i64* @UDC_EP0IN_IX, align 8
  %165 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %163, i64 %164
  %166 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %160, i32* %167, align 4
  %168 = load i32, i32* @UDC_FS_EP0OUT_MAX_PKT_SIZE, align 4
  %169 = load %struct.udc*, %struct.udc** %2, align 8
  %170 = getelementptr inbounds %struct.udc, %struct.udc* %169, i32 0, i32 4
  %171 = load %struct.udc_ep*, %struct.udc_ep** %170, align 8
  %172 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %173 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %171, i64 %172
  %174 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store i32 %168, i32* %175, align 4
  br label %201

176:                                              ; preds = %152
  %177 = load %struct.udc*, %struct.udc** %2, align 8
  %178 = getelementptr inbounds %struct.udc, %struct.udc* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @USB_SPEED_HIGH, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %176
  %184 = load i32, i32* @UDC_EP0IN_MAX_PKT_SIZE, align 4
  %185 = load %struct.udc*, %struct.udc** %2, align 8
  %186 = getelementptr inbounds %struct.udc, %struct.udc* %185, i32 0, i32 4
  %187 = load %struct.udc_ep*, %struct.udc_ep** %186, align 8
  %188 = load i64, i64* @UDC_EP0IN_IX, align 8
  %189 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %187, i64 %188
  %190 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* @UDC_EP0OUT_MAX_PKT_SIZE, align 4
  %193 = load %struct.udc*, %struct.udc** %2, align 8
  %194 = getelementptr inbounds %struct.udc, %struct.udc* %193, i32 0, i32 4
  %195 = load %struct.udc_ep*, %struct.udc_ep** %194, align 8
  %196 = load i64, i64* @UDC_EP0OUT_IX, align 8
  %197 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %195, i64 %196
  %198 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  store i32 %192, i32* %199, align 4
  br label %200

200:                                              ; preds = %183, %176
  br label %201

201:                                              ; preds = %200, %159
  %202 = load %struct.udc*, %struct.udc** %2, align 8
  %203 = getelementptr inbounds %struct.udc, %struct.udc* %202, i32 0, i32 4
  %204 = load %struct.udc_ep*, %struct.udc_ep** %203, align 8
  %205 = load i64, i64* @UDC_EP0IN_IX, align 8
  %206 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %204, i64 %205
  %207 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %206, i32 0, i32 4
  %208 = load %struct.udc*, %struct.udc** %2, align 8
  %209 = getelementptr inbounds %struct.udc, %struct.udc* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %210, align 8
  %211 = load %struct.udc*, %struct.udc** %2, align 8
  %212 = getelementptr inbounds %struct.udc, %struct.udc* %211, i32 0, i32 4
  %213 = load %struct.udc_ep*, %struct.udc_ep** %212, align 8
  %214 = load i64, i64* @UDC_EP0IN_IX, align 8
  %215 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %213, i64 %214
  %216 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %215, i32 0, i32 3
  store i64 0, i64* %216, align 8
  %217 = load %struct.udc*, %struct.udc** %2, align 8
  %218 = getelementptr inbounds %struct.udc, %struct.udc* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = call i32 @INIT_LIST_HEAD(i32* %221)
  %223 = load %struct.udc*, %struct.udc** %2, align 8
  %224 = getelementptr inbounds %struct.udc, %struct.udc* %223, i32 0, i32 2
  store i64 0, i64* %224, align 8
  %225 = load %struct.udc*, %struct.udc** %2, align 8
  %226 = getelementptr inbounds %struct.udc, %struct.udc* %225, i32 0, i32 1
  store i64 0, i64* %226, align 8
  %227 = load %struct.udc*, %struct.udc** %2, align 8
  %228 = getelementptr inbounds %struct.udc, %struct.udc* %227, i32 0, i32 0
  store i64 0, i64* %228, align 8
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @AMD_GETBITS(i64, i32) #1

declare dso_local i32 @ep_init(%struct.TYPE_8__*, %struct.udc_ep*) #1

declare dso_local i64 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
