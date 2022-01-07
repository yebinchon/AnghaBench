; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i32_pub.c_br_rsa_i32_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i32_pub.c_br_rsa_i32_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i32 }

@BR_MAX_RSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_i32_public(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %18 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %19 = ashr i32 %18, 5
  %20 = add nsw i32 1, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %25 = ashr i32 %24, 5
  %26 = add nsw i32 1, %25
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %30 = ashr i32 %29, 5
  %31 = add nsw i32 1, %30
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %35 = ashr i32 %34, 5
  %36 = add nsw i32 1, %35
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %55, %3
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ false, %45 ], [ %52, %48 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %9, align 8
  br label %45

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %66 = ashr i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %63, %60
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %100

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @br_i32_decode(i32* %23, i8* %75, i64 %76)
  %78 = getelementptr inbounds i32, i32* %23, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @br_i32_ninv32(i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = and i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @br_i32_decode_mod(i32* %28, i8* %83, i64 %84, i32* %23)
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @br_i32_modpow(i32* %28, i32 %90, i32 %93, i32* %23, i32 %94, i32* %33, i32* %38)
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @br_i32_encode(i8* %96, i64 %97, i32* %28)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %74, %73
  %101 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_i32_decode(i32*, i8*, i64) #2

declare dso_local i32 @br_i32_ninv32(i32) #2

declare dso_local i32 @br_i32_decode_mod(i32*, i8*, i64, i32*) #2

declare dso_local i32 @br_i32_modpow(i32*, i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @br_i32_encode(i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
