; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@F256 = common dso_local global i32* null, align 8
@P256_B = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64)* @p256_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_decode(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i32], align 16
  %10 = alloca [20 x i32], align 16
  %11 = alloca [20 x i32], align 16
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 65
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @NEQ(i8 zeroext %22, i32 4)
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @be8_to_le13(i32* %24, i8* %26, i32 32)
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 19
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 33
  %32 = call i32 @be8_to_le13(i32* %29, i8* %31, i32 32)
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 19
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %35 = call i32 @reduce_final_f256(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %39 = call i32 @reduce_final_f256(i32* %38)
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %44 = call i32 @square_f256(i32* %42, i32* %43)
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %48 = call i32 @mul_f256(i32* %45, i32* %46, i32* %47)
  %49 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %50 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %51 = call i32 @square_f256(i32* %49, i32* %50)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %84, %18
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 20
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i32*, i32** @F256, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 3
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MUL15(i32 3, i32 %65)
  %67 = sub nsw i32 %61, %66
  %68 = load i32*, i32** @P256_B, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %73, %77
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %55
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %52

87:                                               ; preds = %52
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %89 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %90 = call i32 @norm13(i32* %88, i32* %89, i32 20)
  %91 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %92 = call i32 @reduce_f256(i32* %91)
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %94 = call i32 @reduce_final_f256(i32* %93)
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %105, %87
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 20
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %95

108:                                              ; preds = %95
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %113 = call i32 @memcpy(i32 %111, i32* %112, i32 80)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %118 = call i32 @memcpy(i32 %116, i32* %117, i32 80)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @memset(i32* %121, i32 0, i32 8)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @EQ(i32 %127, i32 0)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %108, %17
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @NEQ(i8 zeroext, i32) #1

declare dso_local i32 @be8_to_le13(i32*, i8*, i32) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @MUL15(i32, i32) #1

declare dso_local i32 @norm13(i32*, i32*, i32) #1

declare dso_local i32 @reduce_f256(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
