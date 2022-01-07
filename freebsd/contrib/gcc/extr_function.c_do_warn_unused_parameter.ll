; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_do_warn_unused_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_do_warn_unused_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARM_DECL = common dso_local global i64 0, align 8
@OPT_Wunused_parameter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unused parameter %q+D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_warn_unused_parameter(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @DECL_ARGUMENTS(i64 %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @TREE_USED(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @PARM_DECL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @DECL_NAME(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @DECL_ARTIFICIAL(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @OPT_Wunused_parameter, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @warning(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %22, %18, %13, %9
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @TREE_CHAIN(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i32 @TREE_USED(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i32 @DECL_ARTIFICIAL(i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
