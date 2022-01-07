; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_mov_double_arm_from_fpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_output_mov_double_arm_from_fpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IP_REGNUM = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stf%?d\09%1, [%|sp, #-8]!\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ldm%?fd\09%|sp!, {%0, %1}\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_mov_double_arm_from_fpa(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @REGNO(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IP_REGNUM, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* @SImode, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @gen_rtx_REG(i32 %14, i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @SImode, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 1, %19
  %21 = call i32 @gen_rtx_REG(i32 %18, i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @output_asm_insn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %26 = call i32 @output_asm_insn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
