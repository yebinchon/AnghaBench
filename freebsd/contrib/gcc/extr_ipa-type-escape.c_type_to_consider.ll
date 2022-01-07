; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_type_to_consider.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-type-escape.c_type_to_consider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARRAY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @type_to_consider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_to_consider(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TYPE_MAIN_VARIANT(i32 %4)
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @POINTER_TYPE_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  %13 = load i32, i32* @ARRAY_TYPE, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ true, %6 ], [ %14, %10 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = call i32 @TYPE_MAIN_VARIANT(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TREE_CODE(i32 %22)
  switch i32 %23, label %25 [
    i32 137, label %24
    i32 136, label %24
    i32 135, label %24
    i32 134, label %24
    i32 133, label %24
    i32 132, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
