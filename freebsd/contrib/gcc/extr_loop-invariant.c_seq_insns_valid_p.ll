; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_seq_insns_valid_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_seq_insns_valid_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @seq_insns_valid_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_insns_valid_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* %4, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @insn_invalid_p(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @NEXT_INSN(i64 %16)
  store i64 %17, i64* %4, align 8
  br label %6

18:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @insn_invalid_p(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
