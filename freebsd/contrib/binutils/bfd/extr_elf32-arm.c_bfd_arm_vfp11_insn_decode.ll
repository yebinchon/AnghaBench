; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_arm_vfp11_insn_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-arm.c_bfd_arm_vfp11_insn_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VFP11_BAD = common dso_local global i32 0, align 4
@VFP11_FMAC = common dso_local global i32 0, align 4
@VFP11_DS = common dso_local global i32 0, align 4
@VFP11_LS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @bfd_arm_vfp11_insn_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfd_arm_vfp11_insn_decode(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* @VFP11_BAD, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 3840
  %27 = icmp eq i32 %26, 2816
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 251661840
  %32 = icmp eq i32 %31, 234883584
  br i1 %32, label %33, label %131

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @bfd_arm_vfp11_regno(i32 %34, i32 %35, i32 12, i32 22)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @bfd_arm_vfp11_regno(i32 %38, i32 %39, i32 0, i32 5)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 8388608
  %44 = lshr i32 %43, 20
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 3145728
  %47 = lshr i32 %46, 19
  %48 = or i32 %44, %47
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 64
  %51 = lshr i32 %50, 6
  %52 = or i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  switch i32 %53, label %128 [
    i32 0, label %54
    i32 1, label %54
    i32 2, label %54
    i32 3, label %54
    i32 4, label %72
    i32 5, label %72
    i32 6, label %72
    i32 7, label %72
    i32 8, label %74
    i32 15, label %90
  ]

54:                                               ; preds = %33, %33, %33, %33
  %55 = load i32, i32* @VFP11_FMAC, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @bfd_arm_vfp11_write_mask(i32* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @bfd_arm_vfp11_regno(i32 %62, i32 %63, i32 16, i32 7)
  %65 = ptrtoint i8* %64 to i32
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 3, i32* %71, align 4
  br label %130

72:                                               ; preds = %33, %33, %33, %33
  %73 = load i32, i32* @VFP11_FMAC, align 4
  store i32 %73, i32* %10, align 4
  br label %76

74:                                               ; preds = %33
  %75 = load i32, i32* @VFP11_DS, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @bfd_arm_vfp11_write_mask(i32* %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @bfd_arm_vfp11_regno(i32 %80, i32 %81, i32 16, i32 7)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 2, i32* %89, align 4
  br label %130

90:                                               ; preds = %33
  %91 = load i32, i32* %6, align 4
  %92 = lshr i32 %91, 15
  %93 = and i32 %92, 30
  %94 = load i32, i32* %6, align 4
  %95 = lshr i32 %94, 7
  %96 = and i32 %95, 1
  %97 = or i32 %93, %96
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  switch i32 %98, label %125 [
    i32 0, label %99
    i32 1, label %99
    i32 2, label %99
    i32 8, label %99
    i32 9, label %99
    i32 10, label %99
    i32 11, label %99
    i32 16, label %99
    i32 17, label %99
    i32 24, label %99
    i32 25, label %99
    i32 26, label %99
    i32 27, label %99
    i32 3, label %102
    i32 15, label %107
  ]

99:                                               ; preds = %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90
  %100 = load i32*, i32** %9, align 8
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @VFP11_FMAC, align 4
  store i32 %101, i32* %10, align 4
  br label %127

102:                                              ; preds = %90
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @bfd_arm_vfp11_write_mask(i32* %103, i32 %104)
  %106 = load i32, i32* @VFP11_DS, align 4
  store i32 %106, i32* %10, align 4
  br label %127

107:                                              ; preds = %90
  store i32 0, i32* %16, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @bfd_arm_vfp11_write_mask(i32* %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, 256
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load i32, i32* %16, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @VFP11_FMAC, align 4
  store i32 %124, i32* %10, align 4
  br label %127

125:                                              ; preds = %90
  %126 = load i32, i32* @VFP11_BAD, align 4
  store i32 %126, i32* %5, align 4
  br label %238

127:                                              ; preds = %121, %102, %99
  br label %130

128:                                              ; preds = %33
  %129 = load i32, i32* @VFP11_BAD, align 4
  store i32 %129, i32* %5, align 4
  br label %238

130:                                              ; preds = %127, %76, %54
  br label %236

131:                                              ; preds = %4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 266342096
  %134 = icmp eq i32 %133, 205523472
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i8* @bfd_arm_vfp11_regno(i32 %136, i32 %137, i32 0, i32 5)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 1048576
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %135
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @bfd_arm_vfp11_write_mask(i32* %147, i32 %148)
  br label %158

150:                                              ; preds = %143
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %17, align 4
  %153 = call i32 @bfd_arm_vfp11_write_mask(i32* %151, i32 %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %17, align 4
  %156 = add i32 %155, 1
  %157 = call i32 @bfd_arm_vfp11_write_mask(i32* %154, i32 %156)
  br label %158

158:                                              ; preds = %150, %146
  br label %159

159:                                              ; preds = %158, %135
  %160 = load i32, i32* @VFP11_LS, align 4
  store i32 %160, i32* %10, align 4
  br label %235

161:                                              ; preds = %131
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 235933184
  %164 = icmp eq i32 %163, 202377728
  br i1 %164, label %165, label %213

165:                                              ; preds = %161
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i8* @bfd_arm_vfp11_regno(i32 %166, i32 %167, i32 12, i32 22)
  %169 = ptrtoint i8* %168 to i32
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %6, align 4
  %171 = lshr i32 %170, 21
  %172 = and i32 %171, 1
  %173 = load i32, i32* %6, align 4
  %174 = lshr i32 %173, 23
  %175 = and i32 %174, 3
  %176 = shl i32 %175, 1
  %177 = or i32 %172, %176
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  switch i32 %178, label %209 [
    i32 0, label %179
    i32 2, label %181
    i32 3, label %181
    i32 5, label %181
    i32 4, label %205
    i32 6, label %205
  ]

179:                                              ; preds = %165
  %180 = call i32 (...) @abort() #3
  unreachable

181:                                              ; preds = %165, %165, %165
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, 255
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %21, align 4
  %188 = lshr i32 %187, 1
  store i32 %188, i32* %21, align 4
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %20, align 4
  br label %191

191:                                              ; preds = %201, %189
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %21, align 4
  %195 = add i32 %193, %194
  %196 = icmp ult i32 %192, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %20, align 4
  %200 = call i32 @bfd_arm_vfp11_write_mask(i32* %198, i32 %199)
  br label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %20, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %20, align 4
  br label %191

204:                                              ; preds = %191
  br label %211

205:                                              ; preds = %165, %165
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @bfd_arm_vfp11_write_mask(i32* %206, i32 %207)
  br label %211

209:                                              ; preds = %165
  %210 = load i32, i32* @VFP11_BAD, align 4
  store i32 %210, i32* %5, align 4
  br label %238

211:                                              ; preds = %205, %204
  %212 = load i32, i32* @VFP11_LS, align 4
  store i32 %212, i32* %10, align 4
  br label %234

213:                                              ; preds = %161
  %214 = load i32, i32* %6, align 4
  %215 = and i32 %214, 252710416
  %216 = icmp eq i32 %215, 234883600
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load i32, i32* %6, align 4
  %219 = lshr i32 %218, 21
  %220 = and i32 %219, 7
  store i32 %220, i32* %22, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i8* @bfd_arm_vfp11_regno(i32 %221, i32 %222, i32 16, i32 7)
  %224 = ptrtoint i8* %223 to i32
  store i32 %224, i32* %23, align 4
  %225 = load i32, i32* %22, align 4
  switch i32 %225, label %231 [
    i32 0, label %226
    i32 1, label %226
    i32 7, label %230
  ]

226:                                              ; preds = %217, %217
  %227 = load i32*, i32** %7, align 8
  %228 = load i32, i32* %23, align 4
  %229 = call i32 @bfd_arm_vfp11_write_mask(i32* %227, i32 %228)
  br label %231

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %217, %230, %226
  %232 = load i32, i32* @VFP11_LS, align 4
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %231, %213
  br label %234

234:                                              ; preds = %233, %211
  br label %235

235:                                              ; preds = %234, %159
  br label %236

236:                                              ; preds = %235, %130
  %237 = load i32, i32* %10, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %209, %128, %125
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i8* @bfd_arm_vfp11_regno(i32, i32, i32, i32) #1

declare dso_local i32 @bfd_arm_vfp11_write_mask(i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
