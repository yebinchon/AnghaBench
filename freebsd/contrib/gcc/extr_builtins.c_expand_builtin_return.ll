; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@apply_result_mode = common dso_local global i32* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@HAVE_untyped_return = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @expand_builtin_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_builtin_return(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @Pmode, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @convert_memory_address(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = call i32 (...) @apply_result_size()
  %13 = load i32, i32* @BLKmode, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @gen_rtx_MEM(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %69, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load i32*, i32** @apply_result_mode, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GET_MODE_ALIGNMENT(i32 %29)
  %31 = load i32, i32* @BITS_PER_UNIT, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CEIL(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @INCOMING_REGNO(i32 %45)
  %47 = call i32 @gen_rtx_REG(i32 %44, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @adjust_address(i32 %49, i32 %50, i32 %51)
  %53 = call i32 @emit_move_insn(i32 %48, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @push_to_sequence(i32 %54)
  %56 = load i32, i32* @VOIDmode, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @gen_rtx_USE(i32 %56, i32 %57)
  %59 = call i32 @emit_insn(i32 %58)
  %60 = call i32 (...) @get_insns()
  store i32 %60, i32* %8, align 4
  %61 = call i32 (...) @end_sequence()
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @GET_MODE_SIZE(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %43, %20
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @emit_insn(i32 %73)
  %75 = call i32 (...) @expand_naked_return()
  ret void
}

declare dso_local i32 @convert_memory_address(i32, i32) #1

declare dso_local i32 @apply_result_size(...) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @GET_MODE_ALIGNMENT(i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @INCOMING_REGNO(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @push_to_sequence(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_USE(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @expand_naked_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
