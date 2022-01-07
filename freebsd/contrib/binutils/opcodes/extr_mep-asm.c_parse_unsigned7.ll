; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_unsigned7.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-asm.c_parse_unsigned7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%tpoff(\00", align 1
@BFD_RELOC_MEP_TPREL7 = common dso_local global i32 0, align 4
@BFD_RELOC_MEP_TPREL7A2 = common dso_local global i32 0, align 4
@BFD_RELOC_MEP_TPREL7A4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"missing `)'\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid %function() here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**, i32, i64*)* @parse_unsigned7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_unsigned7(i32 %0, i8** %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strncasecmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %4
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 7
  store i8* %20, i8** %18, align 8
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %28 [
    i32 130, label %22
    i32 129, label %24
    i32 128, label %26
  ]

22:                                               ; preds = %17
  %23 = load i32, i32* @BFD_RELOC_MEP_TPREL7, align 4
  store i32 %23, i32* %12, align 4
  br label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @BFD_RELOC_MEP_TPREL7A2, align 4
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* @BFD_RELOC_MEP_TPREL7A4, align 4
  store i32 %27, i32* %12, align 4
  br label %30

28:                                               ; preds = %17
  %29 = call i32 (...) @abort() #3
  unreachable

30:                                               ; preds = %26, %24, %22
  %31 = load i32, i32* %6, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @cgen_parse_address(i32 %31, i8** %32, i32 %33, i32 %34, i32* null, i64* %11)
  store i8* %35, i8** %10, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 41
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %63

42:                                               ; preds = %30
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %5, align 8
  br label %63

49:                                               ; preds = %4
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %5, align 8
  br label %63

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64*, i64** %9, align 8
  %62 = call i8* @parse_mep_alignu(i32 %58, i8** %59, i32 %60, i64* %61)
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %57, %55, %42, %41
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i8* @cgen_parse_address(i32, i8**, i32, i32, i32*, i64*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @parse_mep_alignu(i32, i8**, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
