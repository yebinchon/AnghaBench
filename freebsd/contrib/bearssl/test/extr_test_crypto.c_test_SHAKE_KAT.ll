; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_SHAKE_KAT.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_SHAKE_KAT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"KAT 1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"KAT 2\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"KAT 3 (byte %u)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @test_SHAKE_KAT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHAKE_KAT(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca [250 x i8], align 16
  %7 = alloca [250 x i8], align 16
  %8 = alloca [250 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %106, %2
  %15 = load i8**, i8*** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %109

20:                                               ; preds = %14
  %21 = getelementptr inbounds [250 x i8], [250 x i8]* %6, i64 0, i64 0
  %22 = load i8**, i8*** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @hextobin(i8* %21, i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = getelementptr inbounds [250 x i8], [250 x i8]* %8, i64 0, i64 0
  %28 = load i8**, i8*** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @hextobin(i8* %27, i8* %32)
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @br_shake_init(i32* %12, i32 %34)
  %36 = getelementptr inbounds [250 x i8], [250 x i8]* %6, i64 0, i64 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @br_shake_inject(i32* %12, i8* %36, i64 %37)
  %39 = call i32 @br_shake_flip(i32* %12)
  %40 = getelementptr inbounds [250 x i8], [250 x i8]* %7, i64 0, i64 0
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @br_shake_produce(i32* %12, i8* %40, i32 %42)
  %44 = getelementptr inbounds [250 x i8], [250 x i8]* %7, i64 0, i64 0
  %45 = getelementptr inbounds [250 x i8], [250 x i8]* %8, i64 0, i64 0
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @check_equals(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i64 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @br_shake_init(i32* %12, i32 %48)
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %59, %20
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds [250 x i8], [250 x i8]* %6, i64 0, i64 0
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = call i32 @br_shake_inject(i32* %12, i8* %57, i64 1)
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %50

62:                                               ; preds = %50
  %63 = call i32 @br_shake_flip(i32* %12)
  %64 = getelementptr inbounds [250 x i8], [250 x i8]* %7, i64 0, i64 0
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @br_shake_produce(i32* %12, i8* %64, i32 %66)
  %68 = getelementptr inbounds [250 x i8], [250 x i8]* %7, i64 0, i64 0
  %69 = getelementptr inbounds [250 x i8], [250 x i8]* %8, i64 0, i64 0
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @check_equals(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %69, i64 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @br_shake_init(i32* %12, i32 %72)
  %74 = getelementptr inbounds [250 x i8], [250 x i8]* %6, i64 0, i64 0
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @br_shake_inject(i32* %12, i8* %74, i64 %75)
  %77 = call i32 @br_shake_flip(i32* %12)
  store i64 0, i64* %11, align 8
  br label %78

78:                                               ; preds = %99, %62
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = call i32 @br_shake_produce(i32* %12, i8* %13, i32 1)
  %84 = load i8, i8* %13, align 1
  %85 = zext i8 %84 to i32
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds [250 x i8], [250 x i8]* %8, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %85, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i32, i32* @stderr, align 4
  %93 = load i64, i64* %11, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @fprintf(i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  %97 = call i32 @exit(i32 %96) #3
  unreachable

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %11, align 8
  br label %78

102:                                              ; preds = %78
  %103 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fflush(i32 %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %5, align 8
  %108 = add i64 %107, 2
  store i64 %108, i64* %5, align 8
  br label %14

109:                                              ; preds = %14
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @br_shake_init(i32*, i32) #1

declare dso_local i32 @br_shake_inject(i32*, i8*, i64) #1

declare dso_local i32 @br_shake_flip(i32*) #1

declare dso_local i32 @br_shake_produce(i32*, i8*, i32) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
