; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_meet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_ipcp_cval_meet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp_formal = type { i32 }

@BOTTOM = common dso_local global i64 0, align 8
@TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipcp_formal*, %struct.ipcp_formal*, %struct.ipcp_formal*)* @ipcp_cval_meet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipcp_cval_meet(%struct.ipcp_formal* %0, %struct.ipcp_formal* %1, %struct.ipcp_formal* %2) #0 {
  %4 = alloca %struct.ipcp_formal*, align 8
  %5 = alloca %struct.ipcp_formal*, align 8
  %6 = alloca %struct.ipcp_formal*, align 8
  store %struct.ipcp_formal* %0, %struct.ipcp_formal** %4, align 8
  store %struct.ipcp_formal* %1, %struct.ipcp_formal** %5, align 8
  store %struct.ipcp_formal* %2, %struct.ipcp_formal** %6, align 8
  %7 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %8 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %7)
  %9 = load i64, i64* @BOTTOM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %13 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %12)
  %14 = load i64, i64* @BOTTOM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %3
  %17 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %18 = load i64, i64* @BOTTOM, align 8
  %19 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %17, i64 %18)
  br label %78

20:                                               ; preds = %11
  %21 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %22 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %21)
  %23 = load i64, i64* @TOP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %27 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %28 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %27)
  %29 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %26, i64 %28)
  %30 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %31 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %32 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %31)
  %33 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %34 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %33)
  %35 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %30, i32 %32, i64 %34)
  br label %78

36:                                               ; preds = %20
  %37 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %38 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %37)
  %39 = load i64, i64* @TOP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %43 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %44 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %43)
  %45 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %42, i64 %44)
  %46 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %47 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %48 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %47)
  %49 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %50 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %49)
  %51 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %46, i32 %48, i64 %50)
  br label %78

52:                                               ; preds = %36
  %53 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %54 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %53)
  %55 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %56 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %55)
  %57 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %58 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %57)
  %59 = load %struct.ipcp_formal*, %struct.ipcp_formal** %6, align 8
  %60 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %59)
  %61 = call i32 @ipcp_cval_equal_cvalues(i32 %54, i32 %56, i64 %58, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %52
  %64 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %65 = load i64, i64* @BOTTOM, align 8
  %66 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %64, i64 %65)
  br label %78

67:                                               ; preds = %52
  %68 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %69 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %70 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %69)
  %71 = call i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal* %68, i64 %70)
  %72 = load %struct.ipcp_formal*, %struct.ipcp_formal** %4, align 8
  %73 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %74 = call i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal* %73)
  %75 = load %struct.ipcp_formal*, %struct.ipcp_formal** %5, align 8
  %76 = call i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal* %75)
  %77 = call i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal* %72, i32 %74, i64 %76)
  br label %78

78:                                               ; preds = %67, %63, %41, %25, %16
  ret void
}

declare dso_local i64 @ipcp_cval_get_cvalue_type(%struct.ipcp_formal*) #1

declare dso_local i32 @ipcp_cval_set_cvalue_type(%struct.ipcp_formal*, i64) #1

declare dso_local i32 @ipcp_cval_set_cvalue(%struct.ipcp_formal*, i32, i64) #1

declare dso_local i32 @ipcp_cval_get_cvalue(%struct.ipcp_formal*) #1

declare dso_local i32 @ipcp_cval_equal_cvalues(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
