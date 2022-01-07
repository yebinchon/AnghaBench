; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp_formal = type { i32 }

@CONST_VALUE = common dso_local global i64 0, align 8
@CONST_VALUE_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipcp_formal*, %struct.ipcp_formal*)* @ipcp_cval_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_cval_changed(%struct.ipcp_formal* %0, %struct.ipcp_formal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipcp_formal*, align 8
  %5 = alloca %struct.ipcp_formal*, align 8
  store %struct.ipcp_formal* %0, %struct.ipcp_formal** %4, align 8
  store %struct.ipcp_formal* %1, %struct.ipcp_formal** %5, align 8
  %6 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %7 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %6)
  %8 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %9 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %13 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %12)
  %14 = load i64, i64* @CONST_VALUE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %18 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %17)
  %19 = load i64, i64* @CONST_VALUE_REF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %16, %11
  %23 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %24 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %23)
  %25 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %26 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %25)
  %27 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %28 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %27)
  %29 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %30 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %29)
  %31 = call i64 @ipcp_cval_equal_cvalues(i32 %24, i32 %26, i64 %28, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %36

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %2
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %21
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal*) #1

declare dso_local i64 @ipcp_cval_equal_cvalues(i32, i32, i64, i64) #1

declare dso_local i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
