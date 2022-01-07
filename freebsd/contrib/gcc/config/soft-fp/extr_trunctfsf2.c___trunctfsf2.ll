; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/soft-fp/extr_trunctfsf2.c___trunctfsf2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/soft-fp/extr_trunctfsf2.c___trunctfsf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP_DECL_EX = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@FP_INIT_ROUNDMODE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@Q = common dso_local global i32 0, align 4
@FP_HANDLE_EXCEPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__trunctfsf2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @FP_DECL_EX, align 4
  %5 = load i32, i32* @A, align 4
  %6 = call i32 @FP_DECL_Q(i32 %5)
  %7 = load i32, i32* @R, align 4
  %8 = call i32 @FP_DECL_S(i32 %7)
  %9 = load i32, i32* @FP_INIT_ROUNDMODE, align 4
  %10 = load i32, i32* @A, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @FP_UNPACK_SEMIRAW_Q(i32 %10, i32 %11)
  %13 = load i32, i32* @S, align 4
  %14 = load i32, i32* @Q, align 4
  %15 = load i32, i32* @R, align 4
  %16 = load i32, i32* @A, align 4
  %17 = call i32 @FP_TRUNC(i32 %13, i32 %14, i32 1, i32 2, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @R, align 4
  %20 = call i32 @FP_PACK_SEMIRAW_S(i32 %18, i32 %19)
  %21 = load i32, i32* @FP_HANDLE_EXCEPTIONS, align 4
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @FP_DECL_Q(i32) #1

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_SEMIRAW_Q(i32, i32) #1

declare dso_local i32 @FP_TRUNC(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FP_PACK_SEMIRAW_S(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
