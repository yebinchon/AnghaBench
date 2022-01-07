; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_call_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_call_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_INTERWORK = common dso_local global i64 0, align 8
@arm_arch5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"ldr%?\09%|ip, %0\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"mov%?\09%|lr, %|pc\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bx%?\09%|ip\00", align 1
@LR_REGNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"blx%?\09%|ip\00", align 1
@arm_arch4t = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"mov%?\09%|pc, %|ip\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ldr%?\09%|pc, %0\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_call_mem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @TARGET_INTERWORK, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i64, i64* @arm_arch5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @output_asm_insn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  br label %49

15:                                               ; preds = %5, %1
  %16 = load i32, i32* @LR_REGNUM, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @regno_use_in(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = load i64, i64* @arm_arch5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @output_asm_insn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %28)
  br label %42

30:                                               ; preds = %22
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load i64, i64* @arm_arch4t, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @output_asm_insn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  br label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %27
  br label %48

43:                                               ; preds = %15
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @output_asm_insn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @output_asm_insn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %46)
  br label %48

48:                                               ; preds = %43, %42
  br label %49

49:                                               ; preds = %48, %8
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
}

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i64 @regno_use_in(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
