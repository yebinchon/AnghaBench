; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_prime_i15.c_api_muladd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_prime_i15.c_api_muladd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  %22 = alloca %struct.TYPE_10__, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = call i32* @id_to_curve(i32 %24)
  store i32* %25, i32** %20, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32*, i32** %20, align 8
  %29 = call i32 @point_decode(%struct.TYPE_10__* %21, i8* %26, i64 %27, i32* %28)
  store i32 %29, i32* %17, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* %16, align 4
  %34 = call i8* @api_generator(i32 %33, i64* %23)
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %32, %8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @point_decode(%struct.TYPE_10__* %22, i8* %36, i64 %37, i32* %38)
  %40 = load i32, i32* %17, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %17, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = call i32 @point_mul(%struct.TYPE_10__* %21, i8* %42, i64 %43, i32* %44)
  %46 = load i8*, i8** %14, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = call i32 @point_mul(%struct.TYPE_10__* %22, i8* %46, i64 %47, i32* %48)
  %50 = load i32*, i32** %20, align 8
  %51 = call i32 @point_add(%struct.TYPE_10__* %21, %struct.TYPE_10__* %22, i32* %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = call i32 @point_double(%struct.TYPE_10__* %22, i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @br_i15_iszero(i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %18, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 @CCOPY(i32 %62, %struct.TYPE_10__* %21, %struct.TYPE_10__* %22, i32 8)
  %64 = load i8*, i8** %9, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = call i32 @point_encode(i8* %64, %struct.TYPE_10__* %21, i32* %65)
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %18, align 4
  %69 = and i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  ret i32 %73
}

declare dso_local i32* @id_to_curve(i32) #1

declare dso_local i32 @point_decode(%struct.TYPE_10__*, i8*, i64, i32*) #1

declare dso_local i8* @api_generator(i32, i64*) #1

declare dso_local i32 @point_mul(%struct.TYPE_10__*, i8*, i64, i32*) #1

declare dso_local i32 @point_add(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @point_double(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @br_i15_iszero(i32) #1

declare dso_local i32 @CCOPY(i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @point_encode(i8*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
