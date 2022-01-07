; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwThreeWire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwThreeWire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TC_3W_POLL_MAX_TRY_CNT = common dso_local global i64 0, align 8
@SW_3W_CMD1 = common dso_local global i64 0, align 8
@SW_3W_CMD1_RE = common dso_local global i64 0, align 8
@SW_3W_CMD1_WE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"HwThreeWire(): CmdReg: %#X RE|WE bits are not clear!!\0A\00", align 1
@SW_3W_DB0 = common dso_local global i64 0, align 8
@SW_3W_DB1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"HwThreeWire(): nDataBufBitCnt(%d) should be multiple of 8!!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"HwThreeWire(): nDataBufBitCnt(%d) should <= 64!!!\0A\00", align 1
@SW_3W_CMD0_HOLD = common dso_local global i64 0, align 8
@SW_3W_CMD0 = common dso_local global i64 0, align 8
@SW_3W_CMD1_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HwThreeWire(%struct.net_device* %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load i64, i64* @SW_3W_CMD1, align 8
  %26 = call i64 @read_nic_byte(%struct.net_device* %24, i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @SW_3W_CMD1_RE, align 8
  %29 = load i64, i64* @SW_3W_CMD1_WE, align 8
  %30 = or i64 %28, %29
  %31 = and i64 %27, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %39

34:                                               ; preds = %23
  %35 = call i32 @udelay(i32 10)
  br label %36

36:                                               ; preds = %34
  %37 = load i64, i64* %12, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %12, align 8
  br label %19

39:                                               ; preds = %33, %19
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load i64, i64* @SW_3W_DB0, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = bitcast i64* %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @write_nic_word(%struct.net_device* %50, i64 %51, i32 %54)
  br label %111

56:                                               ; preds = %46
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %57, 64
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load i64, i64* @SW_3W_DB0, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = bitcast i64* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write_nic_dword(%struct.net_device* %60, i64 %61, i32 %64)
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i64, i64* @SW_3W_DB1, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 4
  %70 = bitcast i64* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @write_nic_dword(%struct.net_device* %66, i64 %67, i32 %71)
  br label %110

73:                                               ; preds = %56
  %74 = load i64, i64* %8, align 8
  %75 = sdiv i64 %74, 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %8, align 8
  %78 = srem i64 %77, 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i64, i64* %8, align 8
  %85 = icmp sgt i64 %84, 64
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = load i64, i64* @SW_3W_DB0, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = load i64*, i64** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @write_nic_byte(%struct.net_device* %95, i64 %99, i64 %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %90

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109, %59
  br label %111

111:                                              ; preds = %110, %49
  %112 = load i64, i64* %8, align 8
  %113 = sub nsw i64 %112, 1
  store i64 %113, i64* %13, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i64, i64* @SW_3W_CMD0_HOLD, align 8
  %118 = load i64, i64* %13, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = load i64, i64* @SW_3W_CMD0, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @write_nic_byte(%struct.net_device* %121, i64 %122, i64 %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = load i64, i64* @SW_3W_CMD1, align 8
  %130 = load i64, i64* @SW_3W_CMD1_WE, align 8
  %131 = call i32 @write_nic_byte(%struct.net_device* %128, i64 %129, i64 %130)
  br label %137

132:                                              ; preds = %120
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = load i64, i64* @SW_3W_CMD1, align 8
  %135 = load i64, i64* @SW_3W_CMD1_RE, align 8
  %136 = call i32 @write_nic_byte(%struct.net_device* %133, i64 %134, i64 %135)
  br label %137

137:                                              ; preds = %132, %127
  store i64 0, i64* %12, align 8
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %163

142:                                              ; preds = %138
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = load i64, i64* @SW_3W_CMD1, align 8
  %145 = call i64 @read_nic_byte(%struct.net_device* %143, i64 %144)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @SW_3W_CMD1_RE, align 8
  %148 = load i64, i64* @SW_3W_CMD1_WE, align 8
  %149 = or i64 %147, %148
  %150 = and i64 %146, %149
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* @SW_3W_CMD1_DONE, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %163

158:                                              ; preds = %152, %142
  %159 = call i32 @udelay(i32 10)
  br label %160

160:                                              ; preds = %158
  %161 = load i64, i64* %12, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %12, align 8
  br label %138

163:                                              ; preds = %157, %138
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @TC_3W_POLL_MAX_TRY_CNT, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct.net_device*, %struct.net_device** %6, align 8
  %169 = load i64, i64* @SW_3W_CMD1, align 8
  %170 = call i32 @write_nic_byte(%struct.net_device* %168, i64 %169, i64 0)
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %236

174:                                              ; preds = %171
  %175 = load i64, i64* %8, align 8
  %176 = icmp eq i64 %175, 16
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = load i64, i64* @SW_3W_DB0, align 8
  %180 = call i32 @read_nic_word(%struct.net_device* %178, i64 %179)
  %181 = load i64*, i64** %7, align 8
  %182 = bitcast i64* %181 to i32*
  store i32 %180, i32* %182, align 4
  br label %235

183:                                              ; preds = %174
  %184 = load i64, i64* %8, align 8
  %185 = icmp eq i64 %184, 64
  br i1 %185, label %186, label %198

186:                                              ; preds = %183
  %187 = load %struct.net_device*, %struct.net_device** %6, align 8
  %188 = load i64, i64* @SW_3W_DB0, align 8
  %189 = call i32 @read_nic_dword(%struct.net_device* %187, i64 %188)
  %190 = load i64*, i64** %7, align 8
  %191 = bitcast i64* %190 to i32*
  store i32 %189, i32* %191, align 4
  %192 = load %struct.net_device*, %struct.net_device** %6, align 8
  %193 = load i64, i64* @SW_3W_DB1, align 8
  %194 = call i32 @read_nic_dword(%struct.net_device* %192, i64 %193)
  %195 = load i64*, i64** %7, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 4
  %197 = bitcast i64* %196 to i32*
  store i32 %194, i32* %197, align 4
  br label %234

198:                                              ; preds = %183
  %199 = load i64, i64* %8, align 8
  %200 = sdiv i64 %199, 8
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %17, align 4
  %202 = load i64, i64* %8, align 8
  %203 = srem i64 %202, 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i64, i64* %8, align 8
  %207 = call i32 @panic(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %206)
  br label %208

208:                                              ; preds = %205, %198
  %209 = load i64, i64* %8, align 8
  %210 = icmp sgt i64 %209, 64
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i64, i64* %8, align 8
  %213 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %211, %208
  store i32 0, i32* %16, align 4
  br label %215

215:                                              ; preds = %230, %214
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %17, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load %struct.net_device*, %struct.net_device** %6, align 8
  %221 = load i64, i64* @SW_3W_DB0, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %221, %223
  %225 = call i64 @read_nic_byte(%struct.net_device* %220, i64 %224)
  %226 = load i64*, i64** %7, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  store i64 %225, i64* %229, align 8
  br label %230

230:                                              ; preds = %219
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %16, align 4
  br label %215

233:                                              ; preds = %215
  br label %234

234:                                              ; preds = %233, %186
  br label %235

235:                                              ; preds = %234, %177
  br label %236

236:                                              ; preds = %235, %171
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  ret i32 %238
}

declare dso_local i64 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i64) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i64) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
