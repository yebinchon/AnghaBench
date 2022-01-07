; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/profile-n/extr_tst.ufuncsort.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/profile-n/extr_tst.ufuncsort.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_a = common dso_local global i32 0, align 4
@f_b = common dso_local global i32 0, align 4
@f_c = common dso_local global i32 0, align 4
@f_d = common dso_local global i32 0, align 4
@f_e = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @f_a, align 4
  %3 = call i32 @fN(i32 %2, i32 1)
  %4 = load i32, i32* @f_b, align 4
  %5 = call i32 @fN(i32 %4, i32 2)
  %6 = load i32, i32* @f_c, align 4
  %7 = call i32 @fN(i32 %6, i32 3)
  %8 = load i32, i32* @f_d, align 4
  %9 = call i32 @fN(i32 %8, i32 4)
  %10 = load i32, i32* @f_e, align 4
  %11 = call i32 @fN(i32 %10, i32 5)
  %12 = load i32, i32* @f_a, align 4
  %13 = call i32 @fN(i32 %12, i32 11)
  %14 = load i32, i32* @f_c, align 4
  %15 = call i32 @fN(i32 %14, i32 13)
  %16 = load i32, i32* @f_d, align 4
  %17 = call i32 @fN(i32 %16, i32 14)
  %18 = load i32, i32* @f_a, align 4
  %19 = call i32 @fN(i32 %18, i32 101)
  %20 = load i32, i32* @f_c, align 4
  %21 = call i32 @fN(i32 %20, i32 103)
  %22 = load i32, i32* @f_c, align 4
  %23 = call i32 @fN(i32 %22, i32 1003)
  ret i32 0
}

declare dso_local i32 @fN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
