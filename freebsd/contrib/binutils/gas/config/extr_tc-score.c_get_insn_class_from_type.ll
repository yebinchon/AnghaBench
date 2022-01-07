; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_get_insn_class_from_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_get_insn_class_from_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAIL = common dso_local global i64 0, align 8
@INSN_CLASS_16 = common dso_local global i32 0, align 4
@INSN_CLASS_32 = common dso_local global i32 0, align 4
@INSN_CLASS_PCE = common dso_local global i32 0, align 4
@INSN_CLASS_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_insn_class_from_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_insn_class_from_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @FAIL, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %15 [
    i32 165, label %7
    i32 164, label %7
    i32 144, label %7
    i32 152, label %7
    i32 163, label %7
    i32 168, label %7
    i32 171, label %7
    i32 161, label %7
    i32 167, label %7
    i32 151, label %7
    i32 143, label %7
    i32 133, label %7
    i32 162, label %7
    i32 174, label %7
    i32 159, label %9
    i32 132, label %9
    i32 134, label %9
    i32 160, label %9
    i32 181, label %9
    i32 166, label %9
    i32 154, label %9
    i32 142, label %9
    i32 150, label %9
    i32 138, label %9
    i32 139, label %9
    i32 146, label %9
    i32 147, label %9
    i32 156, label %9
    i32 141, label %9
    i32 149, label %9
    i32 170, label %9
    i32 169, label %9
    i32 158, label %9
    i32 130, label %9
    i32 131, label %9
    i32 155, label %9
    i32 136, label %9
    i32 135, label %9
    i32 172, label %9
    i32 180, label %9
    i32 128, label %9
    i32 140, label %9
    i32 137, label %9
    i32 148, label %9
    i32 129, label %9
    i32 157, label %9
    i32 173, label %9
    i32 153, label %9
    i32 145, label %9
    i32 179, label %9
    i32 178, label %9
    i32 175, label %9
    i32 177, label %11
    i32 176, label %13
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @INSN_CLASS_16, align 4
  store i32 %8, i32* %3, align 4
  br label %17

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %10 = load i32, i32* @INSN_CLASS_32, align 4
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @INSN_CLASS_PCE, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @INSN_CLASS_SYN, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @abort() #2
  unreachable

17:                                               ; preds = %13, %11, %9, %7
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
