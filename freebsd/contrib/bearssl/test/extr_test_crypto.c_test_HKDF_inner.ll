; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_HKDF_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_HKDF_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BR_HKDF_NO_SALT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"KAT HKDF 1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"KAT HKDF 2\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"KAT HKDF 3\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i8*)* @test_HKDF_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HKDF_inner(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca [100 x i8], align 16
  %14 = alloca [100 x i8], align 16
  %15 = alloca [107 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @hextobin(i8* %23, i8* %24)
  store i64 %25, i64* %17, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** @BR_HKDF_NO_SALT, align 8
  store i8* %29, i8** %16, align 8
  store i64 0, i64* %18, align 8
  br label %35

30:                                               ; preds = %5
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8* %31, i8** %16, align 8
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @hextobin(i8* %32, i8* %33)
  store i64 %34, i64* %18, align 8
  br label %35

35:                                               ; preds = %30, %28
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @hextobin(i8* %36, i8* %37)
  store i64 %38, i64* %19, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @hextobin(i8* %39, i8* %40)
  store i64 %41, i64* %20, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i64, i64* %18, align 8
  %45 = call i32 @br_hkdf_init(i32* %21, i32* %42, i8* %43, i64 %44)
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @br_hkdf_inject(i32* %21, i8* %46, i64 %47)
  %49 = call i32 @br_hkdf_flip(i32* %21)
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %51 = load i64, i64* %19, align 8
  %52 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 0
  %53 = load i64, i64* %20, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @br_hkdf_produce(i32* %21, i8* %50, i64 %51, i8* %52, i32 %54)
  %56 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 0
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %58 = load i64, i64* %20, align 8
  %59 = call i32 @check_equals(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57, i64 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i32 @br_hkdf_init(i32* %21, i32* %60, i8* %61, i64 %62)
  store i64 0, i64* %22, align 8
  br label %64

64:                                               ; preds = %72, %35
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64, i64* %22, align 8
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 %69
  %71 = call i32 @br_hkdf_inject(i32* %21, i8* %70, i64 1)
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %22, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %22, align 8
  br label %64

75:                                               ; preds = %64
  %76 = call i32 @br_hkdf_flip(i32* %21)
  store i64 0, i64* %22, align 8
  br label %77

77:                                               ; preds = %87, %75
  %78 = load i64, i64* %22, align 8
  %79 = load i64, i64* %20, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %22, align 8
  %85 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 %84
  %86 = call i32 @br_hkdf_produce(i32* %21, i8* %82, i64 %83, i8* %85, i32 1)
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %22, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %22, align 8
  br label %77

90:                                               ; preds = %77
  %91 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 0
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %93 = load i64, i64* %20, align 8
  %94 = call i32 @check_equals(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %92, i64 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i64, i64* %18, align 8
  %98 = call i32 @br_hkdf_init(i32* %21, i32* %95, i8* %96, i64 %97)
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @br_hkdf_inject(i32* %21, i8* %99, i64 %100)
  %102 = call i32 @br_hkdf_flip(i32* %21)
  store i64 0, i64* %22, align 8
  br label %103

103:                                              ; preds = %113, %90
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %20, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %22, align 8
  %111 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 %110
  %112 = call i32 @br_hkdf_produce(i32* %21, i8* %108, i64 %109, i8* %111, i32 7)
  br label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %22, align 8
  %115 = add i64 %114, 7
  store i64 %115, i64* %22, align 8
  br label %103

116:                                              ; preds = %103
  %117 = getelementptr inbounds [107 x i8], [107 x i8]* %15, i64 0, i64 0
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %119 = load i64, i64* %20, align 8
  %120 = call i32 @check_equals(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %117, i8* %118, i64 %119)
  %121 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @stdout, align 4
  %123 = call i32 @fflush(i32 %122)
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @br_hkdf_init(i32*, i32*, i8*, i64) #1

declare dso_local i32 @br_hkdf_inject(i32*, i8*, i64) #1

declare dso_local i32 @br_hkdf_flip(i32*) #1

declare dso_local i32 @br_hkdf_produce(i32*, i8*, i64, i8*, i32) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
