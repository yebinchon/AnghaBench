; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_square_f256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_square_f256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @square_f256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @square_f256(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [18 x i32], align 16
  %6 = alloca [18 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @square9(i32* %14, i32* %15)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 18
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %26
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %17

31:                                               ; preds = %17
  store i32 17, i32* %11, align 4
  br label %32

32:                                               ; preds = %108, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 9
  br i1 %34, label %35, label %111

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ARSHW(i32 %40, i32 2)
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %12, align 4
  %49 = shl i32 %48, 28
  %50 = and i32 %49, 1073741823
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %50
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ARSHW(i32 %57, i32 4)
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 26
  %67 = and i32 %66, 1073741823
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @ARSHW(i32 %74, i32 10)
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 %82, 20
  %84 = and i32 %83, 1073741823
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 6
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %84
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ARSHW(i32 %91, i32 16)
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %12, align 4
  %100 = shl i32 %99, 14
  %101 = and i32 %100, 1073741823
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 9
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %101
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %35
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %11, align 4
  br label %32

111:                                              ; preds = %32
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 9
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [18 x i32], [18 x i32]* %6, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, 1073741823
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @ARSHW(i32 %128, i32 30)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ARSHW(i32 %134, i32 16)
  store i32 %135, i32* %7, align 4
  %136 = load i32*, i32** %3, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 65535
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = shl i32 %141, 6
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %9, align 4
  %148 = shl i32 %147, 12
  %149 = and i32 %148, 1073741823
  %150 = load i32*, i32** %3, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 6
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @ARSH(i32 %154, i32 18)
  %156 = load i32*, i32** %3, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %9, align 4
  %161 = shl i32 %160, 14
  %162 = and i32 %161, 1073741823
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @ARSH(i32 %167, i32 16)
  %169 = load i32*, i32** %3, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 8
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %9, align 4
  %174 = ashr i32 %173, 31
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* %10, align 4
  %181 = shl i32 %180, 6
  %182 = load i32*, i32** %3, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %10, align 4
  %187 = shl i32 %186, 12
  %188 = load i32*, i32** %3, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* %10, align 4
  %193 = shl i32 %192, 14
  %194 = load i32*, i32** %3, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 7
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %10, align 4
  %199 = shl i32 %198, 16
  %200 = load i32*, i32** %3, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 8
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  store i32 0, i32* %11, align 4
  br label %204

204:                                              ; preds = %223, %133
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %205, 9
  br i1 %206, label %207, label %226

207:                                              ; preds = %204
  %208 = load i32*, i32** %3, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, 1073741823
  %217 = load i32*, i32** %3, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %216, i32* %220, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @ARSH(i32 %221, i32 30)
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %207
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %204

226:                                              ; preds = %204
  ret void
}

declare dso_local i32 @square9(i32*, i32*) #1

declare dso_local i32 @ARSHW(i32, i32) #1

declare dso_local i32 @ARSH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
