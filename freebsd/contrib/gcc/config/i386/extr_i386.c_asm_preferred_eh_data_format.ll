; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_asm_preferred_eh_data_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_asm_preferred_eh_data_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i64 0, align 8
@DW_EH_PE_sdata8 = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@ix86_cmodel = common dso_local global i64 0, align 8
@CM_SMALL_PIC = common dso_local global i64 0, align 8
@CM_MEDIUM_PIC = common dso_local global i64 0, align 8
@DW_EH_PE_sdata4 = common dso_local global i32 0, align 4
@DW_EH_PE_indirect = common dso_local global i32 0, align 4
@DW_EH_PE_pcrel = common dso_local global i32 0, align 4
@CM_SMALL = common dso_local global i64 0, align 8
@CM_MEDIUM = common dso_local global i64 0, align 8
@DW_EH_PE_udata4 = common dso_local global i32 0, align 4
@DW_EH_PE_absptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asm_preferred_eh_data_format(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @flag_pic, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load i32, i32* @DW_EH_PE_sdata8, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @TARGET_64BIT, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, i64* @ix86_cmodel, align 8
  %15 = load i64, i64* @CM_SMALL_PIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @ix86_cmodel, align 8
  %19 = load i64, i64* @CM_MEDIUM_PIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %13, %9
  %28 = load i32, i32* @DW_EH_PE_sdata4, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %24, %17
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @DW_EH_PE_indirect, align 4
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = load i32, i32* @DW_EH_PE_pcrel, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %2
  %42 = load i64, i64* @ix86_cmodel, align 8
  %43 = load i64, i64* @CM_SMALL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @ix86_cmodel, align 8
  %47 = load i64, i64* @CM_MEDIUM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %41
  %53 = load i32, i32* @DW_EH_PE_udata4, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %49, %45
  %55 = load i32, i32* @DW_EH_PE_absptr, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %35
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
