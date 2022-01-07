; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_HMAC_CT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_HMAC_CT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"HMAC length mismatch: %u / %u\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"HMAC CT %u,%u,%u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*)* @test_HMAC_CT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HMAC_CT(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [30 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @br_hmac_key_init(i32* %9, i32* %22, i8* %23, i64 %24)
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i64, i64* %14, align 8
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %29, label %103

29:                                               ; preds = %26
  store i64 0, i64* %15, align 8
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i64, i64* %15, align 8
  %32 = icmp ult i64 %31, 130
  br i1 %32, label %33, label %96

33:                                               ; preds = %30
  %34 = load i64, i64* %15, align 8
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %35, 256
  store i64 %36, i64* %17, align 8
  %37 = load i64, i64* %16, align 8
  store i64 %37, i64* %18, align 8
  br label %38

38:                                               ; preds = %89, %33
  %39 = load i64, i64* %18, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = call i32 @br_hmac_init(i32* %10, i32* %9, i32 0)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %18, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @br_hmac_update(i32* %10, i8* %44, i64 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %50 = call i64 @br_hmac_out(i32* %10, i8* %49)
  store i64 %50, i64* %20, align 8
  %51 = call i32 @br_hmac_init(i32* %11, i32* %9, i32 0)
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @br_hmac_update(i32* %11, i8* %52, i64 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %62 = call i64 @br_hmac_outCT(i32* %11, i8* %57, i64 %58, i64 %59, i64 %60, i8* %61)
  store i64 %62, i64* %21, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %21, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %42
  %67 = load i32, i32* @stderr, align 4
  %68 = load i64, i64* %20, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* %21, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 @exit(i32 %73) #3
  unreachable

75:                                               ; preds = %42
  %76 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %77 = load i64, i64* %14, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %15, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i64, i64* %18, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @sprintf(i8* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80, i32 %82)
  %84 = getelementptr inbounds [30 x i8], [30 x i8]* %19, i64 0, i64 0
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %87 = load i64, i64* %20, align 8
  %88 = call i32 @check_equals(i8* %84, i8* %85, i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %75
  %90 = load i64, i64* %18, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %18, align 8
  br label %38

92:                                               ; preds = %38
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  br label %30

96:                                               ; preds = %30
  %97 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fflush(i32 %98)
  br label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %14, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %26

103:                                              ; preds = %26
  %104 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @stdout, align 4
  %106 = call i32 @fflush(i32 %105)
  ret void
}

declare dso_local i32 @br_hmac_key_init(i32*, i32*, i8*, i64) #1

declare dso_local i32 @br_hmac_init(i32*, i32*, i32) #1

declare dso_local i32 @br_hmac_update(i32*, i8*, i64) #1

declare dso_local i64 @br_hmac_out(i32*, i8*) #1

declare dso_local i64 @br_hmac_outCT(i32*, i8*, i64, i64, i64, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
