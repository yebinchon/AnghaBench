; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_form.c_dwarf_get_form_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_form.c_dwarf_get_form_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_FORM_CLASS_ADDRESS = common dso_local global i32 0, align 4
@DW_FORM_CLASS_BLOCK = common dso_local global i32 0, align 4
@DW_FORM_CLASS_STRING = common dso_local global i32 0, align 4
@DW_FORM_CLASS_FLAG = common dso_local global i32 0, align 4
@DW_FORM_CLASS_REFERENCE = common dso_local global i32 0, align 4
@DW_FORM_CLASS_EXPRLOC = common dso_local global i32 0, align 4
@DW_FORM_CLASS_CONSTANT = common dso_local global i32 0, align 4
@DW_FORM_CLASS_LOCLISTPTR = common dso_local global i32 0, align 4
@DW_FORM_CLASS_LINEPTR = common dso_local global i32 0, align 4
@DW_FORM_CLASS_RANGELISTPTR = common dso_local global i32 0, align 4
@DW_FORM_CLASS_MACPTR = common dso_local global i32 0, align 4
@DW_FORM_CLASS_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_get_form_class(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %67 [
    i32 151, label %11
    i32 150, label %13
    i32 149, label %13
    i32 148, label %13
    i32 147, label %13
    i32 130, label %15
    i32 129, label %15
    i32 141, label %17
    i32 140, label %17
    i32 135, label %19
    i32 134, label %19
    i32 133, label %19
    i32 139, label %19
    i32 138, label %19
    i32 137, label %19
    i32 136, label %19
    i32 142, label %21
    i32 146, label %23
    i32 145, label %23
    i32 132, label %23
    i32 128, label %23
    i32 144, label %25
    i32 143, label %25
    i32 131, label %47
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @DW_FORM_CLASS_ADDRESS, align 4
  store i32 %12, i32* %5, align 4
  br label %69

13:                                               ; preds = %4, %4, %4, %4
  %14 = load i32, i32* @DW_FORM_CLASS_BLOCK, align 4
  store i32 %14, i32* %5, align 4
  br label %69

15:                                               ; preds = %4, %4
  %16 = load i32, i32* @DW_FORM_CLASS_STRING, align 4
  store i32 %16, i32* %5, align 4
  br label %69

17:                                               ; preds = %4, %4
  %18 = load i32, i32* @DW_FORM_CLASS_FLAG, align 4
  store i32 %18, i32* %5, align 4
  br label %69

19:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %20 = load i32, i32* @DW_FORM_CLASS_REFERENCE, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load i32, i32* @DW_FORM_CLASS_EXPRLOC, align 4
  store i32 %22, i32* %5, align 4
  br label %69

23:                                               ; preds = %4, %4, %4, %4
  %24 = load i32, i32* @DW_FORM_CLASS_CONSTANT, align 4
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4, %4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @DW_FORM_CLASS_CONSTANT, align 4
  store i32 %29, i32* %5, align 4
  br label %69

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 144
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @DW_FORM_CLASS_CONSTANT, align 4
  store i32 %37, i32* %5, align 4
  br label %69

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 143
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @DW_FORM_CLASS_CONSTANT, align 4
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %4, %46
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %57 [
    i32 162, label %49
    i32 154, label %49
    i32 159, label %49
    i32 164, label %49
    i32 163, label %49
    i32 158, label %49
    i32 156, label %49
    i32 153, label %49
    i32 152, label %49
    i32 155, label %51
    i32 157, label %53
    i32 160, label %53
    i32 161, label %55
  ]

49:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47
  %50 = load i32, i32* @DW_FORM_CLASS_LOCLISTPTR, align 4
  store i32 %50, i32* %5, align 4
  br label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @DW_FORM_CLASS_LINEPTR, align 4
  store i32 %52, i32* %5, align 4
  br label %69

53:                                               ; preds = %47, %47
  %54 = load i32, i32* @DW_FORM_CLASS_RANGELISTPTR, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %47
  %56 = load i32, i32* @DW_FORM_CLASS_MACPTR, align 4
  store i32 %56, i32* %5, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 144
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 143
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @DW_FORM_CLASS_CONSTANT, align 4
  store i32 %64, i32* %5, align 4
  br label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @DW_FORM_CLASS_UNKNOWN, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %4
  %68 = load i32, i32* @DW_FORM_CLASS_UNKNOWN, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65, %63, %55, %53, %51, %49, %44, %36, %28, %23, %21, %19, %17, %15, %13, %11
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
