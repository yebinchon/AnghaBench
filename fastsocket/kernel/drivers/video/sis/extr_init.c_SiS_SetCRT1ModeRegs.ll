; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetCRT1ModeRegs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetCRT1ModeRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i16, i64, i64, i16*, i32, i16, i32, i32, %struct.TYPE_3__*, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i16 }
%struct.TYPE_4__ = type { i16 }

@ModeEGA = common dso_local global i64 0, align 8
@ModeVGA = common dso_local global i32 0, align 4
@InterlaceMode = common dso_local global i16 0, align 2
@SIS_300 = common dso_local global i64 0, align 8
@HalfDCLK = common dso_local global i16 0, align 2
@LineCompareOff = common dso_local global i16 0, align 2
@XGI_20 = common dso_local global i64 0, align 8
@ModeText = common dso_local global i64 0, align 8
@Mode16Bpp = common dso_local global i64 0, align 8
@SF_760LFB = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SIS_315PRO = common dso_local global i64 0, align 8
@SIS_330 = common dso_local global i64 0, align 8
@SIS_661 = common dso_local global i64 0, align 8
@XGI_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT1ModeRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT1ModeRegs(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  store i16 0, i16* %10, align 2
  %15 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %16 = load i16, i16* %6, align 2
  %17 = load i16, i16* %7, align 2
  %18 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %15, i16 zeroext %16, i16 zeroext %17)
  store i16 %18, i16* %11, align 2
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 8
  store i16 %26, i16* %10, align 2
  br label %45

27:                                               ; preds = %4
  %28 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %29 = load i16, i16* %6, align 2
  %30 = load i16, i16* %7, align 2
  %31 = call zeroext i16 @SiS_GetResInfo(%struct.SiS_Private* %28, i16 zeroext %29, i16 zeroext %30)
  store i16 %31, i16* %12, align 2
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sgt i32 %33, 19
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 13
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i16, i16* %8, align 2
  %40 = zext i16 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 2
  store i16 %43, i16* %10, align 2
  br label %44

44:                                               ; preds = %35, %27
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SiS_SetRegAND(i32 %48, i32 31, i32 63)
  store i16 0, i16* %9, align 2
  %50 = load i16, i16* %6, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp sgt i32 %51, 19
  br i1 %52, label %53, label %88

53:                                               ; preds = %45
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ModeEGA, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %61, 2
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %9, align 2
  %64 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %65 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @ModeVGA, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = shl i64 %69, 2
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i64
  %73 = or i64 %72, %70
  %74 = trunc i64 %73 to i16
  store i16 %74, i16* %9, align 2
  br label %75

75:                                               ; preds = %59, %53
  %76 = load i16, i16* %10, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @InterlaceMode, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i16, i16* %9, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, 32
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %9, align 2
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %45
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i16, i16* %9, align 2
  %93 = call i32 @SiS_SetRegANDOR(i32 %91, i32 6, i32 192, i16 zeroext %92)
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SIS_300, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %153

99:                                               ; preds = %88
  store i16 0, i16* %9, align 2
  %100 = load i16, i16* %10, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* @InterlaceMode, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %99
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SiS_GetReg(i32 %109, i32 4)
  %111 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %112 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @SiS_GetReg(i32 %113, i32 11)
  %115 = and i32 %114, 192
  %116 = shl i32 %115, 2
  %117 = or i32 %110, %116
  %118 = sub nsw i32 %117, 3
  store i32 %118, i32* %13, align 4
  %119 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %120 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @SiS_GetReg(i32 %121, i32 0)
  %123 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %124 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SiS_GetReg(i32 %125, i32 11)
  %127 = and i32 %126, 3
  %128 = shl i32 %127, 8
  %129 = or i32 %122, %128
  %130 = add nsw i32 %129, 5
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = ashr i32 %132, 1
  %134 = sub nsw i32 %131, %133
  %135 = add nsw i32 %134, 3
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %9, align 2
  br label %137

