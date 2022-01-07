; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_merge_machines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-arm.c_bfd_arm_merge_machines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_mach_arm_unknown = common dso_local global i32 0, align 4
@bfd_arch_arm = common dso_local global i32 0, align 4
@bfd_mach_arm_ep9312 = common dso_local global i32 0, align 4
@bfd_mach_arm_XScale = common dso_local global i32 0, align 4
@bfd_mach_arm_iWMMXt = common dso_local global i32 0, align 4
@bfd_mach_arm_iWMMXt2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"ERROR: %B is compiled for the EP9312, whereas %B is compiled for XScale\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_arm_merge_machines(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @bfd_get_mach(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @bfd_get_mach(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @bfd_mach_arm_unknown, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @bfd_arch_arm, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @bfd_set_arch_mach(i32* %16, i32 %17, i32 %18)
  br label %96

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @bfd_mach_arm_unknown, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @bfd_arch_arm, align 4
  %27 = load i32, i32* @bfd_mach_arm_unknown, align 4
  %28 = call i32 @bfd_set_arch_mach(i32* %25, i32 %26, i32 %27)
  br label %95

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %94

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @bfd_mach_arm_ep9312, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @bfd_mach_arm_XScale, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @bfd_mach_arm_iWMMXt, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @bfd_mach_arm_iWMMXt2, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42, %38
  %51 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @_bfd_error_handler(i32 %51, i32* %52, i32* %53)
  %55 = load i32, i32* @bfd_error_wrong_format, align 4
  %56 = call i32 @bfd_set_error(i32 %55)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %98

58:                                               ; preds = %46, %34
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @bfd_mach_arm_ep9312, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @bfd_mach_arm_XScale, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @bfd_mach_arm_iWMMXt, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @bfd_mach_arm_iWMMXt2, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70, %66, %62
  %75 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @_bfd_error_handler(i32 %75, i32* %76, i32* %77)
  %79 = load i32, i32* @bfd_error_wrong_format, align 4
  %80 = call i32 @bfd_set_error(i32 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %98

82:                                               ; preds = %70, %58
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @bfd_arch_arm, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @bfd_set_arch_mach(i32* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %33
  br label %95

95:                                               ; preds = %94, %24
  br label %96

96:                                               ; preds = %95, %15
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %74, %50
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @bfd_get_mach(i32*) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
