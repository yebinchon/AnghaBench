; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_test_exp_in_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_simplify_test_exp_in_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }

@rtl_obstack = common dso_local global %struct.obstack* null, align 8
@temp_obstack = common dso_local global %struct.obstack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @simplify_test_exp_in_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_test_exp_in_temp(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.obstack*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ATTR_IND_SIMPLIFIED_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %4, align 8
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.obstack*, %struct.obstack** @rtl_obstack, align 8
  store %struct.obstack* %16, %struct.obstack** %9, align 8
  %17 = load %struct.obstack*, %struct.obstack** @temp_obstack, align 8
  store %struct.obstack* %17, %struct.obstack** @rtl_obstack, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @simplify_test_exp(i64 %18, i32 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.obstack*, %struct.obstack** %9, align 8
  store %struct.obstack* %22, %struct.obstack** @rtl_obstack, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load %struct.obstack*, %struct.obstack** @rtl_obstack, align 8
  %28 = load %struct.obstack*, %struct.obstack** @temp_obstack, align 8
  %29 = icmp eq %struct.obstack* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %15
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %4, align 8
  br label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @attr_copy_rtx(i64 %33)
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %32, %30, %13
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @ATTR_IND_SIMPLIFIED_P(i64) #1

declare dso_local i64 @simplify_test_exp(i64, i32, i32) #1

declare dso_local i64 @attr_copy_rtx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
