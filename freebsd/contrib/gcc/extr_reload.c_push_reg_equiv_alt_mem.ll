; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_push_reg_equiv_alt_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_push_reg_equiv_alt_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_equiv_alt_mem_list = common dso_local global i64* null, align 8
@REG_EQUIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @push_reg_equiv_alt_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_reg_equiv_alt_mem(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i64*, i64** @reg_equiv_alt_mem_list, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @XEXP(i64 %15, i32 0)
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @rtx_equal_p(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @XEXP(i64 %23, i32 1)
  store i64 %24, i64* %5, align 8
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* @REG_EQUIV, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i64*, i64** @reg_equiv_alt_mem_list, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @alloc_EXPR_LIST(i32 %26, i64 %27, i64 %32)
  %34 = load i64*, i64** @reg_equiv_alt_mem_list, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %25, %20
  ret void
}

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @alloc_EXPR_LIST(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
