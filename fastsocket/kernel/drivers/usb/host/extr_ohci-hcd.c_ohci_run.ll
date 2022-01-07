; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32, i32, i32, i32*, i64, i32, i32, i64, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.usb_hcd = type { i32, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fminterval delta %d\0A\00", align 1
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_USB_RESET = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@OHCI_QUIRK_INITRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"enabling initreset quirk\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"init err (%08x %04x)\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@OHCI_CONTROL_INIT = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i8* null, align 8
@RH_HS_DRWE = common dso_local global i32 0, align 4
@OHCI_INTR_INIT = common dso_local global i32 0, align 4
@RH_A_PSM = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@OHCI_QUIRK_SUPERIO = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@RH_A_POTPGT = common dso_local global i32 0, align 4
@RH_A_NPS = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@OHCI_QUIRK_HUB_POWER = common dso_local global i32 0, align 4
@RH_HS_LPSC = common dso_local global i32 0, align 4
@RH_B_PPCM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@STATECHANGE_DELAY = common dso_local global i64 0, align 8
@unlink_watchdog_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*)* @ohci_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_run(%struct.ohci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %14 = call %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd* %13)
  store %struct.usb_hcd* %14, %struct.usb_hcd** %7, align 8
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %16 = call i32 @disable(%struct.ohci_hcd* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %1
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %21, i32 0, i32 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = call i32 @ohci_readl(%struct.ohci_hcd* %20, i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 16383
  %28 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FI, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %37 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FI, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %35, %19
  %44 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %45 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @FSMP(i32 %46)
  %48 = shl i32 %47, 16
  %49 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %43, %1
  %54 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %55 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @device_set_wakeup_capable(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %83 [
    i32 130, label %72
    i32 128, label %73
    i32 129, label %73
  ]

72:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %94

73:                                               ; preds = %66, %66
  %74 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %75 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %76 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %80 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 129
  store i32 %82, i32* %80, align 4
  store i32 10, i32* %5, align 4
  br label %94

83:                                               ; preds = %66
  %84 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %85 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %86 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @OHCI_USB_RESET, align 4
  %90 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %91 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  store i32 50, i32* %5, align 4
  br label %94

94:                                               ; preds = %83, %73, %72
  %95 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %96 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %97 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %100 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %99, i32 0, i32 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @ohci_writel(%struct.ohci_hcd* %95, i32 %98, i32* %102)
  %104 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %105 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %106 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %105, i32 0, i32 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @ohci_readl(%struct.ohci_hcd* %104, i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @msleep(i32 %110)
  %112 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %113 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @memset(i32 %114, i32 0, i32 4)
  %116 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %117 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %116, i32 0, i32 6
  %118 = call i32 @spin_lock_irq(i32* %117)
  br label %119

119:                                              ; preds = %220, %94
  %120 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %121 = load i32, i32* @OHCI_HCR, align 4
  %122 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %123 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %122, i32 0, i32 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 9
  %126 = call i32 @ohci_writel(%struct.ohci_hcd* %120, i32 %121, i32* %125)
  store i32 30, i32* %5, align 4
  br label %127

127:                                              ; preds = %147, %119
  %128 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %129 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %130 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %129, i32 0, i32 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 9
  %133 = call i32 @ohci_readl(%struct.ohci_hcd* %128, i32* %132)
  %134 = load i32, i32* @OHCI_HCR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %127
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %5, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %143 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %142, i32 0, i32 6
  %144 = call i32 @spin_unlock_irq(i32* %143)
  %145 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %146 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_err(%struct.ohci_hcd* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %422

147:                                              ; preds = %137
  %148 = call i32 @udelay(i32 1)
  br label %127

149:                                              ; preds = %127
  %150 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %151 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %149
  %157 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %158 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %159 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %162 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %161, i32 0, i32 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = call i32 @ohci_writel(%struct.ohci_hcd* %157, i32 %160, i32* %164)
  %166 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %167 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %168 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %167, i32 0, i32 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = call i32 @ohci_readl(%struct.ohci_hcd* %166, i32* %170)
  br label %172

172:                                              ; preds = %156, %149
  %173 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %174 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %175 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %174, i32 0, i32 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 8
  %178 = call i32 @ohci_writel(%struct.ohci_hcd* %173, i32 0, i32* %177)
  %179 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %180 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %181 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %180, i32 0, i32 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 7
  %184 = call i32 @ohci_writel(%struct.ohci_hcd* %179, i32 0, i32* %183)
  %185 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %186 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %187 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %191 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %190, i32 0, i32 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 6
  %194 = call i32 @ohci_writel(%struct.ohci_hcd* %185, i32 %189, i32* %193)
  %195 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %196 = call i32 @periodic_reinit(%struct.ohci_hcd* %195)
  %197 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %198 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %199 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %198, i32 0, i32 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = call i32 @ohci_readl(%struct.ohci_hcd* %197, i32* %201)
  %203 = and i32 %202, 1073676288
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %172
  %206 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %207 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %208 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %207, i32 0, i32 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 4
  %211 = call i32 @ohci_readl(%struct.ohci_hcd* %206, i32* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %248, label %213

213:                                              ; preds = %205, %172
  %214 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %215 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %222 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %223 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %227 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_dbg(%struct.ohci_hcd* %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %119

228:                                              ; preds = %213
  %229 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %230 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %229, i32 0, i32 6
  %231 = call i32 @spin_unlock_irq(i32* %230)
  %232 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %233 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %234 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %235 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %234, i32 0, i32 8
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 5
  %238 = call i32 @ohci_readl(%struct.ohci_hcd* %233, i32* %237)
  %239 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %240 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %241 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %240, i32 0, i32 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 4
  %244 = call i32 @ohci_readl(%struct.ohci_hcd* %239, i32* %243)
  %245 = call i32 (%struct.ohci_hcd*, i8*, ...) @ohci_err(%struct.ohci_hcd* %232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %238, i32 %244)
  %246 = load i32, i32* @EOVERFLOW, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %2, align 4
  br label %422

248:                                              ; preds = %205
  %249 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %250 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %251 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %250, i32 0, i32 2
  %252 = call i32 @set_bit(i32 %249, i32* %251)
  %253 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %254 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %256 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %257 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load i32, i32* @OHCI_CONTROL_INIT, align 4
  %261 = or i32 %260, 130
  %262 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %263 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %267 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %268 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %271 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %270, i32 0, i32 8
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = call i32 @ohci_writel(%struct.ohci_hcd* %266, i32 %269, i32* %273)
  %275 = load i8*, i8** @HC_STATE_RUNNING, align 8
  %276 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %277 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %279 = load i32, i32* @RH_HS_DRWE, align 4
  %280 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %281 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %280, i32 0, i32 8
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = call i32 @ohci_writel(%struct.ohci_hcd* %278, i32 %279, i32* %284)
  %286 = load i32, i32* @OHCI_INTR_INIT, align 4
  store i32 %286, i32* %4, align 4
  %287 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %288 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %289 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %288, i32 0, i32 8
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = call i32 @ohci_writel(%struct.ohci_hcd* %287, i32 -1, i32* %291)
  %293 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %294 = load i32, i32* %4, align 4
  %295 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %296 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %295, i32 0, i32 8
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 2
  %299 = call i32 @ohci_writel(%struct.ohci_hcd* %293, i32 %294, i32* %298)
  %300 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %301 = call i32 @roothub_a(%struct.ohci_hcd* %300)
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* @RH_A_PSM, align 4
  %303 = load i32, i32* @RH_A_OCPM, align 4
  %304 = or i32 %302, %303
  %305 = xor i32 %304, -1
  %306 = load i32, i32* %5, align 4
  %307 = and i32 %306, %305
  store i32 %307, i32* %5, align 4
  %308 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %309 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @OHCI_QUIRK_SUPERIO, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %248
  %315 = load i32, i32* @RH_A_NOCP, align 4
  %316 = load i32, i32* %5, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %5, align 4
  %318 = load i32, i32* @RH_A_POTPGT, align 4
  %319 = load i32, i32* @RH_A_NPS, align 4
  %320 = or i32 %318, %319
  %321 = xor i32 %320, -1
  %322 = load i32, i32* %5, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %5, align 4
  %324 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %325 = load i32, i32* %5, align 4
  %326 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %327 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %326, i32 0, i32 8
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 2
  %331 = call i32 @ohci_writel(%struct.ohci_hcd* %324, i32 %325, i32* %330)
  br label %359

332:                                              ; preds = %248
  %333 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %334 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %332
  %340 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %341 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @OHCI_QUIRK_HUB_POWER, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %358

346:                                              ; preds = %339, %332
  %347 = load i32, i32* @RH_A_NPS, align 4
  %348 = load i32, i32* %5, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %5, align 4
  %350 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %351 = load i32, i32* %5, align 4
  %352 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %353 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %352, i32 0, i32 8
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 2
  %357 = call i32 @ohci_writel(%struct.ohci_hcd* %350, i32 %351, i32* %356)
  br label %358

358:                                              ; preds = %346, %339
  br label %359

359:                                              ; preds = %358, %314
  %360 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %361 = load i32, i32* @RH_HS_LPSC, align 4
  %362 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %363 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %362, i32 0, i32 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 1
  %367 = call i32 @ohci_writel(%struct.ohci_hcd* %360, i32 %361, i32* %366)
  %368 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %369 = load i32, i32* %5, align 4
  %370 = load i32, i32* @RH_A_NPS, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %359
  br label %376

374:                                              ; preds = %359
  %375 = load i32, i32* @RH_B_PPCM, align 4
  br label %376

376:                                              ; preds = %374, %373
  %377 = phi i32 [ 0, %373 ], [ %375, %374 ]
  %378 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %379 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %378, i32 0, i32 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = call i32 @ohci_writel(%struct.ohci_hcd* %368, i32 %377, i32* %382)
  %384 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %385 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %386 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %385, i32 0, i32 8
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = call i32 @ohci_readl(%struct.ohci_hcd* %384, i32* %388)
  %390 = load i64, i64* @jiffies, align 8
  %391 = load i64, i64* @STATECHANGE_DELAY, align 8
  %392 = add nsw i64 %390, %391
  %393 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %394 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %393, i32 0, i32 7
  store i64 %392, i64* %394, align 8
  %395 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %396 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %395, i32 0, i32 6
  %397 = call i32 @spin_unlock_irq(i32* %396)
  %398 = load i32, i32* %5, align 4
  %399 = ashr i32 %398, 23
  %400 = and i32 %399, 510
  %401 = call i32 @mdelay(i32 %400)
  %402 = load i8*, i8** @HC_STATE_RUNNING, align 8
  %403 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %404 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %403, i32 0, i32 1
  store i8* %402, i8** %404, align 8
  %405 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %406 = call i64 @quirk_zfmicro(%struct.ohci_hcd* %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %376
  %409 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %410 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %409, i32 0, i32 5
  %411 = load i32, i32* @unlink_watchdog_func, align 4
  %412 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %413 = ptrtoint %struct.ohci_hcd* %412 to i64
  %414 = call i32 @setup_timer(i32* %410, i32 %411, i64 %413)
  %415 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %416 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %415, i32 0, i32 4
  store i64 0, i64* %416, align 8
  %417 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %418 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %417, i32 0, i32 3
  store i32* null, i32** %418, align 8
  br label %419

419:                                              ; preds = %408, %376
  %420 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %421 = call i32 @ohci_dump(%struct.ohci_hcd* %420, i32 1)
  store i32 0, i32* %2, align 4
  br label %422

422:                                              ; preds = %419, %228, %141
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32 @disable(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @FSMP(i32) #1

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @periodic_reinit(%struct.ohci_hcd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @roothub_a(%struct.ohci_hcd*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @quirk_zfmicro(%struct.ohci_hcd*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ohci_dump(%struct.ohci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
