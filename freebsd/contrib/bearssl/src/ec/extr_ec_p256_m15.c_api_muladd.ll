; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_api_muladd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_api_muladd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @p256_decode(%struct.TYPE_12__* %17, i8* %24, i64 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @p256_mul(%struct.TYPE_12__* %17, i8* %27, i64 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %8
  %33 = load i8*, i8** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @p256_mulgen(%struct.TYPE_12__* %18, i8* %33, i64 %34)
  br label %45

36:                                               ; preds = %8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @p256_decode(%struct.TYPE_12__* %18, i8* %37, i64 %38)
  %40 = load i32, i32* %19, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %19, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @p256_mul(%struct.TYPE_12__* %18, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %36, %32
  %46 = call i32 @p256_add(%struct.TYPE_12__* %17, %struct.TYPE_12__* %18)
  store i32 %46, i32* %20, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @reduce_final_f256(i32* %48)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %50

50:                                               ; preds = %62, %45
  %51 = load i32, i32* %22, align 4
  %52 = icmp slt i32 %51, 20
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %21, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %21, align 4
  br label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %22, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %22, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @EQ(i32 %66, i32 0)
  store i32 %67, i32* %21, align 4
  %68 = call i32 @p256_double(%struct.TYPE_12__* %18)
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %20, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @CCOPY(i32 %72, %struct.TYPE_12__* %17, %struct.TYPE_12__* %18, i32 8)
  %74 = call i32 @p256_to_affine(%struct.TYPE_12__* %17)
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @p256_encode(i8* %75, %struct.TYPE_12__* %17)
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %20, align 4
  %79 = and i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  ret i32 %83
}

declare dso_local i32 @p256_decode(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @p256_mul(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @p256_mulgen(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @p256_add(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @reduce_final_f256(i32*) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @p256_double(%struct.TYPE_12__*) #1

declare dso_local i32 @CCOPY(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @p256_to_affine(%struct.TYPE_12__*) #1

declare dso_local i32 @p256_encode(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
