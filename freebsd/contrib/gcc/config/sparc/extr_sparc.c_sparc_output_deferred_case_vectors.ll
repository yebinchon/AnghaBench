; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_output_deferred_case_vectors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_output_deferred_case_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sparc_addr_list = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@sparc_addr_diff_list = common dso_local global i64 0, align 8
@FUNCTION_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@asm_out_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sparc_output_deferred_case_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_output_deferred_case_vectors() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @sparc_addr_list, align 8
  %4 = load i64, i64* @NULL_RTX, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i64, i64* @sparc_addr_diff_list, align 8
  %8 = load i64, i64* @NULL_RTX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %50

11:                                               ; preds = %6, %0
  %12 = call i32 (...) @current_function_section()
  %13 = call i32 @switch_to_section(i32 %12)
  %14 = load i32, i32* @FUNCTION_BOUNDARY, align 4
  %15 = load i32, i32* @BITS_PER_UNIT, align 4
  %16 = sdiv i32 %14, %15
  %17 = call i32 @floor_log2(i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load i32, i32* @asm_out_file, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ASM_OUTPUT_ALIGN(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i64, i64* @sparc_addr_list, align 8
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %33, %24
  %27 = load i64, i64* %1, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i64, i64* %1, align 8
  %31 = call i64 @XEXP(i64 %30, i32 0)
  %32 = call i32 @sparc_output_addr_vec(i64 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = call i64 @XEXP(i64 %34, i32 1)
  store i64 %35, i64* %1, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load i64, i64* @sparc_addr_diff_list, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %45, %36
  %39 = load i64, i64* %1, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i64, i64* %1, align 8
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = call i32 @sparc_output_addr_diff_vec(i64 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %1, align 8
  %47 = call i64 @XEXP(i64 %46, i32 1)
  store i64 %47, i64* %1, align 8
  br label %38

48:                                               ; preds = %38
  %49 = load i64, i64* @NULL_RTX, align 8
  store i64 %49, i64* @sparc_addr_diff_list, align 8
  store i64 %49, i64* @sparc_addr_list, align 8
  br label %50

50:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @switch_to_section(i32) #1

declare dso_local i32 @current_function_section(...) #1

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @ASM_OUTPUT_ALIGN(i32, i32) #1

declare dso_local i32 @sparc_output_addr_vec(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @sparc_output_addr_diff_vec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
