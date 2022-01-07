; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_next_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips32_next_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips32_next_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips32_next_pc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @mips_fetch_instruction(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 3758096384
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %84

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @itype_op(i64 %17)
  %19 = ashr i32 %18, 2
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @itype_op(i64 %22)
  %24 = and i32 %23, 3
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %30 [
    i32 0, label %26
    i32 1, label %27
    i32 2, label %28
    i32 3, label %29
  ]

26:                                               ; preds = %21
  br label %156

27:                                               ; preds = %21
  br label %177

28:                                               ; preds = %21
  br label %105

29:                                               ; preds = %21
  br label %218

30:                                               ; preds = %21
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30
  br label %83

34:                                               ; preds = %16
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @itype_op(i64 %35)
  %37 = icmp eq i32 %36, 17
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @itype_rs(i64 %39)
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @itype_rt(i64 %43)
  %45 = and i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @itype_rt(i64 %46)
  %48 = ashr i32 %47, 2
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @current_gdbarch, align 4
  %50 = call %struct.TYPE_2__* @mips_regnum(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @read_signed_register(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 14
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 23
  %59 = and i32 %58, 1
  %60 = or i32 %56, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 1
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %42
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @mips32_relative_offset(i64 %68)
  %70 = add nsw i64 %69, 4
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %42
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 8
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %67
  br label %82

79:                                               ; preds = %38, %34
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %78
  br label %83

83:                                               ; preds = %82, %33
  br label %238

84:                                               ; preds = %1
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @itype_op(i64 %85)
  %87 = and i32 %86, 7
  store i32 %87, i32* %4, align 4
  switch i32 %87, label %217 [
    i32 0, label %88
    i32 1, label %100
    i32 2, label %143
    i32 3, label %143
    i32 4, label %155
    i32 5, label %176
    i32 6, label %197
    i32 7, label %216
  ]

88:                                               ; preds = %84
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @rtype_funct(i64 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  switch i32 %91, label %96 [
    i32 8, label %92
    i32 9, label %92
  ]

92:                                               ; preds = %88, %88
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @rtype_rs(i64 %93)
  %95 = call i32 @read_signed_register(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %237

100:                                              ; preds = %84
  %101 = load i64, i64* %3, align 8
  %102 = call i32 @itype_rt(i64 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  switch i32 %103, label %139 [
    i32 0, label %104
    i32 2, label %104
    i32 16, label %104
    i32 18, label %104
    i32 1, label %122
    i32 3, label %122
    i32 17, label %122
    i32 19, label %122
  ]

104:                                              ; preds = %100, %100, %100, %100
  br label %105

105:                                              ; preds = %104, %28
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @itype_rs(i64 %106)
  %108 = call i32 @read_signed_register(i32 %107)
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i64, i64* %3, align 8
  %112 = call i64 @mips32_relative_offset(i64 %111)
  %113 = add nsw i64 %112, 4
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %2, align 4
  br label %121

118:                                              ; preds = %105
  %119 = load i32, i32* %2, align 4
  %120 = add nsw i32 %119, 8
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %110
  br label %142

122:                                              ; preds = %100, %100, %100, %100
  %123 = load i64, i64* %3, align 8
  %124 = call i32 @itype_rs(i64 %123)
  %125 = call i32 @read_signed_register(i32 %124)
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i64, i64* %3, align 8
  %129 = call i64 @mips32_relative_offset(i64 %128)
  %130 = add nsw i64 %129, 4
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %2, align 4
  br label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 8
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %135, %127
  br label %142

139:                                              ; preds = %100
  %140 = load i32, i32* %2, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %138, %121
  br label %237

143:                                              ; preds = %84, %84
  %144 = load i64, i64* %3, align 8
  %145 = call i32 @jtype_target(i64 %144)
  %146 = shl i32 %145, 2
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %9, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 4
  %151 = and i32 %150, -268435456
  %152 = zext i32 %151 to i64
  %153 = add i64 %148, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %2, align 4
  br label %237

155:                                              ; preds = %84
  br label %156

156:                                              ; preds = %155, %26
  %157 = load i64, i64* %3, align 8
  %158 = call i32 @itype_rs(i64 %157)
  %159 = call i32 @read_signed_register(i32 %158)
  %160 = load i64, i64* %3, align 8
  %161 = call i32 @itype_rt(i64 %160)
  %162 = call i32 @read_signed_register(i32 %161)
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load i64, i64* %3, align 8
  %166 = call i64 @mips32_relative_offset(i64 %165)
  %167 = add nsw i64 %166, 4
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %2, align 4
  br label %175

172:                                              ; preds = %156
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 8
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %172, %164
  br label %237

176:                                              ; preds = %84
  br label %177

177:                                              ; preds = %176, %27
  %178 = load i64, i64* %3, align 8
  %179 = call i32 @itype_rs(i64 %178)
  %180 = call i32 @read_signed_register(i32 %179)
  %181 = load i64, i64* %3, align 8
  %182 = call i32 @itype_rt(i64 %181)
  %183 = call i32 @read_signed_register(i32 %182)
  %184 = icmp ne i32 %180, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load i64, i64* %3, align 8
  %187 = call i64 @mips32_relative_offset(i64 %186)
  %188 = add nsw i64 %187, 4
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %2, align 4
  br label %196

193:                                              ; preds = %177
  %194 = load i32, i32* %2, align 4
  %195 = add nsw i32 %194, 8
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %185
  br label %237

197:                                              ; preds = %84
  %198 = load i64, i64* %3, align 8
  %199 = call i32 @itype_rs(i64 %198)
  %200 = icmp sle i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @read_signed_register(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load i64, i64* %3, align 8
  %206 = call i64 @mips32_relative_offset(i64 %205)
  %207 = add nsw i64 %206, 4
  %208 = load i32, i32* %2, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %2, align 4
  br label %215

212:                                              ; preds = %197
  %213 = load i32, i32* %2, align 4
  %214 = add nsw i32 %213, 8
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %212, %204
  br label %237

216:                                              ; preds = %84
  br label %217

217:                                              ; preds = %84, %216
  br label %218

218:                                              ; preds = %217, %29
  %219 = load i64, i64* %3, align 8
  %220 = call i32 @itype_rs(i64 %219)
  %221 = icmp sgt i32 %220, 0
  %222 = zext i1 %221 to i32
  %223 = call i32 @read_signed_register(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %218
  %226 = load i64, i64* %3, align 8
  %227 = call i64 @mips32_relative_offset(i64 %226)
  %228 = add nsw i64 %227, 4
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %228
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %2, align 4
  br label %236

233:                                              ; preds = %218
  %234 = load i32, i32* %2, align 4
  %235 = add nsw i32 %234, 8
  store i32 %235, i32* %2, align 4
  br label %236

236:                                              ; preds = %233, %225
  br label %237

237:                                              ; preds = %236, %215, %196, %175, %143, %142, %99
  br label %238

238:                                              ; preds = %237, %83
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i64 @mips_fetch_instruction(i32) #1

declare dso_local i32 @itype_op(i64) #1

declare dso_local i32 @itype_rs(i64) #1

declare dso_local i32 @itype_rt(i64) #1

declare dso_local i32 @read_signed_register(i32) #1

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

declare dso_local i64 @mips32_relative_offset(i64) #1

declare dso_local i32 @rtype_funct(i64) #1

declare dso_local i32 @rtype_rs(i64) #1

declare dso_local i32 @jtype_target(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
