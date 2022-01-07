; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_modify_type_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_modify_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_EQK = common dso_local global i32 0, align 4
@N_HLF = common dso_local global i32 0, align 4
@N_DBL = common dso_local global i32 0, align 4
@N_SGN = common dso_local global i32 0, align 4
@NT_signed = common dso_local global i32 0, align 4
@N_UNS = common dso_local global i32 0, align 4
@NT_unsigned = common dso_local global i32 0, align 4
@N_INT = common dso_local global i32 0, align 4
@NT_integer = common dso_local global i32 0, align 4
@N_FLT = common dso_local global i32 0, align 4
@NT_float = common dso_local global i32 0, align 4
@N_SIZ = common dso_local global i32 0, align 4
@NT_untyped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @neon_modify_type_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_modify_type_size(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @N_EQK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @N_HLF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = udiv i32 %18, 2
  store i32 %19, i32* %17, align 4
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @N_DBL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %27, 2
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @N_SGN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @NT_signed, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %74

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @N_UNS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @NT_unsigned, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %73

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @N_INT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @NT_integer, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %72

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @N_FLT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @NT_float, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %71

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @N_SIZ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @NT_untyped, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %43
  br label %74

74:                                               ; preds = %73, %35
  br label %75

75:                                               ; preds = %74, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
