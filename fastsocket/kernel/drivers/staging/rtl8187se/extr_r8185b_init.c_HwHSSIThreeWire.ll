; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwHSSIThreeWire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwHSSIThreeWire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TC_3W_POLL_MAX_TRY_CNT = common dso_local global i64 0, align 8
@SW_3W_CMD1 = common dso_local global i64 0, align 8
@SW_3W_CMD1_RE = common dso_local global i64 0, align 8
@SW_3W_CMD1_WE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"HwThreeWire(): CmdReg: %#X RE|WE bits are not clear!!\0A\00", align 1
@RF_SW_CONFIG = common dso_local global i64 0, align 8
@RF_SW_CFG_SI = common dso_local global i64 0, align 8
@RFPinsSelect = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@SW_3W_DB0 = common dso_local global i64 0, align 8
@SW_3W_DB1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"HwThreeWire(): nDataBufBitCnt(%d) should be multiple of 8!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"HwThreeWire(): nDataBufBitCnt(%d) should <= 64!!!\0A\00", align 1
@SW_3W_CMD1_DONE = common dso_local global i64 0, align 8
@SI_DATA_READ = common dso_local global i32 0, align 4
@PI_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HwHSSIThreeWire(%struct.net_device* %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %16

16:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load i64, i64* @SW_3W_CMD1, align 8
  %24 = call i64 @read_nic_byte(%struct.net_device* %22, i64 %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @SW_3W_CMD1_RE, align 8
  %27 = load i64, i64* @SW_3W_CMD1_WE, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %37

32:                                               ; preds = %21
  %33 = call i32 @udelay(i32 10)
  br label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %12, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %12, align 8
  br label %17

37:                                               ; preds = %31, %17
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load i64, i64* @RF_SW_CONFIG, align 8
  %47 = call i64 @read_nic_byte(%struct.net_device* %45, i64 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @RF_SW_CFG_SI, align 8
  %52 = load i64, i64* %13, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %13, align 8
  br label %59

54:                                               ; preds = %44
  %55 = load i64, i64* @RF_SW_CFG_SI, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %13, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load i64, i64* @RF_SW_CONFIG, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @write_nic_byte(%struct.net_device* %60, i64 %61, i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load i64, i64* @RFPinsSelect, align 8
  %69 = call i64 @read_nic_byte(%struct.net_device* %67, i64 %68)
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* @BIT3, align 8
  %71 = xor i64 %70, -1
  %72 = load i64, i64* %13, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %13, align 8
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load i64, i64* @RFPinsSelect, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @write_nic_byte(%struct.net_device* %74, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %66, %59
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %147

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = icmp eq i64 %82, 16
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = load i64, i64* @SW_3W_DB0, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = bitcast i64* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_nic_word(%struct.net_device* %85, i64 %86, i32 %89)
  br label %146

91:                                               ; preds = %81
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %92, 64
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = load i64, i64* @SW_3W_DB0, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = bitcast i64* %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @write_nic_dword(%struct.net_device* %95, i64 %96, i32 %99)
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = load i64, i64* @SW_3W_DB1, align 8
  %103 = load i64*, i64** %7, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 4
  %105 = bitcast i64* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_nic_dword(%struct.net_device* %101, i64 %102, i32 %106)
  br label %145

108:                                              ; preds = %91
  %109 = load i64, i64* %8, align 8
  %110 = sdiv i64 %109, 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %15, align 4
  %112 = load i64, i64* %8, align 8
  %113 = srem i64 %112, 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i64, i64* %8, align 8
  %120 = icmp sgt i64 %119, 64
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %121, %118
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %141, %124
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = load i64, i64* @SW_3W_DB0, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = load i64*, i64** %7, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @write_nic_byte(%struct.net_device* %130, i64 %134, i64 %139)
  br label %141

141:                                              ; preds = %129
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %125

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %94
  br label %146

146:                                              ; preds = %145, %84
  br label %166

147:                                              ; preds = %78
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load %struct.net_device*, %struct.net_device** %6, align 8
  %152 = load i64, i64* @SW_3W_DB0, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = bitcast i64* %153 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @write_nic_word(%struct.net_device* %151, i64 %152, i32 %155)
  br label %165

157:                                              ; preds = %147
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = load i64, i64* @SW_3W_DB0, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = bitcast i64* %160 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 12
  %164 = call i32 @write_nic_word(%struct.net_device* %158, i64 %159, i32 %163)
  br label %165

165:                                              ; preds = %157, %150
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.net_device*, %struct.net_device** %6, align 8
  %171 = load i64, i64* @SW_3W_CMD1, align 8
  %172 = load i64, i64* @SW_3W_CMD1_WE, align 8
  %173 = call i32 @write_nic_byte(%struct.net_device* %170, i64 %171, i64 %172)
  br label %179

174:                                              ; preds = %166
  %175 = load %struct.net_device*, %struct.net_device** %6, align 8
  %176 = load i64, i64* @SW_3W_CMD1, align 8
  %177 = load i64, i64* @SW_3W_CMD1_RE, align 8
  %178 = call i32 @write_nic_byte(%struct.net_device* %175, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %174, %169
  store i64 0, i64* %12, align 8
  br label %180

180:                                              ; preds = %195, %179
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = load i64, i64* @SW_3W_CMD1, align 8
  %187 = call i64 @read_nic_byte(%struct.net_device* %185, i64 %186)
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* @SW_3W_CMD1_DONE, align 8
  %190 = and i64 %188, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %198

193:                                              ; preds = %184
  %194 = call i32 @udelay(i32 10)
  br label %195

195:                                              ; preds = %193
  %196 = load i64, i64* %12, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %12, align 8
  br label %180

198:                                              ; preds = %192, %180
  %199 = load %struct.net_device*, %struct.net_device** %6, align 8
  %200 = load i64, i64* @SW_3W_CMD1, align 8
  %201 = call i32 @write_nic_byte(%struct.net_device* %199, i64 %200, i64 0)
  %202 = load i32, i32* %10, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %198
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.net_device*, %struct.net_device** %6, align 8
  %209 = load i32, i32* @SI_DATA_READ, align 4
  %210 = call i32 @read_nic_word(%struct.net_device* %208, i32 %209)
  %211 = load i64*, i64** %7, align 8
  %212 = bitcast i64* %211 to i32*
  store i32 %210, i32* %212, align 4
  br label %219

213:                                              ; preds = %204
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = load i32, i32* @PI_DATA_READ, align 4
  %216 = call i32 @read_nic_word(%struct.net_device* %214, i32 %215)
  %217 = load i64*, i64** %7, align 8
  %218 = bitcast i64* %217 to i32*
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %213, %207
  %220 = load i64*, i64** %7, align 8
  %221 = bitcast i64* %220 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 4095
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %219, %198
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %11, align 4
  ret i32 %226
}

declare dso_local i64 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i64) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
