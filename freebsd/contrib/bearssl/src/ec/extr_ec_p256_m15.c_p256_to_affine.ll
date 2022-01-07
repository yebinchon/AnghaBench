; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_to_affine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_to_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @p256_to_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p256_to_affine(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [20 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @memcpy(i32* %6, i32* %9, i32 8)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 30
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %17 = call i32 @square_f256(i32* %15, i32* %16)
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @mul_f256(i32* %18, i32* %19, i32* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @memcpy(i32* %28, i32* %31, i32 8)
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %54, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %39 = call i32 @square_f256(i32* %37, i32* %38)
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %53 [
    i32 31, label %41
    i32 190, label %41
    i32 221, label %41
    i32 252, label %41
    i32 63, label %46
    i32 253, label %46
    i32 255, label %46
  ]

41:                                               ; preds = %36, %36, %36, %36
  %42 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %44 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %45 = call i32 @mul_f256(i32* %42, i32* %43, i32* %44)
  br label %53

46:                                               ; preds = %36, %36, %36
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @mul_f256(i32* %47, i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %36, %46, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %33

57:                                               ; preds = %33
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %60 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %61 = call i32 @mul_f256(i32* %58, i32* %59, i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @mul_f256(i32* %64, i32* %65, i32* %68)
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %72 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %73 = call i32 @mul_f256(i32* %70, i32* %71, i32* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @mul_f256(i32* %76, i32* %77, i32* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @reduce_final_f256(i32* %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @reduce_final_f256(i32* %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %97 = call i32 @mul_f256(i32* %92, i32* %95, i32* %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @reduce_final_f256(i32* %100)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @square_f256(i32*, i32*) #1

declare dso_local i32 @mul_f256(i32*, i32*, i32*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
