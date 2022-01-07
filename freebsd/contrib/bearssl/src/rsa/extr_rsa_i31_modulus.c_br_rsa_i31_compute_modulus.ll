; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_modulus.c_br_rsa_i31_compute_modulus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_modulus.c_br_rsa_i31_compute_modulus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8*, i64, i32 }

@BR_MAX_RSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_rsa_i31_compute_modulus(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %18 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %19 = add nsw i32 %18, 30
  %20 = sdiv i32 %19, 31
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 5
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %42, %2
  %33 = load i64, i64* %14, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %14, align 8
  br label %32

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %12, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %64, %47
  %55 = load i64, i64* %15, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %15, align 8
  br label %54

69:                                               ; preds = %62
  store i32* %25, i32** %8, align 8
  %70 = mul nuw i64 4, %23
  %71 = udiv i64 %70, 4
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %16, align 8
  %73 = mul i64 31, %72
  %74 = load i64, i64* %14, align 8
  %75 = shl i64 %74, 3
  %76 = add i64 %75, 31
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i64 0, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %154

79:                                               ; preds = %69
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @br_i31_decode(i32* %80, i8* %81, i64 %82)
  %84 = load i32*, i32** %8, align 8
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 63
  %89 = ashr i32 %88, 5
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 %91
  store i32* %93, i32** %8, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = mul i64 31, %97
  %99 = load i64, i64* %15, align 8
  %100 = shl i64 %99, 3
  %101 = add i64 %100, 31
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %79
  store i64 0, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %154

104:                                              ; preds = %79
  %105 = load i32*, i32** %8, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @br_i31_decode(i32* %105, i8* %106, i64 %107)
  %109 = load i32*, i32** %8, align 8
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 63
  %114 = ashr i32 %113, 5
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 %116
  store i32* %118, i32** %8, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %16, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %123, %124
  %126 = add i64 %125, 1
  %127 = icmp ult i64 %122, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %104
  store i64 0, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %154

129:                                              ; preds = %104
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 7
  %134 = ashr i32 %133, 3
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %13, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %129
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @br_i31_zero(i32* %139, i32 %142)
  %144 = load i32*, i32** %8, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @br_i31_mulacc(i32* %144, i32* %145, i32* %146)
  %148 = load i8*, i8** %4, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @br_i31_encode(i8* %148, i64 %149, i32* %150)
  br label %152

152:                                              ; preds = %138, %129
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %3, align 8
  store i32 1, i32* %17, align 4
  br label %154

154:                                              ; preds = %152, %128, %103, %78
  %155 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i64, i64* %3, align 8
  ret i64 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_i31_decode(i32*, i8*, i64) #2

declare dso_local i32 @br_i31_zero(i32*, i32) #2

declare dso_local i32 @br_i31_mulacc(i32*, i32*, i32*) #2

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
