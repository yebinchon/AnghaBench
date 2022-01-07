; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_AES_x86ni.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_AES_x86ni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"AES_x86ni availability mismatch (%d/%d/%d)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"AES_x86ni\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Test AES_x86ni: UNAVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AES_x86ni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AES_x86ni() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32* (...) @br_aes_x86ni_cbcenc_get_vtable()
  store i32* %7, i32** %1, align 8
  %8 = call i32* (...) @br_aes_x86ni_cbcdec_get_vtable()
  store i32* %8, i32** %2, align 8
  %9 = call i32* (...) @br_aes_x86ni_ctr_get_vtable()
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %0
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @EXIT_FAILURE, align 4
  %33 = call i32 @exit(i32 %32) #3
  unreachable

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %1, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @test_AES_generic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32* %39, i32* %40, i32 1, i32 1)
  br label %44

42:                                               ; preds = %34
  %43 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32* @br_aes_x86ni_cbcenc_get_vtable(...) #1

declare dso_local i32* @br_aes_x86ni_cbcdec_get_vtable(...) #1

declare dso_local i32* @br_aes_x86ni_ctr_get_vtable(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @test_AES_generic(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
