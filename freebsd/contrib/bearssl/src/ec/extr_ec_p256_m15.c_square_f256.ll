; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_square_f256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_square_f256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @square_f256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @square_f256(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [40 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @square20(i32* %9, i32* %10)
  store i32 39, i32* %7, align 4
  br label %12

12:                                               ; preds = %96, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 20
  br i1 %14, label %15, label %99

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @ARSH(i32 %20, i32 6)
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %21
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 7
  %32 = and i32 %31, 8191
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ARSH(i32 %39, i32 12)
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 1
  %51 = and i32 %50, 8191
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @ARSH(i32 %58, i32 4)
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 12
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %59
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 9
  %70 = and i32 %69, 8191
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 13
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @ARSH(i32 %77, i32 9)
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 19
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %78
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 %87, 4
  %89 = and i32 %88, 8191
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 20
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %15
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %7, align 4
  br label %12

99:                                               ; preds = %12
  %100 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %101 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %102 = call i32 @norm13(i32* %100, i32* %101, i32 20)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = shl i32 %103, 4
  %105 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 19
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 9
  %108 = or i32 %104, %107
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 19
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 511
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 3
  %114 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 17
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %6, align 4
  %118 = shl i32 %117, 10
  %119 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 14
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, %118
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %6, align 4
  %123 = shl i32 %122, 5
  %124 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 7
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %6, align 4
  %128 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = add nsw i32 %129, %127
  store i32 %130, i32* %128, align 16
  %131 = load i32, i32* %6, align 4
  %132 = ashr i32 %131, 31
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = sub nsw i32 %135, %133
  store i32 %136, i32* %134, align 16
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 5
  %139 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 7
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %6, align 4
  %143 = shl i32 %142, 10
  %144 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 14
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, %143
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %6, align 4
  %148 = shl i32 %147, 3
  %149 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 17
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %150, %148
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %6, align 4
  %153 = shl i32 %152, 9
  %154 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 19
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %153
  store i32 %156, i32* %154, align 4
  %157 = load i32*, i32** %3, align 8
  %158 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %159 = call i32 @norm13(i32* %157, i32* %158, i32 20)
  ret void
}

declare dso_local i32 @square20(i32*, i32*) #1

declare dso_local i64 @ARSH(i32, i32) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
