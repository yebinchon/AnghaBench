; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_fix_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_fix_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DEAD = common dso_local global i32 0, align 4
@FIRST_STACK_REG = common dso_local global i32 0, align 4
@DImode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fld\09%y1\00", align 1
@MEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"fisttp%z0\09%0\00", align 1
@I387_CW_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fldcw\09%3\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fistp%z0\09%0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"fist%z0\09%0\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fldcw\09%2\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_fix_trunc(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @REG_DEAD, align 4
  %12 = load i32, i32* @FIRST_STACK_REG, align 4
  %13 = call i64 @find_regno_note(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GET_MODE(i32 %18)
  %20 = load i64, i64* @DImode, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @get_attr_i387_cw(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @output_asm_insn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %36

36:                                               ; preds = %33, %30, %27
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @STACK_TOP_P(i32 %39)
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @GET_CODE(i32 %44)
  %46 = load i64, i64* @MEM, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @output_asm_insn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  br label %82

55:                                               ; preds = %36
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @I387_CW_ANY, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @output_asm_insn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @output_asm_insn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %69)
  br label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @I387_CW_ANY, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @output_asm_insn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %52
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
}

declare dso_local i64 @find_regno_note(i32, i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @get_attr_i387_cw(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @STACK_TOP_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
