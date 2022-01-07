; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__**, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aesctr_drbg_update(%struct.TYPE_10__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [12 x i8], align 1
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 255, i32 12)
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 16)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %30 = call i32 %24(%struct.TYPE_11__** %27, i8* %28, i32 -1, i8* %29, i32 16)
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 182, i32 16)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i32 90, i32 16)
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %78, %3
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %38 = call i32 @memcpy(i8* %36, i8* %37, i32 16)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 16
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %45 = call i32 @memcpy(i8* %43, i8* %44, i32 16)
  store i32 0, i32* %11, align 4
  br label %78

46:                                               ; preds = %35
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %142

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %51, 16
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  br label %56

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 16, %55 ]
  store i64 %57, i64* %14, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 16
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %14, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i8* %59, i8* %60, i32 %62)
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %65 = getelementptr inbounds i8, i8* %64, i64 16
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i64, i64* %14, align 8
  %69 = sub i64 16, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i8* %67, i32 0, i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %5, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %56, %41
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_11__**, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32)** %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %89 = call i32 %84(%struct.TYPE_11__** %87, i8* %88, i32 32)
  %90 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %92 = call i32 @memcpy(i8* %90, i8* %91, i32 12)
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %95 = call i32 @memcpy(i8* %93, i8* %94, i32 16)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)** %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %107 = getelementptr inbounds i8, i8* %106, i64 12
  %108 = call i32 @br_dec32be(i8* %107)
  %109 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %110 = call i32 %101(%struct.TYPE_11__** %104, i8* %105, i32 %108, i8* %109, i32 16)
  %111 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = xor i32 %113, 1
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %118 = call i32 @memcpy(i8* %116, i8* %117, i32 16)
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %120 = load i8, i8* %119, align 16
  %121 = zext i8 %120 to i32
  %122 = xor i32 %121, 1
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 16
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32, i8*, i32)** %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %135 = getelementptr inbounds i8, i8* %134, i64 12
  %136 = call i32 @br_dec32be(i8* %135)
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %138 = call i32 %129(%struct.TYPE_11__** %132, i8* %133, i32 %136, i8* %137, i32 16)
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %141 = call i32 @memcpy(i8* %139, i8* %140, i32 16)
  br label %35

142:                                              ; preds = %49
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_11__**, i8*, i32)*, i32 (%struct.TYPE_11__**, i8*, i32)** %147, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %153 = call i32 %148(%struct.TYPE_11__** %151, i8* %152, i32 16)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
