; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i64, i32 }
%struct.usba_ep = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_2__, %struct.usb_endpoint_descriptor*, %struct.usba_udc*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.usba_udc = type { i32 }

@DBG_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: ep_enable: desc=%p\0A\00", align 1
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ep_enable: Invalid argument\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPT_SIZE = common dso_local global i32 0, align 4
@USBA_EPT_SIZE_8 = common dso_local global i32 0, align 4
@DBG_HW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: EPT_SIZE = %lu (maxpacket = %lu)\0A\00", align 1
@USBA_EPT_DIR_IN = common dso_local global i64 0, align 8
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_CONTROL = common dso_local global i32 0, align 4
@BK_NUMBER = common dso_local global i32 0, align 4
@USBA_BK_NUMBER_ONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"ep_enable: %s is not isoc capable\0A\00", align 1
@USBA_EPT_TYPE_ISO = common dso_local global i32 0, align 4
@USBA_BK_NUMBER_TRIPLE = common dso_local global i32 0, align 4
@USBA_BK_NUMBER_DOUBLE = common dso_local global i32 0, align 4
@NB_TRANS = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_BULK = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"ep%d already enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i64 0, align 8
@INT_ENB = common dso_local global i32 0, align 4
@EPT_INT = common dso_local global i32 0, align 4
@DMA_INT = common dso_local global i32 0, align 4
@USBA_AUTO_VALID = common dso_local global i64 0, align 8
@USBA_INTDIS_DMA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"EPT_CFG%d after init: %#08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"INT_ENB after init: %#08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @usba_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usba_ep*, align 8
  %7 = alloca %struct.usba_udc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %13 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %14 = call %struct.usba_ep* @to_usba_ep(%struct.usb_ep* %13)
  store %struct.usba_ep* %14, %struct.usba_ep** %6, align 8
  %15 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %16 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %15, i32 0, i32 8
  %17 = load %struct.usba_udc*, %struct.usba_udc** %16, align 8
  store %struct.usba_udc* %17, %struct.usba_udc** %7, align 8
  %18 = load i32, i32* @DBG_GADGET, align 4
  %19 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %20 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %24 = call i32 (i32, i8*, ...) @DBG(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22, %struct.usb_endpoint_descriptor* %23)
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = and i32 %28, 2047
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %37 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %60, label %40

40:                                               ; preds = %2
  %41 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %42 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %57 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54, %51, %45, %40, %2
  %61 = load i32, i32* @DBG_ERR, align 4
  %62 = call i32 (i32, i8*, ...) @DBG(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %302

65:                                               ; preds = %54
  %66 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %67 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %69 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %10, align 8
  %71 = icmp ule i64 %70, 8
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @EPT_SIZE, align 4
  %74 = load i32, i32* @USBA_EPT_SIZE_8, align 4
  %75 = call i64 @USBA_BF(i32 %73, i32 %74)
  store i64 %75, i64* %9, align 8
  br label %83

76:                                               ; preds = %65
  %77 = load i32, i32* @EPT_SIZE, align 4
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %78, 1
  %80 = call i32 @fls(i64 %79)
  %81 = sub nsw i32 %80, 3
  %82 = call i64 @USBA_BF(i32 %77, i32 %81)
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %76, %72
  %84 = load i32, i32* @DBG_HW, align 4
  %85 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %86 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 (i32, i8*, ...) @DBG(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %88, i64 %89, i64 %90)
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %93 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %97 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load i64, i64* @USBA_EPT_DIR_IN, align 8
  %99 = load i64, i64* %9, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %95, %83
  %102 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %103 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %102)
  switch i32 %103, label %197 [
    i32 130, label %104
    i32 128, label %115
    i32 131, label %175
    i32 129, label %186
  ]

104:                                              ; preds = %101
  %105 = load i32, i32* @EPT_TYPE, align 4
  %106 = load i32, i32* @USBA_EPT_TYPE_CONTROL, align 4
  %107 = call i64 @USBA_BF(i32 %105, i32 %106)
  %108 = load i64, i64* %9, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %9, align 8
  %110 = load i32, i32* @BK_NUMBER, align 4
  %111 = load i32, i32* @USBA_BK_NUMBER_ONE, align 4
  %112 = call i64 @USBA_BF(i32 %110, i32 %111)
  %113 = load i64, i64* %9, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %9, align 8
  br label %197

