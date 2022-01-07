; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_P256_carry_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_P256_carry_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i64, i8*, i32, i32)* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"KAT is incorrect\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@BR_EC_secp256r1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"P-256 multiplication failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"P256_carry\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*)* @test_EC_P256_carry_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EC_P256_carry_inner(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [65 x i8], align 16
  %8 = alloca [65 x i8], align 16
  %9 = alloca [1 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @hextobin(i8* %12, i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = getelementptr inbounds [65 x i8], [65 x i8]* %8, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @hextobin(i8* %15, i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 65
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 65
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %20
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 16, i8* %29, align 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i8*, i64, i8*, i32, i32)*, i32 (i8*, i64, i8*, i32, i32)** %31, align 8
  %33 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %36 = load i32, i32* @BR_EC_secp256r1, align 4
  %37 = call i32 %32(i8* %33, i64 %34, i8* %35, i32 1, i32 %36)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @exit(i32 %42) #3
  unreachable

44:                                               ; preds = %28
  %45 = getelementptr inbounds [65 x i8], [65 x i8]* %7, i64 0, i64 0
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* %8, i64 0, i64 0
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @check_equals(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46, i64 %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fflush(i32 %50)
  ret void
}

declare dso_local i64 @hextobin(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
