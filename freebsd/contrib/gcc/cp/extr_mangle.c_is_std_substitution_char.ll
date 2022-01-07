; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_is_std_substitution_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_is_std_substitution_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_std_substitution_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_std_substitution_char(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @is_std_substitution(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @DECL_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DECL_TI_ARGS(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @CLASS_TYPE_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CLASSTYPE_TI_ARGS(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %40

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @TREE_VEC_LENGTH(i32 %29)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @TREE_VEC_ELT(i32 %33, i32 0)
  %35 = load i64, i64* @char_type_node, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %26, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @is_std_substitution(i32, i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @DECL_TI_ARGS(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i32) #1

declare dso_local i64 @TREE_VEC_ELT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
