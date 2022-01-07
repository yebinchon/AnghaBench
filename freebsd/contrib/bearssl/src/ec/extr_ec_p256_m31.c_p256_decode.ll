; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@P256_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64)* @p256_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_decode(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [9 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca [9 x i32], align 16
  %12 = alloca [9 x i32], align 16
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
  br label %108

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @NEQ(i8 zeroext %22, i32 4)
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @be8_to_le30(i32* %24, i8* %26, i32 32)
  %28 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 %27, i32* %28, align 16
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 33
  %32 = call i32 @be8_to_le30(i32* %29, i8* %31, i32 32)
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 8
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %35 = call i32 @reduce_final_f256(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %39 = call i32 @reduce_final_f256(i32* %38)
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  %42 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %44 = call i32 @square_f256(i32* %42, i32* %43)
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %48 = call i32 @mul_f256(i32* %45, i32* %46, i32* %47)
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %12, i64 0, i64 0
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %51 = call i32 @square_f256(i32* %49, i32* %50)
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %55 = call i32 @sub_f256(i32* %52, i32* %53, i32* %54)
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %59 = call i32 @sub_f256(i32* %56, i32* %57, i32* %58)
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %61 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %63 = call i32 @sub_f256(i32* %60, i32* %61, i32* %62)
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %66 = load i32, i32* @P256_B, align 4
  %67 = call i32 @add_f256(i32* %64, i32* %65, i32 %66)
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %12, i64 0, i64 0
  %71 = call i32 @sub_f256(i32* %68, i32* %69, i32* %70)
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %73 = call i32 @reduce_final_f256(i32* %72)
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %84, %18
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 9
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %74

87:                                               ; preds = %74
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %92 = call i32 @memcpy(i32 %90, i32* %91, i32 36)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %97 = call i32 @memcpy(i32 %95, i32* %96, i32 36)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @memset(i32* %100, i32 0, i32 8)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @EQ(i32 %106, i32 0)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %87, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @NEQ(i8 zeroext, i32) #1

declare dso_local i32 @be8_to_le30(i32*, i8*, i32) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @sub_f256(i32*, i32*, i32*) #1

declare dso_local i32 @add_f256(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
