; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_involves_incomplete_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_rtti.c_involves_incomplete_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @involves_incomplete_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @involves_incomplete_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  switch i32 %5, label %37 [
    i32 130, label %6
    i32 131, label %10
    i32 129, label %25
    i32 128, label %31
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_TYPE(i32 %7)
  %9 = call i32 @target_incomplete_p(i32 %8)
  store i32 %9, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %12)
  %14 = call i32 @target_incomplete_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %17)
  %19 = call i32 @COMPLETE_TYPE_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i1 [ true, %11 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TYPE_PTRMEMFUNC_P(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %11

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %1, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @COMPLETE_TYPE_P(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %38

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %1, %36
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %22, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @target_incomplete_p(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @COMPLETE_TYPE_P(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
