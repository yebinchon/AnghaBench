; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_output_load_gr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_output_load_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"wldrw%?\09%0, %1\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"str%?\09%0, [sp, #-4]!\09@ Start of GR load expansion\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ldr%?\09%0, %1\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tmcr%?\09%0, %1\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"ldr%?\09%0, [sp], #4\09@ End of GR load expansion\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arm_output_load_gr(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @MEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %42, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @XEXP(i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @PLUS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @XEXP(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @REG, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @XEXP(i32 %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @CONST_INT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @INTVAL(i32 %35)
  %37 = icmp slt i32 %36, 1024
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @INTVAL(i32 %39)
  %41 = icmp sgt i32 %40, -1024
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %28, %22, %14, %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %62

43:                                               ; preds = %38, %34
  %44 = call i32 @output_asm_insn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @output_asm_insn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @output_asm_insn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %59)
  %61 = call i32 @output_asm_insn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %62

62:                                               ; preds = %43, %42
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
