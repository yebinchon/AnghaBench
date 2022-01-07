; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_prf.c_br_tls_phash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_prf.c_br_tls_phash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_tls_phash(i8* %0, i64 %1, i32* %2, i8* %3, i64 %4, i8* %5, i64 %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [64 x i8], align 16
  %19 = alloca [64 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %16, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %145

28:                                               ; preds = %8
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %17, align 8
  store i64 0, i64* %22, align 8
  br label %30

30:                                               ; preds = %37, %28
  %31 = load i8*, i8** %14, align 8
  %32 = load i64, i64* %22, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %22, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %22, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 @br_digest_size(i32* %41)
  store i64 %42, i64* %23, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @br_hmac_key_init(i32* %20, i32* %43, i8* %44, i64 %45)
  %47 = call i32 @br_hmac_init(i32* %21, i32* %20, i32 0)
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %22, align 8
  %50 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %48, i64 %49)
  store i64 0, i64* %24, align 8
  br label %51

51:                                               ; preds = %67, %40
  %52 = load i64, i64* %24, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %57 = load i64, i64* %24, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %62 = load i64, i64* %24, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %60, i64 %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i64, i64* %24, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %24, align 8
  br label %51

70:                                               ; preds = %51
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %72 = call i32 @br_hmac_out(i32* %21, i8* %71)
  br label %73

73:                                               ; preds = %138, %70
  %74 = call i32 @br_hmac_init(i32* %21, i32* %20, i32 0)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %76 = load i64, i64* %23, align 8
  %77 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %75, i64 %76)
  %78 = load i8*, i8** %14, align 8
  %79 = load i64, i64* %22, align 8
  %80 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %78, i64 %79)
  store i64 0, i64* %24, align 8
  br label %81

81:                                               ; preds = %97, %73
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %87 = load i64, i64* %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %92 = load i64, i64* %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %90, i64 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i64, i64* %24, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %24, align 8
  br label %81

100:                                              ; preds = %81
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %102 = call i32 @br_hmac_out(i32* %21, i8* %101)
  store i64 0, i64* %24, align 8
  br label %103

103:                                              ; preds = %125, %100
  %104 = load i64, i64* %24, align 8
  %105 = load i64, i64* %23, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* %24, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp ult i64 %108, %109
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %128

113:                                              ; preds = %111
  %114 = load i64, i64* %24, align 8
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8*, i8** %17, align 8
  %119 = load i64, i64* %24, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = xor i32 %122, %117
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 1
  br label %125

125:                                              ; preds = %113
  %126 = load i64, i64* %24, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %24, align 8
  br label %103

128:                                              ; preds = %111
  %129 = load i64, i64* %24, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %17, align 8
  %132 = load i64, i64* %24, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %145

138:                                              ; preds = %128
  %139 = call i32 @br_hmac_init(i32* %21, i32* %20, i32 0)
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %141 = load i64, i64* %23, align 8
  %142 = call i32 (i32*, ...) @br_hmac_update(i32* %21, i8* %140, i64 %141)
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %144 = call i32 @br_hmac_out(i32* %21, i8* %143)
  br label %73

145:                                              ; preds = %137, %27
  ret void
}

declare dso_local i64 @br_digest_size(i32*) #1

declare dso_local i32 @br_hmac_key_init(i32*, i32*, i8*, i64) #1

declare dso_local i32 @br_hmac_init(i32*, i32*, i32) #1

declare dso_local i32 @br_hmac_update(i32*, ...) #1

declare dso_local i32 @br_hmac_out(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
