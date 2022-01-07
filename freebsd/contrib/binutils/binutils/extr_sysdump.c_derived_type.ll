; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_derived_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_sysdump.c_derived_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"DERIVED TYPE\00", align 1
@IT_dpp_CODE = common dso_local global i32 0, align 4
@IT_dfp_CODE = common dso_local global i32 0, align 4
@IT_den_CODE = common dso_local global i32 0, align 4
@IT_dds_CODE = common dso_local global i32 0, align 4
@IT_dar_CODE = common dso_local global i32 0, align 4
@IT_dpt_CODE = common dso_local global i32 0, align 4
@IT_dul_CODE = common dso_local global i32 0, align 4
@IT_dse_CODE = common dso_local global i32 0, align 4
@IT_dot_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @derived_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @derived_type() #0 {
  %1 = call i32 @tab(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %2

2:                                                ; preds = %0, %77
  %3 = load i32, i32* @IT_dpp_CODE, align 4
  %4 = call i64 @opt(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = call i32 (...) @dump_symbol_info()
  %8 = load i32, i32* @IT_dpp_CODE, align 4
  %9 = call i32 @must(i32 %8)
  br label %77

10:                                               ; preds = %2
  %11 = load i32, i32* @IT_dfp_CODE, align 4
  %12 = call i64 @opt(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 (...) @dump_symbol_info()
  %16 = load i32, i32* @IT_dfp_CODE, align 4
  %17 = call i32 @must(i32 %16)
  br label %76

18:                                               ; preds = %10
  %19 = load i32, i32* @IT_den_CODE, align 4
  %20 = call i64 @opt(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = call i32 (...) @dump_symbol_info()
  %24 = load i32, i32* @IT_den_CODE, align 4
  %25 = call i32 @must(i32 %24)
  br label %75

26:                                               ; preds = %18
  %27 = load i32, i32* @IT_den_CODE, align 4
  %28 = call i64 @opt(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = call i32 (...) @dump_symbol_info()
  %32 = load i32, i32* @IT_den_CODE, align 4
  %33 = call i32 @must(i32 %32)
  br label %74

34:                                               ; preds = %26
  %35 = load i32, i32* @IT_dds_CODE, align 4
  %36 = call i64 @opt(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 (...) @dump_symbol_info()
  %40 = load i32, i32* @IT_dds_CODE, align 4
  %41 = call i32 @must(i32 %40)
  br label %73

42:                                               ; preds = %34
  %43 = load i32, i32* @IT_dar_CODE, align 4
  %44 = call i64 @opt(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %72

47:                                               ; preds = %42
  %48 = load i32, i32* @IT_dpt_CODE, align 4
  %49 = call i64 @opt(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %71

52:                                               ; preds = %47
  %53 = load i32, i32* @IT_dul_CODE, align 4
  %54 = call i64 @opt(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %70

57:                                               ; preds = %52
  %58 = load i32, i32* @IT_dse_CODE, align 4
  %59 = call i64 @opt(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @IT_dot_CODE, align 4
  %64 = call i64 @opt(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62
  br label %78

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %51
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73, %30
  br label %75

75:                                               ; preds = %74, %22
  br label %76

76:                                               ; preds = %75, %14
  br label %77

77:                                               ; preds = %76, %6
  br label %2

78:                                               ; preds = %67
  %79 = call i32 @tab(i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tab(i32, i8*) #1

declare dso_local i64 @opt(i32) #1

declare dso_local i32 @dump_symbol_info(...) #1

declare dso_local i32 @must(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
