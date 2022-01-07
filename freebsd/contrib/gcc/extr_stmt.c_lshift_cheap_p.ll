; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_lshift_cheap_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_lshift_cheap_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lshift_cheap_p.init = internal global i32 0, align 4
@lshift_cheap_p.cheap = internal global i32 1, align 4
@word_mode = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lshift_cheap_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lshift_cheap_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @lshift_cheap_p.init, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @word_mode, align 4
  %7 = call i32 @gen_rtx_REG(i32 %6, i32 10000)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @word_mode, align 4
  %9 = load i32, i32* @const1_rtx, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @gen_rtx_ASHIFT(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @SET, align 4
  %13 = call i32 @rtx_cost(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @COSTS_N_INSNS(i32 3)
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @lshift_cheap_p.cheap, align 4
  store i32 1, i32* @lshift_cheap_p.init, align 4
  br label %18

18:                                               ; preds = %5, %0
  %19 = load i32, i32* @lshift_cheap_p.cheap, align 4
  ret i32 %19
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @rtx_cost(i32, i32) #1

declare dso_local i32 @gen_rtx_ASHIFT(i32, i32, i32) #1

declare dso_local i32 @COSTS_N_INSNS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
