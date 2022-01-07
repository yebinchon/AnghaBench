; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_complex_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_emit_move_complex_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @emit_move_complex_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_move_complex_push(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_MODE_INNER(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @XEXP(i32 %11, i32 0)
  %13 = call i32 @GET_CODE(i32 %12)
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 131, label %14
    i32 128, label %15
    i32 130, label %15
  ]

14:                                               ; preds = %3, %3
  store i32 1, i32* %8, align 4
  br label %18

15:                                               ; preds = %3, %3
  store i32 0, i32* %8, align 4
  br label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @gcc_unreachable()
  br label %18

18:                                               ; preds = %16, %15, %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  %22 = call i32 @gen_rtx_MEM(i32 %19, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @read_complex_part(i32 %23, i32 %24)
  %26 = call i32 @emit_move_insn(i32 %22, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  %30 = call i32 @gen_rtx_MEM(i32 %27, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @read_complex_part(i32 %31, i32 %35)
  %37 = call i32 @emit_move_insn(i32 %30, i32 %36)
  ret i32 %37
}

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @read_complex_part(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
