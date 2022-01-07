; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_preferred_la_operand_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_preferred_la_operand_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_address = type { i64, i64, i64 }

@const0_rtx = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preferred_la_operand_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.s390_address, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @const0_rtx, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @Pmode, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @gen_rtx_PLUS(i32 %11, i64 %12, i64 %13)
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @s390_decompose_address(i64 %16, %struct.s390_address* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %85

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @REGNO(i64 %26)
  %28 = call i32 @REGNO_OK_FOR_BASE_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %85

31:                                               ; preds = %24, %20
  %32 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @REGNO(i64 %37)
  %39 = call i32 @REGNO_OK_FOR_INDEX_P(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %85

42:                                               ; preds = %35, %31
  %43 = load i32, i32* @TARGET_64BIT, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %85

50:                                               ; preds = %45, %42
  %51 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %85

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @REG_P(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @REG_POINTER(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %64, %59, %55
  %70 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @REG_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %6, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @REG_POINTER(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %64
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %78, %73, %69
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %54, %49, %41, %30, %19
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @s390_decompose_address(i64, %struct.s390_address*) #1

declare dso_local i32 @REGNO_OK_FOR_BASE_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @REGNO_OK_FOR_INDEX_P(i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REG_POINTER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
