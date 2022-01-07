; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_template_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_check_template_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_template_parms = common dso_local global i32 0, align 4
@OVERLOAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"declaration of %q+#D\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" shadows template parm %q+#D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_template_shadow(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @current_template_parms, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @OVERLOAD, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i64, i64* %2, align 8
  %14 = call i64 @OVL_CURRENT(i64 %13)
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %12, %7
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @DECL_NAME(i64 %16)
  %18 = call i64 @innermost_non_namespace_value(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %45

22:                                               ; preds = %15
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @DECL_P(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @DECL_TEMPLATE_PARM_P(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %22
  br label %45

31:                                               ; preds = %26
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @current_template_parms, align 4
  %37 = call i64 @TEMPLATE_PARMS_FOR_INLINE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  br label %45

40:                                               ; preds = %35
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %40, %39, %30, %21, %6
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @innermost_non_namespace_value(i32) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i32 @DECL_TEMPLATE_PARM_P(i64) #1

declare dso_local i64 @TEMPLATE_PARMS_FOR_INLINE(i32) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
