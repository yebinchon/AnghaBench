; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @STRIP_NOPS(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @DECL_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @DECL_NAME(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @DECL_NAME(i32 %16)
  %18 = call i8* @IDENTIFIER_POINTER(i64 %17)
  store i8* %18, i8** %2, align 8
  br label %27

19:                                               ; preds = %11, %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_CODE(i32 %20)
  switch i32 %21, label %26 [
    i32 128, label %22
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  %25 = call i8* @get_name(i32 %24)
  store i8* %25, i8** %2, align 8
  br label %27

26:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %27

27:                                               ; preds = %26, %22, %15
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
