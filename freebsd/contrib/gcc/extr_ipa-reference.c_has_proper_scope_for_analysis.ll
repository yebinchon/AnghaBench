; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_has_proper_scope_for_analysis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_has_proper_scope_for_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"used\00", align 1
@all_module_statics = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @has_proper_scope_for_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_proper_scope_for_analysis(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @DECL_ATTRIBUTES(i32 %4)
  %6 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @TREE_THIS_VOLATILE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %42

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TREE_STATIC(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @DECL_EXTERNAL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %42

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @DECL_EXTERNAL(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @TREE_PUBLIC(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 0, i32* %2, align 4
  br label %42

32:                                               ; preds = %27
  %33 = load i32, i32* @all_module_statics, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @DECL_UID(i32 %34)
  %36 = call i32 @bitmap_bit_p(i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @add_static_var(i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %31, %22, %13, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i32 @add_static_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
