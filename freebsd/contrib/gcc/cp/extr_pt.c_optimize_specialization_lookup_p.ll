; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_optimize_specialization_lookup_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_optimize_specialization_lookup_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @optimize_specialization_lookup_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optimize_specialization_lookup_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @DECL_FUNCTION_TEMPLATE_P(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @DECL_CLASS_SCOPE_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @DECL_CONTEXT(i32 %11)
  %13 = call i64 @CLASS_TYPE_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @DECL_CONTEXT(i32 %16)
  %18 = call i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @DECL_MEMBER_TEMPLATE_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @DECL_CONV_FN_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @DECL_TEMPLATE_RESULT(i32 %29)
  %31 = call i32 @DECL_FRIEND_P(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %24, %20, %15, %10, %6, %1
  %35 = phi i1 [ false, %24 ], [ false, %20 ], [ false, %15 ], [ false, %10 ], [ false, %6 ], [ false, %1 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @DECL_FUNCTION_TEMPLATE_P(i32) #1

declare dso_local i64 @DECL_CLASS_SCOPE_P(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i32) #1

declare dso_local i32 @DECL_MEMBER_TEMPLATE_P(i32) #1

declare dso_local i32 @DECL_CONV_FN_P(i32) #1

declare dso_local i32 @DECL_FRIEND_P(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
