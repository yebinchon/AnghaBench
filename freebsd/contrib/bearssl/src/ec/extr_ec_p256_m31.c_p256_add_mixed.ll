; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_add_mixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_p256_add_mixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @p256_add_mixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p256_add_mixed(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [9 x i32], align 16
  %6 = alloca [9 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca [9 x i32], align 16
  %11 = alloca [9 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memcpy(i32* %14, i32* %17, i32 36)
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memcpy(i32* %19, i32* %22, i32 36)
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @square_f256(i32* %24, i32* %27)
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %34 = call i32 @mul_f256(i32* %29, i32* %32, i32* %33)
  %35 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %40 = call i32 @mul_f256(i32* %35, i32* %38, i32* %39)
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %46 = call i32 @mul_f256(i32* %41, i32* %44, i32* %45)
  %47 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %50 = call i32 @sub_f256(i32* %47, i32* %48, i32* %49)
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %54 = call i32 @sub_f256(i32* %51, i32* %52, i32* %53)
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %56 = call i32 @reduce_final_f256(i32* %55)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %67, %2
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 9
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 0, %72
  %74 = or i32 %71, %73
  %75 = ashr i32 %74, 31
  store i32 %75, i32* %12, align 4
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %78 = call i32 @square_f256(i32* %76, i32* %77)
  %79 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %82 = call i32 @mul_f256(i32* %79, i32* %80, i32* %81)
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %11, i64 0, i64 0
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %86 = call i32 @mul_f256(i32* %83, i32* %84, i32* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %91 = call i32 @square_f256(i32* %89, i32* %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %99 = call i32 @sub_f256(i32* %94, i32* %97, i32* %98)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %107 = call i32 @sub_f256(i32* %102, i32* %105, i32* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %115 = call i32 @sub_f256(i32* %110, i32* %113, i32* %114)
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %117 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @sub_f256(i32* %116, i32* %117, i32* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %126 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %127 = call i32 @mul_f256(i32* %124, i32* %125, i32* %126)
  %128 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %131 = call i32 @mul_f256(i32* %128, i32* %129, i32* %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds [9 x i32], [9 x i32]* %5, i64 0, i64 0
  %139 = call i32 @sub_f256(i32* %134, i32* %137, i32* %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %147 = call i32 @mul_f256(i32* %142, i32* %145, i32* %146)
  %148 = load i32, i32* %12, align 4
  ret i32 %148
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @sub_f256(i32*, i32*, i32*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
