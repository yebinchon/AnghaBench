; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_okay_pointer_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_okay_pointer_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @okay_pointer_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @okay_pointer_operation(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  %12 = call i32 @TYPE_MAIN_VARIANT(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TREE_TYPE(i32 %13)
  %15 = call i32 @TYPE_MAIN_VARIANT(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @POINTER_TYPE_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 128, label %22
    i32 130, label %22
  ]

22:                                               ; preds = %20, %20, %20
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @size_in_bytes(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @operand_equal_p(i32 %24, i32 %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %31

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %20, %29
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %28, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @size_in_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
