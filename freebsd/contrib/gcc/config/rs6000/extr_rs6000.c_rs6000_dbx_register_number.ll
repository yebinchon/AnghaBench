; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_dbx_register_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_dbx_register_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_symbols = common dso_local global i64 0, align 8
@DWARF2_DEBUG = common dso_local global i64 0, align 8
@MQ_REGNO = common dso_local global i32 0, align 4
@LINK_REGISTER_REGNUM = common dso_local global i32 0, align 4
@COUNT_REGISTER_REGNUM = common dso_local global i32 0, align 4
@CR0_REGNO = common dso_local global i32 0, align 4
@XER_REGNO = common dso_local global i32 0, align 4
@FIRST_ALTIVEC_REGNO = common dso_local global i32 0, align 4
@VRSAVE_REGNO = common dso_local global i32 0, align 4
@VSCR_REGNO = common dso_local global i32 0, align 4
@SPE_ACC_REGNO = common dso_local global i32 0, align 4
@SPEFSCR_REGNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_dbx_register_number(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ule i32 %4, 63
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @write_symbols, align 8
  %8 = load i64, i64* @DWARF2_DEBUG, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MQ_REGNO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 100, i32* %2, align 4
  br label %81

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 108, i32* %2, align 4
  br label %81

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @COUNT_REGISTER_REGNUM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 109, i32* %2, align 4
  br label %81

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @CR_REGNO_P(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CR0_REGNO, align 4
  %34 = sub i32 %32, %33
  %35 = add i32 %34, 86
  store i32 %35, i32* %2, align 4
  br label %81

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @XER_REGNO, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 101, i32* %2, align 4
  br label %81

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @ALTIVEC_REGNO_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @FIRST_ALTIVEC_REGNO, align 4
  %48 = sub i32 %46, %47
  %49 = add i32 %48, 1124
  store i32 %49, i32* %2, align 4
  br label %81

50:                                               ; preds = %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @VRSAVE_REGNO, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 356, i32* %2, align 4
  br label %81

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @VSCR_REGNO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 67, i32* %2, align 4
  br label %81

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @SPE_ACC_REGNO, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 99, i32* %2, align 4
  br label %81

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SPEFSCR_REGNO, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 612, i32* %2, align 4
  br label %81

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = icmp uge i32 %71, 1200
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = icmp ult i32 %74, 1232
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @gcc_assert(i32 %78)
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %69, %64, %59, %54, %45, %40, %31, %26, %21, %16, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @CR_REGNO_P(i32) #1

declare dso_local i64 @ALTIVEC_REGNO_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
