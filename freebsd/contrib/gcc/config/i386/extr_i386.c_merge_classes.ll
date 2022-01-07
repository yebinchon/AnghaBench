; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_merge_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_merge_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_64_NO_CLASS = common dso_local global i32 0, align 4
@X86_64_MEMORY_CLASS = common dso_local global i32 0, align 4
@X86_64_INTEGERSI_CLASS = common dso_local global i32 0, align 4
@X86_64_SSESF_CLASS = common dso_local global i32 0, align 4
@X86_64_INTEGER_CLASS = common dso_local global i32 0, align 4
@X86_64_X87_CLASS = common dso_local global i32 0, align 4
@X86_64_X87UP_CLASS = common dso_local global i32 0, align 4
@X86_64_COMPLEX_X87_CLASS = common dso_local global i32 0, align 4
@X86_64_SSE_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @merge_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_classes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %3, align 4
  br label %97

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @X86_64_NO_CLASS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %97

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @X86_64_NO_CLASS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %3, align 4
  br label %97

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @X86_64_MEMORY_CLASS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @X86_64_MEMORY_CLASS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @X86_64_MEMORY_CLASS, align 4
  store i32 %32, i32* %3, align 4
  br label %97

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @X86_64_SSESF_CLASS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @X86_64_SSESF_CLASS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %37
  %50 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  store i32 %50, i32* %3, align 4
  br label %97

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @X86_64_INTEGERSI_CLASS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59, %55, %51
  %68 = load i32, i32* @X86_64_INTEGER_CLASS, align 4
  store i32 %68, i32* %3, align 4
  br label %97

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @X86_64_X87_CLASS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %93, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @X86_64_X87UP_CLASS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @X86_64_COMPLEX_X87_CLASS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @X86_64_X87_CLASS, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @X86_64_X87UP_CLASS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @X86_64_COMPLEX_X87_CLASS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %85, %81, %77, %73, %69
  %94 = load i32, i32* @X86_64_MEMORY_CLASS, align 4
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @X86_64_SSE_CLASS, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %93, %67, %49, %31, %21, %15, %9
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
