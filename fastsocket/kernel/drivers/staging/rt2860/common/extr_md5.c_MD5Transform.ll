; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_MD5Transform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_md5.c_MD5Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5Transform.LShiftVal = internal global [16 x i32] [i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21], align 16
@MD5Transform.MD5Table = internal global [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@MD5_F1 = common dso_local global i32 0, align 4
@MD5_F2 = common dso_local global i32 0, align 4
@MD5_F3 = common dso_local global i32 0, align 4
@MD5_F4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MD5Transform(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %9

24:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i32, i32* @MD5_F1, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* @MD5Transform.MD5Table, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 3
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* @MD5Transform.LShiftVal, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MD5Step(i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %42, i32 %46, i32 %51)
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  br label %66

66:                                               ; preds = %28
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %25

69:                                               ; preds = %25
  store i32 16, i32* %8, align 4
  br label %70

70:                                               ; preds = %116, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp ult i32 %71, 32
  br i1 %72, label %73, label %119

73:                                               ; preds = %70
  %74 = load i32, i32* @MD5_F2, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 15
  %86 = mul i32 5, %85
  %87 = add i32 %86, 1
  %88 = and i32 %87, 15
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* @MD5Transform.MD5Table, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 3
  %98 = add i32 4, %97
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* @MD5Transform.LShiftVal, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MD5Step(i32 %74, i32 %76, i32 %78, i32 %80, i32 %82, i32 %91, i32 %95, i32 %101)
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %114, i32* %115, align 16
  br label %116

116:                                              ; preds = %73
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %70

119:                                              ; preds = %70
  store i32 32, i32* %8, align 4
  br label %120

120:                                              ; preds = %166, %119
  %121 = load i32, i32* %8, align 4
  %122 = icmp ult i32 %121, 48
  br i1 %122, label %123, label %169

123:                                              ; preds = %120
  %124 = load i32, i32* @MD5_F3, align 4
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 15
  %136 = mul i32 3, %135
  %137 = add i32 %136, 5
  %138 = and i32 %137, 15
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [64 x i32], [64 x i32]* @MD5Transform.MD5Table, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 3
  %148 = add i32 8, %147
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* @MD5Transform.LShiftVal, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @MD5Step(i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %141, i32 %145, i32 %151)
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %7, align 4
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %159, i32* %160, align 8
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %162 = load i32, i32* %161, align 16
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %7, align 4
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %164, i32* %165, align 16
  br label %166

166:                                              ; preds = %123
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %120

169:                                              ; preds = %120
  store i32 48, i32* %8, align 4
  br label %170

170:                                              ; preds = %215, %169
  %171 = load i32, i32* %8, align 4
  %172 = icmp ult i32 %171, 64
  br i1 %172, label %173, label %218

173:                                              ; preds = %170
  %174 = load i32, i32* @MD5_F4, align 4
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 15
  %186 = mul i32 7, %185
  %187 = and i32 %186, 15
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %8, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [64 x i32], [64 x i32]* @MD5Transform.MD5Table, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %8, align 4
  %196 = and i32 %195, 3
  %197 = add i32 12, %196
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [16 x i32], [16 x i32]* @MD5Transform.LShiftVal, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @MD5Step(i32 %174, i32 %176, i32 %178, i32 %180, i32 %182, i32 %190, i32 %194, i32 %200)
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %7, align 4
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %205, i32* %206, align 4
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %208, i32* %209, align 8
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %7, align 4
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %213, i32* %214, align 16
  br label %215

215:                                              ; preds = %173
  %216 = load i32, i32* %8, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %8, align 4
  br label %170

218:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %219

219:                                              ; preds = %233, %218
  %220 = load i32, i32* %8, align 4
  %221 = icmp ult i32 %220, 4
  br i1 %221, label %222, label %236

222:                                              ; preds = %219
  %223 = load i32, i32* %8, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* %8, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %226
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %222
  %234 = load i32, i32* %8, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %219

236:                                              ; preds = %219
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @MD5Step(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
