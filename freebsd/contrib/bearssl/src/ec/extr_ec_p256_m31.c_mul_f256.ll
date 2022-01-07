; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_mul_f256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_mul_f256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @mul_f256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mul_f256(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [18 x i32], align 16
  %8 = alloca [18 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 0
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @mul9(i32* %16, i32* %17, i32* %18)
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %31, %3
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 18
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %20

34:                                               ; preds = %20
  store i32 17, i32* %13, align 4
  br label %35

35:                                               ; preds = %111, %34
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 9
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ARSHW(i32 %43, i32 2)
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %14, align 4
  %52 = shl i32 %51, 28
  %53 = and i32 %52, 1073741823
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @ARSHW(i32 %60, i32 4)
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 %68, 26
  %70 = and i32 %69, 1073741823
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 3
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @ARSHW(i32 %77, i32 10)
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, 5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %14, align 4
  %86 = shl i32 %85, 20
  %87 = and i32 %86, 1073741823
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, 6
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %87
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @ARSHW(i32 %94, i32 16)
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %14, align 4
  %103 = shl i32 %102, 14
  %104 = and i32 %103, 1073741823
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %105, 9
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %104
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %38
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %13, align 4
  br label %35

114:                                              ; preds = %35
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 9
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 1073741823
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ARSHW(i32 %131, i32 30)
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %115

136:                                              ; preds = %115
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @ARSHW(i32 %137, i32 16)
  store i32 %138, i32* %9, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 8
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 65535
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = shl i32 %144, 6
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %11, align 4
  %151 = shl i32 %150, 12
  %152 = and i32 %151, 1073741823
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 6
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @ARSH(i32 %157, i32 18)
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 7
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %11, align 4
  %164 = shl i32 %163, 14
  %165 = and i32 %164, 1073741823
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 7
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @ARSH(i32 %170, i32 16)
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 31
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %12, align 4
  %184 = shl i32 %183, 6
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %12, align 4
  %190 = shl i32 %189, 12
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 6
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %12, align 4
  %196 = shl i32 %195, 14
  %197 = load i32*, i32** %4, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 7
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %12, align 4
  %202 = shl i32 %201, 16
  %203 = load i32*, i32** %4, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %226, %136
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 9
  br i1 %209, label %210, label %229

210:                                              ; preds = %207
  %211 = load i32*, i32** %4, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %215, %216
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = and i32 %218, 1073741823
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @ARSH(i32 %224, i32 30)
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %207

229:                                              ; preds = %207
  ret void
}

declare dso_local i32 @mul9(i32*, i32*, i32*) #1

declare dso_local i32 @ARSHW(i32, i32) #1

declare dso_local i32 @ARSH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
