; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_SHAKE_MonteCarlo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_SHAKE_MonteCarlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MC: bad length (%u vs %u)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"KAT MC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i8*, i8*)* @test_SHAKE_MonteCarlo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHAKE_MonteCarlo(i32 %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [250 x i8], align 16
  %12 = alloca [250 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @hextobin(i8* %20, i8* %21)
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %24, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %16, align 8
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %72, %5
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  store i32 1, i32* %17, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %17, align 4
  %34 = icmp slt i32 %33, 1001
  br i1 %34, label %35, label %68

35:                                               ; preds = %32
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @br_shake_init(i32* %19, i32 %37)
  %39 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %40 = call i32 @br_shake_inject(i32* %19, i8* %39, i32 16)
  %41 = call i32 @br_shake_flip(i32* %19)
  %42 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @br_shake_produce(i32* %19, i8* %42, i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = icmp ult i64 %45, 16
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %13, align 8
  %52 = sub i64 16, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(i8* %50, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -2
  %61 = call i64 @br_dec16be(i8* %60)
  %62 = load i64, i64* %16, align 8
  %63 = urem i64 %61, %62
  %64 = add i64 %56, %63
  store i64 %64, i64* %15, align 8
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %32

68:                                               ; preds = %32
  %69 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @stdout, align 4
  %71 = call i32 @fflush(i32 %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %28

75:                                               ; preds = %28
  %76 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @hextobin(i8* %76, i8* %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* @stderr, align 4
  %84 = load i64, i64* %13, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i64, i64* %14, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87)
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @exit(i32 %89) #3
  unreachable

91:                                               ; preds = %75
  %92 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %93 = getelementptr inbounds [250 x i8], [250 x i8]* %12, i64 0, i64 0
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @check_equals(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %92, i8* %93, i64 %94)
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @br_shake_init(i32*, i32) #1

declare dso_local i32 @br_shake_inject(i32*, i8*, i32) #1

declare dso_local i32 @br_shake_flip(i32*) #1

declare dso_local i32 @br_shake_produce(i32*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @br_dec16be(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
