; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_configure_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_codec = type { i32, %struct.wm9081_priv* }
%struct.wm9081_priv = type { i32, i32, i32, i32, i32, i32 }

@clk_sys_rates = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM9081_MCLKDIV2 = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_CLK_SRC_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CLK_SYS is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_clock(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca %struct.wm9081_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 1
  %14 = load %struct.wm9081_priv*, %struct.wm9081_priv** %13, align 8
  store %struct.wm9081_priv* %14, %struct.wm9081_priv** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %16 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %149 [
    i32 128, label %18
    i32 129, label %39
  ]

18:                                               ; preds = %1
  %19 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %20 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 12225000
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  %24 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %25 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %32 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %35 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = call i32 @wm9081_set_fll(%struct.snd_soc_codec* %37, i32 129, i32 0, i32 0)
  br label %152

39:                                               ; preds = %1
  %40 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %41 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %39
  %45 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %46 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %57 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %58, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %69 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 3000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %80

76:                                               ; preds = %72, %55
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %50

80:                                               ; preds = %75, %50
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %82)
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %199

88:                                               ; preds = %80
  br label %129

89:                                               ; preds = %44, %39
  %90 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %91 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %98 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %97)
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %108 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, 3000000
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %118

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %95

118:                                              ; preds = %113, %95
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @clk_sys_rates, align 8
  %121 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %120)
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %199

126:                                              ; preds = %118
  br label %128

127:                                              ; preds = %89
  store i32 12288000, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %88
  %130 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %131 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %132 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @wm9081_set_fll(%struct.snd_soc_codec* %130, i32 129, i32 %133, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %141 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  store i32 1, i32* %11, align 4
  br label %148

142:                                              ; preds = %129
  %143 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %144 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %147 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %138
  br label %152

149:                                              ; preds = %1
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %199

152:                                              ; preds = %148, %36
  %153 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %154 = load i32, i32* @WM9081_CLOCK_CONTROL_1, align 4
  %155 = call i32 @snd_soc_read(%struct.snd_soc_codec* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @WM9081_MCLKDIV2, align 4
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  br label %167

162:                                              ; preds = %152
  %163 = load i32, i32* @WM9081_MCLKDIV2, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %162, %158
  %168 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %169 = load i32, i32* @WM9081_CLOCK_CONTROL_1, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @snd_soc_write(%struct.snd_soc_codec* %168, i32 %169, i32 %170)
  %172 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %173 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %174 = call i32 @snd_soc_read(%struct.snd_soc_codec* %172, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %167
  %178 = load i32, i32* @WM9081_CLK_SRC_SEL, align 4
  %179 = load i32, i32* %8, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %8, align 4
  br label %186

181:                                              ; preds = %167
  %182 = load i32, i32* @WM9081_CLK_SRC_SEL, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %181, %177
  %187 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %188 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @snd_soc_write(%struct.snd_soc_codec* %187, i32 %188, i32 %189)
  %191 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %192 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.wm9081_priv*, %struct.wm9081_priv** %4, align 8
  %195 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @dev_dbg(i32 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %9, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %186, %149, %123, %85
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @wm9081_set_fll(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
