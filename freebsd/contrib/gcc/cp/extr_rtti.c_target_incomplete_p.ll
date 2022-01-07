; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_target_incomplete_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_target_incomplete_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @target_incomplete_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_incomplete_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %4

4:                                                ; preds = %1, %32
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @TYPE_PTRMEM_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %9)
  %11 = call i32 @COMPLETE_TYPE_P(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %33

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @POINTER_TYPE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @COMPLETE_OR_VOID_TYPE_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %14
  br label %4

33:                                               ; preds = %25, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @COMPLETE_OR_VOID_TYPE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
