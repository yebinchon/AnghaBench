; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_validize_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_validize_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_force_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validize_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @MEM_P(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @use_anchored_address(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @flag_force_addr, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i64 @CONSTANT_ADDRESS_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GET_MODE(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  %24 = call i64 @memory_address_p(i32 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %19, %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i32 @replace_equiv_address(i32 %29, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %26, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @use_anchored_address(i32) #1

declare dso_local i64 @CONSTANT_ADDRESS_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @memory_address_p(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
