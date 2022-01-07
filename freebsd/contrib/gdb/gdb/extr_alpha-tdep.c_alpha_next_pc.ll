; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_next_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_next_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alpha_next_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_next_pc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @alpha_read_insn(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = lshr i32 %10, 26
  %12 = and i32 %11, 63
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 26
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 31
  %19 = call i32 @read_register(i32 %18)
  %20 = and i32 %19, -4
  store i32 %20, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 48
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 52
  br i1 %30, label %31, label %48

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %94, %89, %84, %79, %74, %69, %64, %58, %31
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2097151
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 1048576
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, -2097152
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %100

48:                                               ; preds = %28
  %49 = load i32, i32* %4, align 4
  %50 = lshr i32 %49, 21
  %51 = and i32 %50, 31
  %52 = call i32 @read_register(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %96 [
    i32 56, label %54
    i32 60, label %60
    i32 57, label %66
    i32 61, label %71
    i32 58, label %76
    i32 59, label %81
    i32 63, label %86
    i32 62, label %91
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %32

59:                                               ; preds = %54
  br label %96

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %32

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %48
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %32

70:                                               ; preds = %66
  br label %96

71:                                               ; preds = %48
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %32

75:                                               ; preds = %71
  br label %96

76:                                               ; preds = %48
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %32

80:                                               ; preds = %76
  br label %96

81:                                               ; preds = %48
  %82 = load i32, i32* %7, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %32

85:                                               ; preds = %81
  br label %96

86:                                               ; preds = %48
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %32

90:                                               ; preds = %86
  br label %96

91:                                               ; preds = %48
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %32

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %48, %95, %90, %85, %80, %75, %70, %65, %59
  br label %97

97:                                               ; preds = %96, %21
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %97, %41, %15
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @alpha_read_insn(i32) #1

declare dso_local i32 @read_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
