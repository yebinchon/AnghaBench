; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_change_decl_assembler_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_change_decl_assembler_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"%D renamed after being referenced in assembly\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_decl_assembler_name(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @DECL_ASSEMBLER_NAME_SET_P(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @SET_DECL_ASSEMBLER_NAME(i64 %9, i64 %10)
  br label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @DECL_ASSEMBLER_NAME(i64 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %34

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_ASSEMBLER_NAME(i64 %19)
  %21 = call i64 @TREE_SYMBOL_REFERENCED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @DECL_RTL_SET_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @warning(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %27, %23, %18
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @SET_DECL_ASSEMBLER_NAME(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %17, %8
  ret void
}

declare dso_local i32 @DECL_ASSEMBLER_NAME_SET_P(i64) #1

declare dso_local i32 @SET_DECL_ASSEMBLER_NAME(i64, i64) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME(i64) #1

declare dso_local i64 @TREE_SYMBOL_REFERENCED(i64) #1

declare dso_local i64 @DECL_RTL_SET_P(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
