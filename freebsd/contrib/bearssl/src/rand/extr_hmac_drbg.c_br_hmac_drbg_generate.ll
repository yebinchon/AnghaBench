; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_hmac_drbg.c_br_hmac_drbg_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_hmac_drbg.c_br_hmac_drbg_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_hmac_drbg_generate(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @br_digest_size(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @br_hmac_key_init(i32* %8, i32* %19, i8* %22, i64 %23)
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %46, %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = call i32 @br_hmac_init(i32* %9, i32* %8, i32 0)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @br_hmac_update(i32* %9, i8* %33, i64 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @br_hmac_out(i32* %9, i8* %38)
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %44, %29
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @memcpy(i8* %47, i8* %50, i64 %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %6, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %26

59:                                               ; preds = %26
  %60 = call i32 @br_hmac_init(i32* %9, i32* %8, i32 0)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @br_hmac_update(i32* %9, i8* %63, i64 %64)
  store i8 0, i8* %12, align 1
  %66 = call i32 @br_hmac_update(i32* %9, i8* %12, i64 1)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @br_hmac_out(i32* %9, i8* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @br_hmac_key_init(i32* %8, i32* %71, i8* %74, i64 %75)
  %77 = call i32 @br_hmac_init(i32* %9, i32* %8, i32 0)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @br_hmac_update(i32* %9, i8* %80, i64 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @br_hmac_out(i32* %9, i8* %85)
  ret void
}

declare dso_local i64 @br_digest_size(i32*) #1

declare dso_local i32 @br_hmac_key_init(i32*, i32*, i8*, i64) #1

declare dso_local i32 @br_hmac_init(i32*, i32*, i32) #1

declare dso_local i32 @br_hmac_update(i32*, i8*, i64) #1

declare dso_local i32 @br_hmac_out(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
