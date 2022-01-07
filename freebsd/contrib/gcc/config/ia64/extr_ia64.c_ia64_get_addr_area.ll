; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_get_addr_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_get_addr_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@small_ident1 = common dso_local global i64 0, align 8
@small_ident2 = common dso_local global i64 0, align 8
@ADDR_AREA_SMALL = common dso_local global i32 0, align 4
@ADDR_AREA_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ia64_get_addr_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_get_addr_area(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @DECL_ATTRIBUTES(i64 %6)
  %8 = call i64 @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = call i32 (...) @init_idents()
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_VALUE(i64 %13)
  %15 = call i64 @TREE_VALUE(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @small_ident1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @small_ident2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %11
  %24 = load i32, i32* @ADDR_AREA_SMALL, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @ADDR_AREA_NORMAL, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i64) #1

declare dso_local i32 @init_idents(...) #1

declare dso_local i64 @TREE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
