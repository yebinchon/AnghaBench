; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_rtl8192_phy_ConfigRFWithHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@RadioA_1T_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XRadioA_Array = common dso_local global i32* null, align 8
@Rtl819XRadioB_Array = common dso_local global i32* null, align 8
@RadioB_ArrayLength = common dso_local global i32 0, align 4
@RF_2T2R_GREEN = common dso_local global i64 0, align 8
@Rtl819XRadioB_GM_Array = common dso_local global i32* null, align 8
@RadioB_GM_ArrayLength = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %12)
  store %struct.r8192_priv* %13, %struct.r8192_priv** %5, align 8
  %14 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @RadioA_1T_ArrayLength, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** @Rtl819XRadioA_Array, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @RadioB_ArrayLength, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RF_2T2R_GREEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** @Rtl819XRadioB_GM_Array, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* @RadioB_GM_ArrayLength, align 4
  store i32 %26, i32* %11, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32*, i32** @Rtl819XRadioB_Array, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* @RadioB_ArrayLength, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %205 [
    i32 131, label %33
    i32 130, label %118
    i32 129, label %203
    i32 128, label %204
  ]

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %114, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %117

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 254
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @mdelay(i32 1000)
  br label %113

47:                                               ; preds = %38
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 253
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @mdelay(i32 5)
  br label %112

56:                                               ; preds = %47
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 252
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 @mdelay(i32 1)
  br label %111

65:                                               ; preds = %56
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 251
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @udelay(i32 50)
  br label %110

74:                                               ; preds = %65
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 250
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = call i32 @udelay(i32 5)
  br label %109

83:                                               ; preds = %74
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 249
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 @udelay(i32 1)
  br label %108

92:                                               ; preds = %83
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @bRFRegOffsetMask, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %93, i32 %94, i32 %99, i32 %100, i32 %106)
  br label %108

108:                                              ; preds = %92, %90
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %72
  br label %111

111:                                              ; preds = %110, %63
  br label %112

112:                                              ; preds = %111, %54
  br label %113

113:                                              ; preds = %112, %45
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %6, align 4
  br label %34

117:                                              ; preds = %34
  br label %206

118:                                              ; preds = %30
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %199, %118
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %202

123:                                              ; preds = %119
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 254
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 @mdelay(i32 1000)
  br label %198

132:                                              ; preds = %123
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 253
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 @mdelay(i32 5)
  br label %197

141:                                              ; preds = %132
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 252
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = call i32 @mdelay(i32 1)
  br label %196

150:                                              ; preds = %141
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 251
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = call i32 @udelay(i32 50)
  br label %195

159:                                              ; preds = %150
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 250
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 @udelay(i32 5)
  br label %194

168:                                              ; preds = %159
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 249
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = call i32 @udelay(i32 1)
  br label %193

177:                                              ; preds = %168
  %178 = load %struct.net_device*, %struct.net_device** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @bRFRegOffsetMask, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %178, i32 %179, i32 %184, i32 %185, i32 %191)
  br label %193

193:                                              ; preds = %177, %175
  br label %194

194:                                              ; preds = %193, %166
  br label %195

195:                                              ; preds = %194, %157
  br label %196

196:                                              ; preds = %195, %148
  br label %197

197:                                              ; preds = %196, %139
  br label %198

198:                                              ; preds = %197, %130
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %6, align 4
  br label %119

202:                                              ; preds = %119
  br label %206

203:                                              ; preds = %30
  br label %206

204:                                              ; preds = %30
  br label %206

205:                                              ; preds = %30
  br label %206

206:                                              ; preds = %205, %204, %203, %202, %117
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
