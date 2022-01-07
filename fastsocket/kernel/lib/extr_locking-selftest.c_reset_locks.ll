; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_locking-selftest.c_reset_locks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_locking-selftest.c_reset_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@X1 = common dso_local global i32 0, align 4
@X2 = common dso_local global i32 0, align 4
@Y1 = common dso_local global i32 0, align 4
@Y2 = common dso_local global i32 0, align 4
@Z1 = common dso_local global i32 0, align 4
@Z2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @reset_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_locks() #0 {
  %1 = call i32 (...) @local_irq_disable()
  %2 = load i32, i32* @A, align 4
  %3 = call i32 @I1(i32 %2)
  %4 = load i32, i32* @B, align 4
  %5 = call i32 @I1(i32 %4)
  %6 = load i32, i32* @C, align 4
  %7 = call i32 @I1(i32 %6)
  %8 = load i32, i32* @D, align 4
  %9 = call i32 @I1(i32 %8)
  %10 = load i32, i32* @X1, align 4
  %11 = call i32 @I1(i32 %10)
  %12 = load i32, i32* @X2, align 4
  %13 = call i32 @I1(i32 %12)
  %14 = load i32, i32* @Y1, align 4
  %15 = call i32 @I1(i32 %14)
  %16 = load i32, i32* @Y2, align 4
  %17 = call i32 @I1(i32 %16)
  %18 = load i32, i32* @Z1, align 4
  %19 = call i32 @I1(i32 %18)
  %20 = load i32, i32* @Z2, align 4
  %21 = call i32 @I1(i32 %20)
  %22 = call i32 (...) @lockdep_reset()
  %23 = load i32, i32* @A, align 4
  %24 = call i32 @I2(i32 %23)
  %25 = load i32, i32* @B, align 4
  %26 = call i32 @I2(i32 %25)
  %27 = load i32, i32* @C, align 4
  %28 = call i32 @I2(i32 %27)
  %29 = load i32, i32* @D, align 4
  %30 = call i32 @I2(i32 %29)
  %31 = call i32 (...) @init_shared_classes()
  %32 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @I1(i32) #1

declare dso_local i32 @lockdep_reset(...) #1

declare dso_local i32 @I2(i32) #1

declare dso_local i32 @init_shared_classes(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
