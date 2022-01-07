; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_v8plus_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_v8plus_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_v8plus_shift.asm_code = internal global [60 x i8] zeroinitializer, align 16
@which_alternative = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"mov\09%1, %3\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sllx\09%H1, 32, %3\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"srl\09%L1, 0, %L1\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"or\09%L1, %3, %3\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\09%0, %2, %L0\0A\09srlx\09%L0, 32, %H0\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\09%3, %2, %3\0A\09srlx\09%3, 32, %H0\0A\09mov\09%3, %L0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_v8plus_shift(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @which_alternative, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @CONST_INT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @INTVAL(i32 %26)
  %28 = and i32 %27, 63
  %29 = call i32 @GEN_INT(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %23, %16
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @GET_CODE(i32 %35)
  %37 = load i64, i64* @CONST_INT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %40)
  br label %57

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @sparc_check_64(i32 %47, i32 %48)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @output_asm_insn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %55)
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcpy(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @output_v8plus_shift.asm_code, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @which_alternative, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i8* @strcat(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @output_v8plus_shift.asm_code, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i8* %63, i8** %4, align 8
  br label %66

64:                                               ; preds = %57
  %65 = call i8* @strcat(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @output_v8plus_shift.asm_code, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i64 @sparc_check_64(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
