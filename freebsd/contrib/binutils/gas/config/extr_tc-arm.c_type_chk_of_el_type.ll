; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_type_chk_of_el_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_type_chk_of_el_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_8 = common dso_local global i32 0, align 4
@N_16 = common dso_local global i32 0, align 4
@N_32 = common dso_local global i32 0, align 4
@N_64 = common dso_local global i32 0, align 4
@N_I8 = common dso_local global i32 0, align 4
@N_I16 = common dso_local global i32 0, align 4
@N_I32 = common dso_local global i32 0, align 4
@N_I64 = common dso_local global i32 0, align 4
@N_F32 = common dso_local global i32 0, align 4
@N_F64 = common dso_local global i32 0, align 4
@N_P8 = common dso_local global i32 0, align 4
@N_P16 = common dso_local global i32 0, align 4
@N_S8 = common dso_local global i32 0, align 4
@N_S16 = common dso_local global i32 0, align 4
@N_S32 = common dso_local global i32 0, align 4
@N_S64 = common dso_local global i32 0, align 4
@N_U8 = common dso_local global i32 0, align 4
@N_U16 = common dso_local global i32 0, align 4
@N_U32 = common dso_local global i32 0, align 4
@N_U64 = common dso_local global i32 0, align 4
@N_UTYP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @type_chk_of_el_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_chk_of_el_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %71 [
    i32 128, label %7
    i32 132, label %19
    i32 133, label %31
    i32 131, label %39
    i32 130, label %47
    i32 129, label %59
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %17 [
    i32 8, label %9
    i32 16, label %11
    i32 32, label %13
    i32 64, label %15
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @N_8, align 4
  store i32 %10, i32* %3, align 4
  br label %74

11:                                               ; preds = %7
  %12 = load i32, i32* @N_16, align 4
  store i32 %12, i32* %3, align 4
  br label %74

13:                                               ; preds = %7
  %14 = load i32, i32* @N_32, align 4
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %7
  %16 = load i32, i32* @N_64, align 4
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  br label %72

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %29 [
    i32 8, label %21
    i32 16, label %23
    i32 32, label %25
    i32 64, label %27
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @N_I8, align 4
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %19
  %24 = load i32, i32* @N_I16, align 4
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %19
  %26 = load i32, i32* @N_I32, align 4
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %19
  %28 = load i32, i32* @N_I64, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  br label %72

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %37 [
    i32 32, label %33
    i32 64, label %35
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @N_F32, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %31
  %36 = load i32, i32* @N_F64, align 4
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  br label %72

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %45 [
    i32 8, label %41
    i32 16, label %43
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @N_P8, align 4
  store i32 %42, i32* %3, align 4
  br label %74

43:                                               ; preds = %39
  %44 = load i32, i32* @N_P16, align 4
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %72

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %57 [
    i32 8, label %49
    i32 16, label %51
    i32 32, label %53
    i32 64, label %55
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @N_S8, align 4
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %47
  %52 = load i32, i32* @N_S16, align 4
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %47
  %54 = load i32, i32* @N_S32, align 4
  store i32 %54, i32* %3, align 4
  br label %74

55:                                               ; preds = %47
  %56 = load i32, i32* @N_S64, align 4
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  br label %72

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %69 [
    i32 8, label %61
    i32 16, label %63
    i32 32, label %65
    i32 64, label %67
  ]

61:                                               ; preds = %59
  %62 = load i32, i32* @N_U8, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %59
  %64 = load i32, i32* @N_U16, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %59
  %66 = load i32, i32* @N_U32, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @N_U64, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  br label %72

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %71, %70, %58, %46, %38, %30, %18
  %73 = load i32, i32* @N_UTYP, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %67, %65, %63, %61, %55, %53, %51, %49, %43, %41, %35, %33, %27, %25, %23, %21, %15, %13, %11, %9
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
