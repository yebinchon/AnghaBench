; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_profile_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_profile_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)* }

@NO_PROFILE_COUNTERS = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Pmode = common dso_local global i32 0, align 4
@SYMBOL_FLAG_LOCAL = common dso_local global i32 0, align 4
@LCT_NORMAL = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_profile_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @NO_PROFILE_COUNTERS, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @const0_rtx, align 4
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %18 = call i32 @ggc_strdup(i8* %17)
  %19 = call i8* %16(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @gen_rtx_SYMBOL_REF(i32 %20, i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @SYMBOL_FLAG_LOCAL, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %12, %10
  %25 = load i32, i32* @Pmode, align 4
  %26 = call i32 @gen_reg_rtx(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gen_ip_value(i32 %27)
  %29 = call i32 @emit_insn(i32 %28)
  %30 = call i32 (...) @gen_mcount_func_rtx()
  %31 = load i32, i32* @LCT_NORMAL, align 4
  %32 = load i32, i32* @VOIDmode, align 4
  %33 = load i32, i32* @Pmode, align 4
  %34 = call i32 @BR_REG(i32 0)
  %35 = call i32 @gen_rtx_REG(i32 %33, i32 %34)
  %36 = load i32, i32* @Pmode, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @Pmode, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @Pmode, align 4
  %41 = call i32 @emit_library_call(i32 %30, i32 %31, i32 %32, i32 3, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @ggc_strdup(i8*) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_ip_value(i32) #1

declare dso_local i32 @emit_library_call(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_mcount_func_rtx(...) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @BR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
