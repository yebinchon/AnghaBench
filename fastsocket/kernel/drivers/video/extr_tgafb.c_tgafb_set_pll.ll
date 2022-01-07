; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_set_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tga_par = type { i32 }

@TGA_CLOCK_REG = common dso_local global i32 0, align 4
@TGA_PLL_MAX_FREQ = common dso_local global i32 0, align 4
@TGA_PLL_BASE_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tga_par*, i32)* @tgafb_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_set_pll(%struct.tga_par* %0, i32 %1) #0 {
  %3 = alloca %struct.tga_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tga_par* %0, %struct.tga_par** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 34, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 30, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %27, %2
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 12
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @TGA_CLOCK_REG, align 4
  %26 = call i32 @TGA_WRITE_REG(%struct.tga_par* %20, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TGA_PLL_MAX_FREQ, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @TGA_PLL_MAX_FREQ, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TGA_PLL_MAX_FREQ, align 4
  %39 = sdiv i32 %38, 2
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TGA_PLL_MAX_FREQ, align 4
  %45 = sdiv i32 %44, 4
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %49

48:                                               ; preds = %42
  store i32 2, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %41
  %51 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 1
  %54 = load i32, i32* @TGA_CLOCK_REG, align 4
  %55 = call i32 @TGA_WRITE_REG(%struct.tga_par* %51, i32 %53, i32 %54)
  %56 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 1
  %59 = load i32, i32* @TGA_CLOCK_REG, align 4
  %60 = call i32 @TGA_WRITE_REG(%struct.tga_par* %56, i32 %58, i32 %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %68, %50
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %66 = load i32, i32* @TGA_CLOCK_REG, align 4
  %67 = call i32 @TGA_WRITE_REG(%struct.tga_par* %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %61

71:                                               ; preds = %61
  %72 = load i32, i32* %4, align 4
  %73 = icmp sle i32 %72, 120000
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %76 = load i32, i32* @TGA_CLOCK_REG, align 4
  %77 = call i32 @TGA_WRITE_REG(%struct.tga_par* %75, i32 0, i32 %76)
  %78 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %79 = load i32, i32* @TGA_CLOCK_REG, align 4
  %80 = call i32 @TGA_WRITE_REG(%struct.tga_par* %78, i32 0, i32 %79)
  br label %99

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = icmp sle i32 %82, 200000
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %86 = load i32, i32* @TGA_CLOCK_REG, align 4
  %87 = call i32 @TGA_WRITE_REG(%struct.tga_par* %85, i32 1, i32 %86)
  %88 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %89 = load i32, i32* @TGA_CLOCK_REG, align 4
  %90 = call i32 @TGA_WRITE_REG(%struct.tga_par* %88, i32 0, i32 %89)
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %93 = load i32, i32* @TGA_CLOCK_REG, align 4
  %94 = call i32 @TGA_WRITE_REG(%struct.tga_par* %92, i32 0, i32 %93)
  %95 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %96 = load i32, i32* @TGA_CLOCK_REG, align 4
  %97 = call i32 @TGA_WRITE_REG(%struct.tga_par* %95, i32 1, i32 %96)
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %98, %74
  %100 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %101 = load i32, i32* @TGA_CLOCK_REG, align 4
  %102 = call i32 @TGA_WRITE_REG(%struct.tga_par* %100, i32 1, i32 %101)
  %103 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %104 = load i32, i32* @TGA_CLOCK_REG, align 4
  %105 = call i32 @TGA_WRITE_REG(%struct.tga_par* %103, i32 0, i32 %104)
  %106 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %107 = load i32, i32* @TGA_CLOCK_REG, align 4
  %108 = call i32 @TGA_WRITE_REG(%struct.tga_par* %106, i32 0, i32 %107)
  %109 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %110 = load i32, i32* @TGA_CLOCK_REG, align 4
  %111 = call i32 @TGA_WRITE_REG(%struct.tga_par* %109, i32 1, i32 %110)
  %112 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %113 = load i32, i32* @TGA_CLOCK_REG, align 4
  %114 = call i32 @TGA_WRITE_REG(%struct.tga_par* %112, i32 0, i32 %113)
  %115 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %116 = load i32, i32* @TGA_CLOCK_REG, align 4
  %117 = call i32 @TGA_WRITE_REG(%struct.tga_par* %115, i32 1, i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* @TGA_PLL_BASE_FREQ, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* @TGA_PLL_MAX_FREQ, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sdiv i32 7, %124
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %99
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %183, %129
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 449
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 7
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %142

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %139
  %143 = phi i32 [ 7, %139 ], [ %141, %140 ]
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %180, %142
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 449
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi i1 [ false, %144 ], [ %152, %150 ]
  br i1 %154, label %155, label %183

155:                                              ; preds = %153
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 3
  %158 = sdiv i32 %157, 7
  %159 = sub nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  %162 = mul nsw i32 %161, 7
  %163 = call i32 @DIFFCHECK(i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  %168 = mul nsw i32 %167, 7
  %169 = call i32 @DIFFCHECK(i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = sdiv i32 %170, 6
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %5, align 4
  %174 = srem i32 %173, 6
  store i32 %174, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %155
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @DIFFCHECK(i32 %177)
  br label %179

179:                                              ; preds = %176, %155
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %144

183:                                              ; preds = %153
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %133

189:                                              ; preds = %133
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %203, %189
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, 8
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %10, align 4
  %199 = ashr i32 %197, %198
  %200 = and i32 %199, 1
  %201 = load i32, i32* @TGA_CLOCK_REG, align 4
  %202 = call i32 @TGA_WRITE_REG(%struct.tga_par* %196, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %192

206:                                              ; preds = %192
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %218, %206
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %208, 8
  br i1 %209, label %210, label %221

210:                                              ; preds = %207
  %211 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %10, align 4
  %214 = ashr i32 %212, %213
  %215 = and i32 %214, 1
  %216 = load i32, i32* @TGA_CLOCK_REG, align 4
  %217 = call i32 @TGA_WRITE_REG(%struct.tga_par* %211, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %210
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %207

221:                                              ; preds = %207
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %233, %221
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 7
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* %10, align 4
  %229 = ashr i32 %227, %228
  %230 = and i32 %229, 1
  %231 = load i32, i32* @TGA_CLOCK_REG, align 4
  %232 = call i32 @TGA_WRITE_REG(%struct.tga_par* %226, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %222

236:                                              ; preds = %222
  %237 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %238 = load i32, i32* %15, align 4
  %239 = ashr i32 %238, 7
  %240 = and i32 %239, 1
  %241 = or i32 %240, 2
  %242 = load i32, i32* @TGA_CLOCK_REG, align 4
  %243 = call i32 @TGA_WRITE_REG(%struct.tga_par* %237, i32 %241, i32 %242)
  ret void
}

declare dso_local i32 @TGA_WRITE_REG(%struct.tga_par*, i32, i32) #1

declare dso_local i32 @DIFFCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
