; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_regs_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload.c_reload_cse_regs_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @reload_cse_regs_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_cse_regs_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @VOIDmode, align 4
  %6 = call i64 @gen_rtx_REG(i32 %5, i32 -1)
  store i64 %6, i64* %4, align 8
  %7 = call i32 @cselib_init(i32 1)
  %8 = call i32 (...) @init_alias_analysis()
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @INSN_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @reload_cse_simplify(i64 %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @cselib_process_insn(i64 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @NEXT_INSN(i64 %25)
  store i64 %26, i64* %3, align 8
  br label %10

27:                                               ; preds = %10
  %28 = call i32 (...) @end_alias_analysis()
  %29 = call i32 (...) @cselib_finish()
  ret void
}

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @cselib_init(i32) #1

declare dso_local i32 @init_alias_analysis(...) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @reload_cse_simplify(i64, i64) #1

declare dso_local i32 @cselib_process_insn(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @end_alias_analysis(...) #1

declare dso_local i32 @cselib_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
