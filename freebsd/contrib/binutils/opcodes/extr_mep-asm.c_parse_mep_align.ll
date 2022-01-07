; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_mep_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_mep_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Value is not aligned enough\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_mep_align(i32 %0, i8** %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %25 [
    i32 132, label %13
    i32 135, label %13
    i32 134, label %13
    i32 133, label %13
    i32 139, label %13
    i32 138, label %13
    i32 137, label %13
    i32 136, label %19
    i32 131, label %19
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
    i32 140, label %19
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %14 = load i32, i32* %6, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i64*, i64** %9, align 8
  %18 = call i8* @cgen_parse_signed_integer(i32 %14, i8** %15, i32 %16, i64* %17)
  store i8* %18, i8** %11, align 8
  br label %27

19:                                               ; preds = %4, %4, %4, %4, %4, %4
  %20 = load i32, i32* %6, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i64*, i64** %9, align 8
  %24 = call i8* @cgen_parse_unsigned_integer(i32 %20, i8** %21, i32 %22, i64* %23)
  store i8* %24, i8** %11, align 8
  br label %27

25:                                               ; preds = %4
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %19, %13
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8
  store i8* %31, i8** %5, align 8
  br label %54

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %47 [
    i32 131, label %34
    i32 132, label %35
    i32 135, label %35
    i32 134, label %35
    i32 133, label %35
    i32 136, label %35
    i32 130, label %35
    i32 139, label %35
    i32 129, label %39
    i32 128, label %39
    i32 140, label %39
    i32 138, label %39
    i32 137, label %43
  ]

34:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %49

35:                                               ; preds = %32, %32, %32, %32, %32, %32, %32
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %49

39:                                               ; preds = %32, %32, %32, %32
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, 3
  store i64 %42, i64* %10, align 8
  br label %49

43:                                               ; preds = %32
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, 7
  store i64 %46, i64* %10, align 8
  br label %49

47:                                               ; preds = %32
  %48 = call i32 (...) @abort() #3
  unreachable

49:                                               ; preds = %43, %39, %35, %34
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %54

53:                                               ; preds = %49
  store i8* null, i8** %5, align 8
  br label %54

54:                                               ; preds = %53, %52, %30
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local i8* @cgen_parse_signed_integer(i32, i8**, i32, i64*) #1

declare dso_local i8* @cgen_parse_unsigned_integer(i32, i8**, i32, i64*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
