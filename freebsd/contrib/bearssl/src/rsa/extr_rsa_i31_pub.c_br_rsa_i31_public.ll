; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_pub.c_br_rsa_i31_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_pub.c_br_rsa_i31_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32, i32 }

@TLEN = common dso_local global i32 0, align 4
@BR_MAX_RSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_i31_public(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %20 = load i32, i32* @TLEN, align 4
  %21 = add nsw i32 1, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %41, %3
  %32 = load i64, i64* %9, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %9, align 8
  br label %31

46:                                               ; preds = %39
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %52 = ashr i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %49, %46
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %122

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = shl i64 %61, 3
  store i64 %62, i64* %16, align 8
  store i64 1, i64* %15, align 8
  br label %63

63:                                               ; preds = %66, %60
  %64 = load i64, i64* %16, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i64, i64* %16, align 8
  %68 = sub nsw i64 %67, 31
  store i64 %68, i64* %16, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %15, align 8
  br label %63

71:                                               ; preds = %63
  %72 = load i64, i64* %15, align 8
  %73 = and i64 %72, 1
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %15, align 8
  store i32* %24, i32** %12, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i64, i64* %15, align 8
  %81 = mul i64 2, %80
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32* %82, i32** %14, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @br_i31_decode(i32* %83, i8* %84, i64 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @br_i31_ninv31(i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = and i32 %91, 1
  store i32 %92, i32* %18, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @br_i31_decode_mod(i32* %93, i8* %94, i64 %95, i32* %96)
  %98 = load i32, i32* %18, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %18, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* @TLEN, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %15, align 8
  %113 = mul i64 2, %112
  %114 = sub i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @br_i31_modpow_opt(i32* %100, i32 %103, i32 %106, i32* %107, i32 %108, i32* %109, i32 %115)
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @br_i31_encode(i8* %117, i64 %118, i32* %119)
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %122

122:                                              ; preds = %71, %59
  %123 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_i31_decode(i32*, i8*, i64) #2

declare dso_local i32 @br_i31_ninv31(i32) #2

declare dso_local i32 @br_i31_decode_mod(i32*, i8*, i64, i32*) #2

declare dso_local i32 @br_i31_modpow_opt(i32*, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
