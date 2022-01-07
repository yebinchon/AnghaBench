; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_profile_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_profile_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@profile_function_exit_libfunc = common dso_local global i32 0, align 4
@profile_function_entry_libfunc = common dso_local global i32 0, align 4
@LCT_NORMAL = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@BUILT_IN_RETURN_ADDRESS = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_builtin_profile_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_profile_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @current_function_decl, align 4
  %6 = call i32 @DECL_RTL(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @MEM_P(i32 %7)
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @XEXP(i32 %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @profile_function_exit_libfunc, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @profile_function_entry_libfunc, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LCT_NORMAL, align 4
  %21 = load i32, i32* @VOIDmode, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @Pmode, align 4
  %24 = load i32, i32* @BUILT_IN_RETURN_ADDRESS, align 4
  %25 = call i32 @expand_builtin_return_addr(i32 %24, i32 0)
  %26 = load i32, i32* @Pmode, align 4
  %27 = call i32 @emit_library_call(i32 %19, i32 %20, i32 %21, i32 2, i32 %22, i32 %23, i32 %25, i32 %26)
  %28 = load i32, i32* @const0_rtx, align 4
  ret i32 %28
}

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @emit_library_call(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_builtin_return_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
