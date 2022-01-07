; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_equal_cvalues.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_equal_cvalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.parameter_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.parameter_info*, %union.parameter_info*, i32, i32)* @ipcp_cval_equal_cvalues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_cval_equal_cvalues(%union.parameter_info* %0, %union.parameter_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.parameter_info*, align 8
  %7 = alloca %union.parameter_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.parameter_info* %0, %union.parameter_info** %6, align 8
  store %union.parameter_info* %1, %union.parameter_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i64 @ipcp_type_is_const(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @ipcp_type_is_const(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i1 [ false, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %36

25:                                               ; preds = %17
  %26 = load %union.parameter_info*, %union.parameter_info** %6, align 8
  %27 = bitcast %union.parameter_info* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load %union.parameter_info*, %union.parameter_info** %7, align 8
  %30 = bitcast %union.parameter_info* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @operand_equal_p(i32 %28, i32 %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %36

35:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34, %24
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ipcp_type_is_const(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
