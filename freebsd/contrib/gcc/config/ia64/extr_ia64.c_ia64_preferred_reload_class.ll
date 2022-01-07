; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_preferred_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_preferred_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_preferred_reload_class(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 128, label %7
    i32 129, label %7
    i32 130, label %24
    i32 131, label %24
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @MEM_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MEM_VOLATILE_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @NO_REGS, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %11, %7
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CONSTANT_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @NO_REGS, align 4
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %17
  br label %32

24:                                               ; preds = %2, %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @OBJECT_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @NO_REGS, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %24
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %30, %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28, %21, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i32 @OBJECT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