115:                                              ; preds = %101
  %116 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %117 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @DBG_ERR, align 4
  %122 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %123 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, ...) @DBG(i32 %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %302

129:                                              ; preds = %115
  %130 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %131 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @le16_to_cpu(i32 %132)
  %134 = ashr i32 %133, 11
  %135 = and i32 %134, 3
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ugt i32 %137, 3
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %302

142:                                              ; preds = %129
  %143 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %144 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @EPT_TYPE, align 4
  %146 = load i32, i32* @USBA_EPT_TYPE_ISO, align 4
  %147 = call i64 @USBA_BF(i32 %145, i32 %146)
  %148 = load i64, i64* %9, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %163

152:                                              ; preds = %142
  %153 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %154 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @BK_NUMBER, align 4
  %159 = load i32, i32* @USBA_BK_NUMBER_TRIPLE, align 4
  %160 = call i64 @USBA_BF(i32 %158, i32 %159)
  %161 = load i64, i64* %9, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %9, align 8
  br label %169

163:                                              ; preds = %152, %142
  %164 = load i32, i32* @BK_NUMBER, align 4
  %165 = load i32, i32* @USBA_BK_NUMBER_DOUBLE, align 4
  %166 = call i64 @USBA_BF(i32 %164, i32 %165)
  %167 = load i64, i64* %9, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %9, align 8
  br label %169

169:                                              ; preds = %163, %157
  %170 = load i32, i32* @NB_TRANS, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i64 @USBA_BF(i32 %170, i32 %171)
  %173 = load i64, i64* %9, align 8
  %174 = or i64 %173, %172
  store i64 %174, i64* %9, align 8
  br label %197

175:                                              ; preds = %101
  %176 = load i32, i32* @EPT_TYPE, align 4
  %177 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %178 = call i64 @USBA_BF(i32 %176, i32 %177)
  %179 = load i64, i64* %9, align 8
  %180 = or i64 %179, %178
  store i64 %180, i64* %9, align 8
  %181 = load i32, i32* @BK_NUMBER, align 4
  %182 = load i32, i32* @USBA_BK_NUMBER_DOUBLE, align 4
  %183 = call i64 @USBA_BF(i32 %181, i32 %182)
  %184 = load i64, i64* %9, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %9, align 8
  br label %197

186:                                              ; preds = %101
  %187 = load i32, i32* @EPT_TYPE, align 4
  %188 = load i32, i32* @USBA_EPT_TYPE_INT, align 4
  %189 = call i64 @USBA_BF(i32 %187, i32 %188)
  %190 = load i64, i64* %9, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %9, align 8
  %192 = load i32, i32* @BK_NUMBER, align 4
  %193 = load i32, i32* @USBA_BK_NUMBER_DOUBLE, align 4
  %194 = call i64 @USBA_BF(i32 %192, i32 %193)
  %195 = load i64, i64* %9, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %101, %186, %175, %169, %104
  %198 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %199 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %198, i32 0, i32 8
  %200 = load %struct.usba_udc*, %struct.usba_udc** %199, align 8
  %201 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %200, i32 0, i32 0
  %202 = load i64, i64* %8, align 8
  %203 = call i32 @spin_lock_irqsave(i32* %201, i64 %202)
  %204 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %205 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %204, i32 0, i32 7
  %206 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %205, align 8
  %207 = icmp ne %struct.usb_endpoint_descriptor* %206, null
  br i1 %207, label %208, label %222

208:                                              ; preds = %197
  %209 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %210 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %209, i32 0, i32 8
  %211 = load %struct.usba_udc*, %struct.usba_udc** %210, align 8
  %212 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %211, i32 0, i32 0
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @spin_unlock_irqrestore(i32* %212, i64 %213)
  %215 = load i32, i32* @DBG_ERR, align 4
  %216 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %217 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i32, i8*, ...) @DBG(i32 %215, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EBUSY, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %302

222:                                              ; preds = %197
  %223 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %224 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %225 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %224, i32 0, i32 7
  store %struct.usb_endpoint_descriptor* %223, %struct.usb_endpoint_descriptor** %225, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %228 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  %230 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %231 = load i32, i32* @CFG, align 4
  %232 = load i64, i64* %9, align 8
  %233 = call i32 @usba_ep_writel(%struct.usba_ep* %230, i32 %231, i64 %232)
  %234 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %235 = load i32, i32* @CTL_ENB, align 4
  %236 = load i64, i64* @USBA_EPT_ENABLE, align 8
  %237 = call i32 @usba_ep_writel(%struct.usba_ep* %234, i32 %235, i64 %236)
  %238 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %239 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %270

242:                                              ; preds = %222
  %243 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %244 = load i32, i32* @INT_ENB, align 4
  %245 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %246 = load i32, i32* @INT_ENB, align 4
  %247 = call i64 @usba_readl(%struct.usba_udc* %245, i32 %246)
  %248 = load i32, i32* @EPT_INT, align 4
  %249 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %250 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = shl i32 1, %251
  %253 = call i64 @USBA_BF(i32 %248, i32 %252)
  %254 = or i64 %247, %253
  %255 = load i32, i32* @DMA_INT, align 4
  %256 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %257 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = shl i32 1, %258
  %260 = call i64 @USBA_BF(i32 %255, i32 %259)
  %261 = or i64 %254, %260
  %262 = call i32 @usba_writel(%struct.usba_udc* %243, i32 %244, i64 %261)
  %263 = load i64, i64* @USBA_AUTO_VALID, align 8
  %264 = load i64, i64* @USBA_INTDIS_DMA, align 8
  %265 = or i64 %263, %264
  store i64 %265, i64* %12, align 8
  %266 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %267 = load i32, i32* @CTL_ENB, align 4
  %268 = load i64, i64* %12, align 8
  %269 = call i32 @usba_ep_writel(%struct.usba_ep* %266, i32 %267, i64 %268)
  br label %284

270:                                              ; preds = %222
  %271 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %272 = load i32, i32* @INT_ENB, align 4
  %273 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %274 = load i32, i32* @INT_ENB, align 4
  %275 = call i64 @usba_readl(%struct.usba_udc* %273, i32 %274)
  %276 = load i32, i32* @EPT_INT, align 4
  %277 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %278 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = shl i32 1, %279
  %281 = call i64 @USBA_BF(i32 %276, i32 %280)
  %282 = or i64 %275, %281
  %283 = call i32 @usba_writel(%struct.usba_udc* %271, i32 %272, i64 %282)
  br label %284

284:                                              ; preds = %270, %242
  %285 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %286 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %285, i32 0, i32 0
  %287 = load i64, i64* %8, align 8
  %288 = call i32 @spin_unlock_irqrestore(i32* %286, i64 %287)
  %289 = load i32, i32* @DBG_HW, align 4
  %290 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %291 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.usba_ep*, %struct.usba_ep** %6, align 8
  %294 = load i32, i32* @CFG, align 4
  %295 = call i64 @usba_ep_readl(%struct.usba_ep* %293, i32 %294)
  %296 = call i32 (i32, i8*, ...) @DBG(i32 %289, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %292, i64 %295)
  %297 = load i32, i32* @DBG_HW, align 4
  %298 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %299 = load i32, i32* @INT_ENB, align 4
  %300 = call i64 @usba_readl(%struct.usba_udc* %298, i32 %299)
  %301 = call i32 (i32, i8*, ...) @DBG(i32 %297, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %300)
  store i32 0, i32* %3, align 4
  br label %302

302:                                              ; preds = %284, %208, %139, %120, %60
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local %struct.usba_ep* @to_usba_ep(%struct.usb_ep*) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @USBA_BF(i32, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i64) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i64) #1

declare dso_local i64 @usba_readl(%struct.usba_udc*, i32) #1

declare dso_local i64 @usba_ep_readl(%struct.usba_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
