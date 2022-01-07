; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_lookup_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_lookup_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TV_NAME_LOOKUP = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"label %qE referenced outside of any function\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lookup_label(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %6 = call i32 @timevar_push(i32 %5)
  %7 = load i64, i64* @current_function_decl, align 8
  %8 = load i64, i64* @NULL_TREE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %14 = load i64, i64* @NULL_TREE, align 8
  %15 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @IDENTIFIER_LABEL_VALUE(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NULL_TREE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @DECL_CONTEXT(i64 %23)
  %25 = load i64, i64* @current_function_decl, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %22, %16
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @make_label_decl(i64 %32, i32 0)
  store i64 %33, i64* %4, align 8
  %34 = load i32, i32* @TV_NAME_LOOKUP, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @POP_TIMEVAR_AND_RETURN(i32 %34, i64 %35)
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @POP_TIMEVAR_AND_RETURN(i32, i64) #1

declare dso_local i64 @IDENTIFIER_LABEL_VALUE(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @make_label_decl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
