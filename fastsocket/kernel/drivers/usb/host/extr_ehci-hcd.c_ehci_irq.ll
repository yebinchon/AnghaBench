; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, i32 }
%struct.ehci_hcd = type { i64*, i32, %struct.TYPE_4__*, i32, i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"device removed\0A\00", align 1
@INTR_MASK = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@STS_INT = common dso_local global i32 0, align 4
@STS_ERR = common dso_local global i32 0, align 4
@STS_IAA = common dso_local global i32 0, align 4
@CMD_IAAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IAA with IAAD still set?\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"IAA with nothing to reclaim?\0A\00", align 1
@STS_PCD = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@PORT_OWNER = common dso_local global i32 0, align 4
@PORT_RESUME = common dso_local global i32 0, align 4
@PORT_SUSPEND = common dso_local global i32 0, align 4
@PORT_PE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"port %d remote wakeup\0A\00", align 1
@STS_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"fatal error\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fatal\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_irq(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %13)
  store %struct.ehci_hcd* %14, %struct.ehci_hcd** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %19 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = call i32 @ehci_readl(%struct.ehci_hcd* %18, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %28 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %267

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INTR_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HC_STATE_HALT, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35, %29
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %295

49:                                               ; preds = %35
  %50 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = call i32 @ehci_writel(%struct.ehci_hcd* %50, i32 %51, i32* %55)
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %58 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %59 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i32 @ehci_readl(%struct.ehci_hcd* %57, i32* %61)
  store i32 %62, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @STS_INT, align 4
  %65 = load i32, i32* @STS_ERR, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %49
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @STS_ERR, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @COUNT(i32 %84)
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %88 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @COUNT(i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  store i32 1, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %49
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @STS_IAA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @CMD_IAAD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @CMD_IAAD, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %110 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = call i32 @ehci_writel(%struct.ehci_hcd* %104, i32 %108, i32* %112)
  %114 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %115 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %103, %98
  %117 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %118 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %123 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @COUNT(i32 %125)
  %127 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %128 = call i32 @end_unlink_async(%struct.ehci_hcd* %127)
  br label %132

129:                                              ; preds = %116
  %130 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %131 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %121
  br label %133

133:                                              ; preds = %132, %93
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @STS_PCD, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %248

138:                                              ; preds = %133
  %139 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %140 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @HCS_N_PORTS(i32 %141)
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @CMD_RUN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  %149 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %150 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %149)
  br label %151

151:                                              ; preds = %148, %138
  %152 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %153 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 16
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %156, %151
  br label %160

160:                                              ; preds = %223, %222, %191, %175, %159
  %161 = load i32, i32* %10, align 4
  %162 = add i32 %161, -1
  store i32 %162, i32* %10, align 4
  %163 = icmp ne i32 %161, 0
  br i1 %163, label %164, label %247

164:                                              ; preds = %160
  %165 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %166 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = shl i32 1, %171
  %173 = and i32 %170, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  br label %160

176:                                              ; preds = %169, %164
  %177 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %178 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %179 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @ehci_readl(%struct.ehci_hcd* %177, i32* %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @PORT_OWNER, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %176
  br label %160

192:                                              ; preds = %176
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %195 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %194, i32 0, i32 3
  %196 = call i64 @test_bit(i32 %193, i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %222

198:                                              ; preds = %192
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @PORT_RESUME, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @PORT_SUSPEND, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %222, label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @PORT_PE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %215 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %213, %208, %203, %192
  br label %160

223:                                              ; preds = %213
  %224 = load i64, i64* @jiffies, align 8
  %225 = call i64 @msecs_to_jiffies(i32 25)
  %226 = add nsw i64 %224, %225
  %227 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %228 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  store i64 %226, i64* %232, align 8
  %233 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %234 = load i32, i32* %10, align 4
  %235 = add i32 %234, 1
  %236 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %235)
  %237 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %238 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %237, i32 0, i32 1
  %239 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %240 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %239, i32 0, i32 0
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @mod_timer(i32* %238, i64 %245)
  br label %160

247:                                              ; preds = %160
  br label %248

248:                                              ; preds = %247, %133
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @STS_FATAL, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %278

256:                                              ; preds = %248
  %257 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %258 = call i32 @ehci_err(%struct.ehci_hcd* %257, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %259 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32 @dbg_cmd(%struct.ehci_hcd* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %260)
  %262 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @dbg_status(%struct.ehci_hcd* %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %263)
  %265 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %266 = call i32 @ehci_halt(%struct.ehci_hcd* %265)
  br label %267

267:                                              ; preds = %256, %26
  %268 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %269 = call i32 @ehci_reset(%struct.ehci_hcd* %268)
  %270 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %271 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %272 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %271, i32 0, i32 2
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = call i32 @ehci_writel(%struct.ehci_hcd* %270, i32 0, i32* %274)
  %276 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %277 = call i32 @usb_hc_died(%struct.usb_hcd* %276)
  store i32 1, i32* %9, align 4
  br label %278

278:                                              ; preds = %267, %248
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %283 = call i32 @ehci_work(%struct.ehci_hcd* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %286 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %285, i32 0, i32 1
  %287 = call i32 @spin_unlock(i32* %286)
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %292 = call i32 @usb_hcd_poll_rh_status(%struct.usb_hcd* %291)
  br label %293

293:                                              ; preds = %290, %284
  %294 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %293, %44
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @COUNT(i32) #1

declare dso_local i32 @end_unlink_async(%struct.ehci_hcd*) #1

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ehci_err(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @dbg_cmd(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @dbg_status(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @ehci_halt(%struct.ehci_hcd*) #1

declare dso_local i32 @ehci_reset(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_hc_died(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_work(%struct.ehci_hcd*) #1

declare dso_local i32 @usb_hcd_poll_rh_status(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