137:                                              ; preds = %106, %99
  %138 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %139 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load i16, i16* %9, align 2
  %142 = zext i16 %141 to i32
  %143 = call i32 @SiS_SetReg(i32 %140, i32 25, i32 %142)
  %144 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %145 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load i16, i16* %9, align 2
  %148 = zext i16 %147 to i32
  %149 = ashr i32 %148, 8
  %150 = and i32 %149, 3
  %151 = trunc i32 %150 to i16
  %152 = call i32 @SiS_SetRegANDOR(i32 %146, i32 26, i32 252, i16 zeroext %151)
  br label %153

153:                                              ; preds = %137, %88
  %154 = load i16, i16* %11, align 2
  %155 = zext i16 %154 to i32
  %156 = load i16, i16* @HalfDCLK, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %162 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @SiS_SetRegOR(i32 %163, i32 1, i32 8)
  br label %165

165:                                              ; preds = %160, %153
  store i16 0, i16* %9, align 2
  %166 = load i16, i16* %11, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, i16* @LineCompareOff, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i16 8, i16* %9, align 2
  br label %173

173:                                              ; preds = %172, %165
  %174 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %175 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SIS_300, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %181 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load i16, i16* %9, align 2
  %184 = call i32 @SiS_SetRegANDOR(i32 %182, i32 15, i32 247, i16 zeroext %183)
  br label %218

185:                                              ; preds = %173
  %186 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %187 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @XGI_20, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load i16, i16* %9, align 2
  %193 = zext i16 %192 to i32
  %194 = or i32 %193, 32
  %195 = trunc i32 %194 to i16
  store i16 %195, i16* %9, align 2
  br label %196

196:                                              ; preds = %191, %185
  %197 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %198 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ModeEGA, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %196
  %203 = load i16, i16* %6, align 2
  %204 = zext i16 %203 to i32
  %205 = icmp sgt i32 %204, 19
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i16, i16* %9, align 2
  %208 = zext i16 %207 to i32
  %209 = or i32 %208, 64
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* %9, align 2
  br label %211

211:                                              ; preds = %206, %202
  br label %212

212:                                              ; preds = %211, %196
  %213 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %214 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = load i16, i16* %9, align 2
  %217 = call i32 @SiS_SetRegANDOR(i32 %215, i32 15, i32 183, i16 zeroext %216)
  br label %218

218:                                              ; preds = %212, %179
  store i16 96, i16* %9, align 2
  %219 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %220 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ModeText, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %240

224:                                              ; preds = %218
  %225 = load i16, i16* %9, align 2
  %226 = zext i16 %225 to i32
  %227 = xor i32 %226, 96
  %228 = trunc i32 %227 to i16
  store i16 %228, i16* %9, align 2
  %229 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %230 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @ModeEGA, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %224
  %235 = load i16, i16* %9, align 2
  %236 = zext i16 %235 to i32
  %237 = xor i32 %236, 160
  %238 = trunc i32 %237 to i16
  store i16 %238, i16* %9, align 2
  br label %239

239:                                              ; preds = %234, %224
  br label %240

240:                                              ; preds = %239, %218
  %241 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %242 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = load i16, i16* %9, align 2
  %245 = call i32 @SiS_SetRegANDOR(i32 %243, i32 33, i32 31, i16 zeroext %244)
  %246 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %247 = load i16, i16* %6, align 2
  %248 = load i16, i16* %8, align 2
  %249 = load i16, i16* %7, align 2
  %250 = call i32 @SiS_SetVCLKState(%struct.SiS_Private* %246, i16 zeroext %247, i16 zeroext %248, i16 zeroext %249)
  ret void
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i16 @SiS_GetResInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegAND(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

declare dso_local i32 @SiS_SetReg(i32, i32, i32) #1

declare dso_local i32 @SiS_SetRegOR(i32, i32, i32) #1

declare dso_local i32 @SiS_SetVCLKState(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
