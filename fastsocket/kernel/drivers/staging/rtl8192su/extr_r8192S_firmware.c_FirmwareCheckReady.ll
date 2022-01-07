; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_firmware.c_FirmwareCheckReady.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_firmware.c_FirmwareCheckReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"--->FirmwareCheckReady(): LoadStaus(%d),\00", align 1
@FW_STATUS_LOAD_IMEM = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@IMEM_CODE_DONE = common dso_local global i32 0, align 4
@IMEM_CHK_RPT = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"FW_STATUS_LOAD_IMEM FAIL CPU, Status=%x\0D\0A\00", align 1
@FW_STATUS_LOAD_EMEM = common dso_local global i32 0, align 4
@EMEM_CODE_DONE = common dso_local global i32 0, align 4
@EMEM_CHK_RPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"FW_STATUS_LOAD_EMEM FAIL CPU, Status=%x\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Enable CPU fail ! \0A\00", align 1
@FW_STATUS_LOAD_DMEM = common dso_local global i32 0, align 4
@DMEM_CODE_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Polling  DMEM code done fail ! CPUStatus(%#x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"DMEM code download success, CPUStatus(%#x)\0A\00", align 1
@FWRDY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Polling Load Firmware ready, CPUStatus(%x)\0A\00", align 1
@LOAD_FW_READY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Polling Load Firmware ready fail ! CPUStatus(%x)\0A\00", align 1
@TCR_ICV = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"FirmwareCheckReady(): Current RCR settings(%#x)\0A\00", align 1
@LBKMD_SEL = common dso_local global i32 0, align 4
@LBK_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"<---FirmwareCheckReady(): LoadFWStatus(%d), rtStatus(%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FirmwareCheckReady(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %6, align 8
  %14 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %8, align 8
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @COMP_FIRMWARE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FW_STATUS_LOAD_IMEM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %40, %28
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load i32, i32* @TCR, align 4
  %32 = call i32 @read_nic_byte(%struct.net_device* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IMEM_CODE_DONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %44

38:                                               ; preds = %29
  %39 = call i32 @udelay(i32 5)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %29, label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @IMEM_CHK_RPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @COMP_ERR, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 0, i32* %3, align 4
  br label %200

56:                                               ; preds = %49
  br label %190

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FW_STATUS_LOAD_EMEM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %73, %61
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i32, i32* @TCR, align 4
  %65 = call i32 @read_nic_byte(%struct.net_device* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @EMEM_CODE_DONE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %77

71:                                               ; preds = %62
  %72 = call i32 @udelay(i32 5)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %62, label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @EMEM_CHK_RPT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @COMP_ERR, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  store i32 0, i32* %3, align 4
  br label %200

86:                                               ; preds = %77
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i64 @FirmwareEnableCPU(%struct.net_device* %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @COMP_ERR, align 4
  %94 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %200

95:                                               ; preds = %86
  br label %189

96:                                               ; preds = %57
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @FW_STATUS_LOAD_DMEM, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %188

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %112, %100
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = load i32, i32* @TCR, align 4
  %104 = call i32 @read_nic_byte(%struct.net_device* %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @DMEM_CODE_DONE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %116

110:                                              ; preds = %101
  %111 = call i32 @udelay(i32 5)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %9, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %101, label %116

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @DMEM_CODE_DONE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @COMP_ERR, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %122, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  store i32 0, i32* %3, align 4
  br label %200

125:                                              ; preds = %116
  %126 = load i32, i32* @COMP_FIRMWARE, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %126, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  store i32 10000, i32* %9, align 4
  br label %129

129:                                              ; preds = %140, %125
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = load i32, i32* @TCR, align 4
  %132 = call i32 @read_nic_byte(%struct.net_device* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @FWRDY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %144

138:                                              ; preds = %129
  %139 = call i32 @udelay(i32 100)
  br label %140

140:                                              ; preds = %138
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  %143 = icmp ne i32 %141, 0
  br i1 %143, label %129, label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* @COMP_FIRMWARE, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @LOAD_FW_READY, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @LOAD_FW_READY, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = load i32, i32* @COMP_ERR, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %154, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %155)
  store i32 0, i32* %3, align 4
  br label %200

157:                                              ; preds = %144
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = load i32, i32* @TCR, align 4
  %160 = call i32 @read_nic_dword(%struct.net_device* %158, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = load i32, i32* @TCR, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @TCR_ICV, align 4
  %165 = xor i32 %164, -1
  %166 = and i32 %163, %165
  %167 = call i32 @write_nic_dword(%struct.net_device* %161, i32 %162, i32 %166)
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = load i32, i32* @RCR, align 4
  %170 = call i32 @read_nic_dword(%struct.net_device* %168, i32 %169)
  store i32 %170, i32* %11, align 4
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = load i32, i32* @RCR, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @RCR_APPFCS, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @RCR_APP_ICV, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @RCR_APP_MIC, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @write_nic_dword(%struct.net_device* %171, i32 %172, i32 %179)
  %181 = load i32, i32* @COMP_FIRMWARE, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %181, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %4, align 8
  %185 = load i32, i32* @LBKMD_SEL, align 4
  %186 = load i32, i32* @LBK_NORMAL, align 4
  %187 = call i32 @write_nic_byte(%struct.net_device* %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %157, %96
  br label %189

189:                                              ; preds = %188, %95
  br label %190

190:                                              ; preds = %189, %56
  %191 = load i32, i32* @COMP_FIRMWARE, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i64, i64* %7, align 8
  %194 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %191, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 %192, i64 %193)
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %190, %153, %121, %92, %82, %52
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @FirmwareEnableCPU(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
