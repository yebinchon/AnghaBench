; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_mul_f256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_mul_f256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @mul_f256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mul_f256(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [40 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @mul20(i32* %11, i32* %12, i32* %13)
  store i32 39, i32* %9, align 4
  br label %15

15:                                               ; preds = %99, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 20
  br i1 %17, label %18, label %102

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @ARSH(i32 %23, i32 6)
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %24
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 7
  %35 = and i32 %34, 8191
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @ARSH(i32 %42, i32 12)
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %43
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 1
  %54 = and i32 %53, 8191
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 5
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @ARSH(i32 %61, i32 4)
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 12
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %62
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 9
  %73 = and i32 %72, 8191
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 13
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @ARSH(i32 %80, i32 9)
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 19
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %81
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 %90, 4
  %92 = and i32 %91, 8191
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 20
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %18
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %9, align 4
  br label %15

102:                                              ; preds = %15
  %103 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %104 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %105 = call i32 @norm13(i32* %103, i32* %104, i32 20)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = shl i32 %106, 4
  %108 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 19
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 9
  %111 = or i32 %107, %110
  store i32 %111, i32* %8, align 4
  %112 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 19
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 511
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 %115, 3
  %117 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 17
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %8, align 4
  %121 = shl i32 %120, 10
  %122 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 14
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, %121
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 %125, 5
  %127 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 7
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %8, align 4
  %131 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = add nsw i32 %132, %130
  store i32 %133, i32* %131, align 16
  %134 = load i32, i32* %8, align 4
  %135 = ashr i32 %134, 31
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = sub nsw i32 %138, %136
  store i32 %139, i32* %137, align 16
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 %140, 5
  %142 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 7
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 %145, 10
  %147 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 14
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %146
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* %8, align 4
  %151 = shl i32 %150, 3
  %152 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 17
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 %155, 9
  %157 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 19
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, %156
  store i32 %159, i32* %157, align 4
  %160 = load i32*, i32** %4, align 8
  %161 = getelementptr inbounds [40 x i32], [40 x i32]* %7, i64 0, i64 0
  %162 = call i32 @norm13(i32* %160, i32* %161, i32 20)
  ret void
}

declare dso_local i32 @mul20(i32*, i32*, i32*) #1

declare dso_local i64 @ARSH(i32, i32) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
