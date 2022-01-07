; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_if_convertible_stmt_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_if_convertible_stmt_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@dump_file = common dso_local global i32 0, align 4
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"don't know what to do\0A\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32)* @if_convertible_stmt_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_convertible_stmt_p(%struct.loop* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @TREE_CODE(i32 %8)
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %11
    i32 130, label %19
  ]

10:                                               ; preds = %3
  br label %36

11:                                               ; preds = %3
  %12 = load %struct.loop*, %struct.loop** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @if_convertible_modify_expr_p(%struct.loop* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %37

18:                                               ; preds = %11
  br label %36

19:                                               ; preds = %3
  br label %36

20:                                               ; preds = %3
  %21 = load i32, i32* @dump_file, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @dump_flags, align 4
  %25 = load i32, i32* @TDF_DETAILS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* @dump_file, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @dump_file, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @TDF_SLIM, align 4
  %34 = call i32 @print_generic_stmt(i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %23, %20
  store i32 0, i32* %4, align 4
  br label %37

36:                                               ; preds = %19, %18, %10
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @if_convertible_modify_expr_p(%struct.loop*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @print_generic_stmt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
