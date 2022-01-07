; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_parse_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_mep_parse_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGEN_PARSE_OPERAND_INTEGER = common dso_local global i32 0, align 4
@CGEN_PARSE_OPERAND_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not a valid literal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8**, i32, i32, i32*, i32*)* @mep_parse_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mep_parse_operand(i32 %0, i32 %1, i8** %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @CGEN_PARSE_OPERAND_INTEGER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @CGEN_PARSE_OPERAND_ADDRESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20, %7
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %16, align 8
  br label %27

27:                                               ; preds = %32, %24
  %28 = load i8*, i8** %16, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 40
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %16, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %16, align 8
  br label %27

35:                                               ; preds = %27
  %36 = load i8*, i8** %16, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 36
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %51

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i8**, i8*** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i8* @gas_cgen_parse_operand(i32 %43, i32 %44, i8** %45, i32 %46, i32 %47, i32* %48, i32* %49)
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %42, %40
  %52 = load i8*, i8** %8, align 8
  ret i8* %52
}

declare dso_local i8* @gas_cgen_parse_operand(i32, i32, i8**, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
