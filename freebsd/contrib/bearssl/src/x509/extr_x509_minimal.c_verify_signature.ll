; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_minimal.c_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_minimal.c_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32, i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32*, i32, i32*, i8*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@BR_ERR_X509_WRONG_KEY_TYPE = common dso_local global i32 0, align 4
@BR_ERR_X509_UNSUPPORTED = common dso_local global i32 0, align 4
@t0_datablock = common dso_local global i32* null, align 8
@BR_ERR_X509_BAD_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_signature(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 15
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @BR_ERR_X509_WRONG_KEY_TYPE, align 4
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %101 [
    i32 128, label %21
    i32 129, label %67
  ]

21:                                               ; preds = %19
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  %24 = load i32 (i32, i32, i32*, i32, i32*, i8*)*, i32 (i32, i32, i32*, i32, i32*, i8*)** %23, align 8
  %25 = icmp eq i32 (i32, i32, i32*, i32, i32*, i8*)* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @BR_ERR_X509_UNSUPPORTED, align 4
  store i32 %27, i32* %3, align 4
  br label %103

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 8
  %31 = load i32 (i32, i32, i32*, i32, i32*, i8*)*, i32 (i32, i32, i32*, i32, i32*, i8*)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** @t0_datablock, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %50 = call i32 %31(i32 %34, i32 %37, i32* %42, i32 %45, i32* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* @BR_ERR_X509_BAD_SIGNATURE, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %28
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcmp(i32 %57, i8* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @BR_ERR_X509_BAD_SIGNATURE, align 4
  store i32 %65, i32* %3, align 4
  br label %103

66:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %103

67:                                               ; preds = %19
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 7
  %70 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %69, align 8
  %71 = icmp eq i32 (i32, i32, i32, i32*, i32, i32)* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @BR_ERR_X509_UNSUPPORTED, align 4
  store i32 %73, i32* %3, align 4
  br label %103

74:                                               ; preds = %67
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 7
  %77 = load i32 (i32, i32, i32, i32*, i32, i32)*, i32 (i32, i32, i32, i32*, i32, i32)** %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %77(i32 %80, i32 %83, i32 %86, i32* %89, i32 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %74
  %99 = load i32, i32* @BR_ERR_X509_BAD_SIGNATURE, align 4
  store i32 %99, i32* %3, align 4
  br label %103

100:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %103

101:                                              ; preds = %19
  %102 = load i32, i32* @BR_ERR_X509_UNSUPPORTED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %100, %98, %72, %66, %64, %52, %26, %17
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
