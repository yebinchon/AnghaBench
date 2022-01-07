; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_arg_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_template_arg_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boolean_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_template_arg_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_template_arg_literal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @write_char(i8 signext 76)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  %6 = call i32 @write_type(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %36 [
    i32 130, label %9
    i32 129, label %13
    i32 128, label %33
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @DECL_INITIAL(i32 %10)
  %12 = call i32 @write_integer_cst(i32 %11)
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* @boolean_type_node, align 4
  %17 = call i32 @same_type_p(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @integer_zerop(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @integer_onep(i32 %24)
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %23, %19, %13
  %28 = phi i1 [ true, %19 ], [ true, %13 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @write_integer_cst(i32 %31)
  br label %38

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @write_real_cst(i32 %34)
  br label %38

36:                                               ; preds = %1
  %37 = call i32 (...) @gcc_unreachable()
  br label %38

38:                                               ; preds = %36, %33, %27, %9
  %39 = call i32 @write_char(i8 signext 69)
  ret void
}

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @write_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @write_integer_cst(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i32 @integer_onep(i32) #1

declare dso_local i32 @write_real_cst(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
