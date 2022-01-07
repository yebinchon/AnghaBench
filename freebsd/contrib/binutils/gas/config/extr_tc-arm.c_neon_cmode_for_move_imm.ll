; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_cmode_for_move_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_cmode_for_move_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NT_float = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*, i32, i32)* @neon_cmode_for_move_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neon_cmode_for_move_imm(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NT_float, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @FAIL, align 4
  store i32 %23, i32* %8, align 4
  br label %205

24:                                               ; preds = %19, %7
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @NT_float, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @is_quarter_float(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 32
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @FAIL, align 4
  store i32 %43, i32* %8, align 4
  br label %205

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @neon_qfloat_bits(i32 %45)
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  store i32 15, i32* %8, align 4
  br label %205

48:                                               ; preds = %32, %28, %24
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 64
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @neon_bits_same_in_bytes(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @neon_bits_same_in_bytes(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @FAIL, align 4
  store i32 %64, i32* %8, align 4
  br label %205

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @neon_squash_bits(i32 %66)
  %68 = shl i32 %67, 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @neon_squash_bits(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %13, align 8
  store i32 1, i32* %73, align 4
  store i32 14, i32* %8, align 4
  br label %205

74:                                               ; preds = %55, %51
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @FAIL, align 4
  store i32 %79, i32* %8, align 4
  br label %205

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %48
  %82 = load i32, i32* %14, align 4
  %83 = icmp sge i32 %82, 32
  br i1 %83, label %84, label %157

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %12, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %8, align 4
  br label %205

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 65280
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = lshr i32 %98, 8
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  store i32 2, i32* %8, align 4
  br label %205

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 16711680
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = lshr i32 %107, 16
  %109 = load i32*, i32** %12, align 8
  store i32 %108, i32* %109, align 4
  store i32 4, i32* %8, align 4
  br label %205

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, -16777216
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = lshr i32 %116, 24
  %118 = load i32*, i32** %12, align 8
  store i32 %117, i32* %118, align 4
  store i32 6, i32* %8, align 4
  br label %205

119:                                              ; preds = %110
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 65280
  %123 = or i32 %122, 255
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = lshr i32 %126, 8
  %128 = and i32 %127, 255
  %129 = load i32*, i32** %12, align 8
  store i32 %128, i32* %129, align 4
  store i32 12, i32* %8, align 4
  br label %205

130:                                              ; preds = %119
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, 16711680
  %134 = or i32 %133, 65535
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* %9, align 4
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = load i32*, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  store i32 13, i32* %8, align 4
  br label %205

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, 65535
  %149 = load i32, i32* %9, align 4
  %150 = lshr i32 %149, 16
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @FAIL, align 4
  store i32 %153, i32* %8, align 4
  br label %205

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, 65535
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %154, %81
  %158 = load i32, i32* %14, align 4
  %159 = icmp sge i32 %158, 16
  br i1 %159, label %160, label %189

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = and i32 %162, 255
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %12, align 8
  store i32 %166, i32* %167, align 4
  store i32 8, i32* %8, align 4
  br label %205

168:                                              ; preds = %160
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 65280
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* %9, align 4
  %175 = lshr i32 %174, 8
  %176 = load i32*, i32** %12, align 8
  store i32 %175, i32* %176, align 4
  store i32 10, i32* %8, align 4
  br label %205

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = and i32 %179, 255
  %181 = load i32, i32* %9, align 4
  %182 = lshr i32 %181, 8
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @FAIL, align 4
  store i32 %185, i32* %8, align 4
  br label %205

186:                                              ; preds = %178
  %187 = load i32, i32* %9, align 4
  %188 = and i32 %187, 255
  store i32 %188, i32* %9, align 4
  br label %189

189:                                              ; preds = %186, %157
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 255
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i32*, i32** %13, align 8
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @FAIL, align 4
  store i32 %199, i32* %8, align 4
  br label %205

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = load i32*, i32** %12, align 8
  store i32 %201, i32* %202, align 4
  store i32 14, i32* %8, align 4
  br label %205

203:                                              ; preds = %189
  %204 = load i32, i32* @FAIL, align 4
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %203, %200, %198, %184, %173, %165, %152, %136, %125, %115, %106, %97, %89, %78, %65, %63, %44, %42, %22
  %206 = load i32, i32* %8, align 4
  ret i32 %206
}

declare dso_local i64 @is_quarter_float(i32) #1

declare dso_local i32 @neon_qfloat_bits(i32) #1

declare dso_local i64 @neon_bits_same_in_bytes(i32) #1

declare dso_local i32 @neon_squash_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
