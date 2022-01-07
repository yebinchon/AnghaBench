; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_is_aggr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_is_aggr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TEMPLATE_TYPE_PARM = common dso_local global i64 0, align 8
@BOUND_TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%qT is not an aggregate type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_aggr_type(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @IS_AGGR_TYPE(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @TEMPLATE_TYPE_PARM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = load i64, i64* @BOUND_TEMPLATE_TEMPLATE_PARM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %19, %14, %10
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
