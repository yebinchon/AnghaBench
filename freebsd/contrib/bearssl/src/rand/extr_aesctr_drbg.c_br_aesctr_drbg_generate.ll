; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rand/extr_aesctr_drbg.c_br_aesctr_drbg_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__**, i8*, i32, i8*, i64)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aesctr_drbg_generate(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [12 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i64 12)
  br label %13

13:                                               ; preds = %80, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 65280
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i64 65280, i64* %9, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 15
  %28 = lshr i64 %27, 4
  %29 = add i64 %25, %28
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, 32768
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 32768, %35
  %37 = shl i32 %36, 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %32
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memset(i8* %46, i32 0, i64 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_8__**, i8*, i32, i8*, i64)*, i32 (%struct.TYPE_8__**, i8*, i32, i8*, i64)** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 %54(%struct.TYPE_8__** %57, i8* %58, i32 %61, i8* %62, i64 %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8* %69, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 32768
  br i1 %76, label %77, label %80

77:                                               ; preds = %45
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = call i32 @br_aesctr_drbg_update(%struct.TYPE_7__* %78, i32* null, i32 0)
  br label %80

80:                                               ; preds = %77, %45
  br label %13

81:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @br_aesctr_drbg_update(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
