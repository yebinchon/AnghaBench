; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_MacConfigBeforeFwDownloadASIC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_MacConfigBeforeFwDownloadASIC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"--->MacConfigBeforeFwDownloadASIC()\0A\00", align 1
@SYS_CLKR = common dso_local global i64 0, align 8
@RPWM = common dso_local global i64 0, align 8
@SYS_FUNC_EN = common dso_local global i64 0, align 8
@SPS0_CTRL = common dso_local global i64 0, align 8
@AFE_MISC = common dso_local global i64 0, align 8
@AFE_BGEN = common dso_local global i32 0, align 4
@AFE_MBEN = common dso_local global i32 0, align 4
@LDOA15_CTRL = common dso_local global i64 0, align 8
@LDA15_EN = common dso_local global i32 0, align 4
@LDOV12D_CTRL = common dso_local global i64 0, align 8
@LDV12_EN = common dso_local global i32 0, align 4
@SYS_ISO_CTRL = common dso_local global i64 0, align 8
@AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@AFE_PLL_CTRL = common dso_local global i64 0, align 8
@PMC_FSM = common dso_local global i64 0, align 8
@CMDR = common dso_local global i64 0, align 8
@BIT7 = common dso_local global i32 0, align 4
@SYS_CPU_CLKSEL = common dso_local global i32 0, align 4
@TCR = common dso_local global i64 0, align 8
@TXDMA_INIT_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"MacConfigBeforeFwDownloadASIC(): Polling TXDMA_INIT_VALUE timeout!! Current TCR(%#x)\0A\00", align 1
@TXDMA_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"<---MacConfigBeforeFwDownloadASIC()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192SU_MacConfigBeforeFwDownloadASIC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192SU_MacConfigBeforeFwDownloadASIC(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 20, i32* %4, align 4
  %5 = load i32, i32* @COMP_INIT, align 4
  %6 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i64, i64* @SYS_CLKR, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @read_nic_byte(%struct.net_device* %7, i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %3, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i64, i64* @SYS_CLKR, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @write_nic_byte(%struct.net_device* %17, i64 %19, i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i64, i64* @RPWM, align 8
  %25 = call i32 @write_nic_byte(%struct.net_device* %23, i64 %24, i32 0)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i64, i64* @SYS_FUNC_EN, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @read_nic_byte(%struct.net_device* %26, i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 115
  store i32 %31, i32* %3, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i64, i64* @SYS_FUNC_EN, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @write_nic_byte(%struct.net_device* %32, i64 %34, i32 %35)
  %37 = call i32 @udelay(i32 1000)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i64, i64* @SPS0_CTRL, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @write_nic_byte(%struct.net_device* %38, i64 %40, i32 83)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i64, i64* @SPS0_CTRL, align 8
  %44 = call i32 @write_nic_byte(%struct.net_device* %42, i64 %43, i32 87)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i64, i64* @AFE_MISC, align 8
  %47 = call i32 @read_nic_byte(%struct.net_device* %45, i64 %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i64, i64* @AFE_MISC, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @AFE_BGEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AFE_MBEN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @write_nic_byte(%struct.net_device* %48, i64 %49, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i64, i64* @LDOA15_CTRL, align 8
  %58 = call i32 @read_nic_byte(%struct.net_device* %56, i64 %57)
  store i32 %58, i32* %3, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load i64, i64* @LDOA15_CTRL, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @LDA15_EN, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @write_nic_byte(%struct.net_device* %59, i64 %60, i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i64, i64* @LDOV12D_CTRL, align 8
  %67 = call i32 @read_nic_byte(%struct.net_device* %65, i64 %66)
  store i32 %67, i32* %3, align 4
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load i64, i64* @LDOV12D_CTRL, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @LDV12_EN, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @write_nic_byte(%struct.net_device* %68, i64 %69, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i64, i64* @SYS_ISO_CTRL, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @read_nic_byte(%struct.net_device* %74, i64 %76)
  store i32 %77, i32* %3, align 4
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i64, i64* @SYS_ISO_CTRL, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, 8
  %83 = call i32 @write_nic_byte(%struct.net_device* %78, i64 %80, i32 %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load i64, i64* @SYS_FUNC_EN, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @read_nic_byte(%struct.net_device* %84, i64 %86)
  store i32 %87, i32* %3, align 4
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i64, i64* @SYS_FUNC_EN, align 8
  %90 = add nsw i64 %89, 1
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, 32
  %93 = call i32 @write_nic_byte(%struct.net_device* %88, i64 %90, i32 %92)
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = load i64, i64* @SYS_ISO_CTRL, align 8
  %96 = add nsw i64 %95, 1
  %97 = call i32 @read_nic_byte(%struct.net_device* %94, i64 %96)
  store i32 %97, i32* %3, align 4
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = load i64, i64* @SYS_ISO_CTRL, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, 104
  %103 = call i32 @write_nic_byte(%struct.net_device* %98, i64 %100, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i64, i64* @AFE_XTAL_CTRL, align 8
  %106 = add nsw i64 %105, 1
  %107 = call i32 @read_nic_byte(%struct.net_device* %104, i64 %106)
  store i32 %107, i32* %3, align 4
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = load i64, i64* @AFE_XTAL_CTRL, align 8
  %110 = add nsw i64 %109, 1
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, 251
  %113 = call i32 @write_nic_byte(%struct.net_device* %108, i64 %110, i32 %112)
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = load i64, i64* @AFE_PLL_CTRL, align 8
  %116 = call i32 @read_nic_byte(%struct.net_device* %114, i64 %115)
  store i32 %116, i32* %3, align 4
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i64, i64* @AFE_PLL_CTRL, align 8
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, 17
  %121 = call i32 @write_nic_byte(%struct.net_device* %117, i64 %118, i32 %120)
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = load i64, i64* @SYS_ISO_CTRL, align 8
  %124 = call i32 @read_nic_byte(%struct.net_device* %122, i64 %123)
  store i32 %124, i32* %3, align 4
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = load i64, i64* @SYS_ISO_CTRL, align 8
  %127 = load i32, i32* %3, align 4
  %128 = and i32 %127, 238
  %129 = call i32 @write_nic_byte(%struct.net_device* %125, i64 %126, i32 %128)
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load i64, i64* @SYS_CLKR, align 8
  %132 = call i32 @write_nic_byte(%struct.net_device* %130, i64 %131, i32 0)
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i64, i64* @SYS_CLKR, align 8
  %135 = call i32 @read_nic_byte(%struct.net_device* %133, i64 %134)
  store i32 %135, i32* %3, align 4
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = load i64, i64* @SYS_CLKR, align 8
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, 160
  %140 = call i32 @write_nic_byte(%struct.net_device* %136, i64 %137, i32 %139)
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = load i64, i64* @SYS_CLKR, align 8
  %143 = add nsw i64 %142, 1
  %144 = call i32 @read_nic_byte(%struct.net_device* %141, i64 %143)
  store i32 %144, i32* %3, align 4
  %145 = load %struct.net_device*, %struct.net_device** %2, align 8
  %146 = load i64, i64* @SYS_CLKR, align 8
  %147 = add nsw i64 %146, 1
  %148 = load i32, i32* %3, align 4
  %149 = or i32 %148, 24
  %150 = call i32 @write_nic_byte(%struct.net_device* %145, i64 %147, i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = load i64, i64* @PMC_FSM, align 8
  %153 = call i32 @write_nic_byte(%struct.net_device* %151, i64 %152, i32 2)
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = load i64, i64* @SYS_FUNC_EN, align 8
  %156 = add nsw i64 %155, 1
  %157 = call i32 @read_nic_byte(%struct.net_device* %154, i64 %156)
  store i32 %157, i32* %3, align 4
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = load i64, i64* @SYS_FUNC_EN, align 8
  %160 = add nsw i64 %159, 1
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, 8
  %163 = call i32 @write_nic_byte(%struct.net_device* %158, i64 %160, i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %2, align 8
  %165 = load i64, i64* @SYS_FUNC_EN, align 8
  %166 = add nsw i64 %165, 1
  %167 = call i32 @read_nic_byte(%struct.net_device* %164, i64 %166)
  store i32 %167, i32* %3, align 4
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  %169 = load i64, i64* @SYS_FUNC_EN, align 8
  %170 = add nsw i64 %169, 1
  %171 = load i32, i32* %3, align 4
  %172 = or i32 %171, 128
  %173 = call i32 @write_nic_byte(%struct.net_device* %168, i64 %170, i32 %172)
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = load i64, i64* @SYS_CLKR, align 8
  %176 = add nsw i64 %175, 1
  %177 = call i32 @read_nic_byte(%struct.net_device* %174, i64 %176)
  store i32 %177, i32* %3, align 4
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = load i64, i64* @SYS_CLKR, align 8
  %180 = add nsw i64 %179, 1
  %181 = load i32, i32* %3, align 4
  %182 = or i32 %181, 128
  %183 = and i32 %182, 191
  %184 = call i32 @write_nic_byte(%struct.net_device* %178, i64 %180, i32 %183)
  %185 = load %struct.net_device*, %struct.net_device** %2, align 8
  %186 = load i64, i64* @CMDR, align 8
  %187 = call i32 @write_nic_byte(%struct.net_device* %185, i64 %186, i32 252)
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = load i64, i64* @CMDR, align 8
  %190 = add nsw i64 %189, 1
  %191 = call i32 @write_nic_byte(%struct.net_device* %188, i64 %190, i32 55)
  %192 = load %struct.net_device*, %struct.net_device** %2, align 8
  %193 = call i32 @read_nic_byte_E(%struct.net_device* %192, i32 92)
  store i32 %193, i32* %3, align 4
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @BIT7, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @write_nic_byte_E(%struct.net_device* %194, i32 92, i32 %197)
  %199 = load %struct.net_device*, %struct.net_device** %2, align 8
  %200 = load i64, i64* @SYS_CLKR, align 8
  %201 = call i32 @read_nic_byte(%struct.net_device* %199, i64 %200)
  store i32 %201, i32* %3, align 4
  %202 = load %struct.net_device*, %struct.net_device** %2, align 8
  %203 = load i64, i64* @SYS_CLKR, align 8
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @SYS_CPU_CLKSEL, align 4
  %206 = xor i32 %205, -1
  %207 = and i32 %204, %206
  %208 = call i32 @write_nic_byte(%struct.net_device* %202, i64 %203, i32 %207)
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = call i32 @write_nic_byte_E(%struct.net_device* %209, i32 28, i32 128)
  br label %211

211:                                              ; preds = %223, %22
  %212 = load %struct.net_device*, %struct.net_device** %2, align 8
  %213 = load i64, i64* @TCR, align 8
  %214 = call i32 @read_nic_byte(%struct.net_device* %212, i64 %213)
  store i32 %214, i32* %3, align 4
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* @TXDMA_INIT_VALUE, align 4
  %217 = and i32 %215, %216
  %218 = load i32, i32* @TXDMA_INIT_VALUE, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %227

221:                                              ; preds = %211
  %222 = call i32 @udelay(i32 5)
  br label %223

223:                                              ; preds = %221
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %4, align 4
  %226 = icmp ne i32 %224, 0
  br i1 %226, label %211, label %227

227:                                              ; preds = %223, %220
  %228 = load i32, i32* %4, align 4
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %251

230:                                              ; preds = %227
  %231 = load i32, i32* @COMP_INIT, align 4
  %232 = load i32, i32* %3, align 4
  %233 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %231, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load %struct.net_device*, %struct.net_device** %2, align 8
  %235 = load i64, i64* @CMDR, align 8
  %236 = call i32 @read_nic_byte(%struct.net_device* %234, i64 %235)
  store i32 %236, i32* %3, align 4
  %237 = load %struct.net_device*, %struct.net_device** %2, align 8
  %238 = load i64, i64* @CMDR, align 8
  %239 = load i32, i32* %3, align 4
  %240 = load i32, i32* @TXDMA_EN, align 4
  %241 = xor i32 %240, -1
  %242 = and i32 %239, %241
  %243 = call i32 @write_nic_byte(%struct.net_device* %237, i64 %238, i32 %242)
  %244 = call i32 @udelay(i32 2)
  %245 = load %struct.net_device*, %struct.net_device** %2, align 8
  %246 = load i64, i64* @CMDR, align 8
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* @TXDMA_EN, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @write_nic_byte(%struct.net_device* %245, i64 %246, i32 %249)
  br label %251

251:                                              ; preds = %230, %227
  %252 = load i32, i32* @COMP_INIT, align 4
  %253 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %252, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_nic_byte_E(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte_E(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
