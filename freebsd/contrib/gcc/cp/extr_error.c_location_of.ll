; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_location_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_location_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARM_DECL = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @location_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @location_of(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @TREE_CODE(i64 %3)
  %5 = load i64, i64* @PARM_DECL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @DECL_CONTEXT(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @DECL_CONTEXT(i64 %12)
  store i64 %13, i64* %2, align 8
  br label %31

14:                                               ; preds = %7, %1
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @TYPE_P(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @TYPE_MAIN_DECL(i64 %19)
  store i64 %20, i64* %2, align 8
  br label %30

21:                                               ; preds = %14
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @OVERLOAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @OVL_FUNCTION(i64 %27)
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @DECL_SOURCE_LOCATION(i64 %32)
  ret i32 %33
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @OVL_FUNCTION(i64) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
