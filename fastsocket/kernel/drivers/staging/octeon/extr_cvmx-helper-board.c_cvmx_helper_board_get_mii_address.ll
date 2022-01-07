; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c_cvmx_helper_board_get_mii_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c_cvmx_helper_board_get_mii_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"cvmx_helper_board_get_mii_address: Unknown board type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_board_get_mii_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %84 [
    i32 129, label %7
    i32 137, label %8
    i32 135, label %8
    i32 128, label %8
    i32 131, label %8
    i32 133, label %18
    i32 143, label %18
    i32 134, label %18
    i32 147, label %18
    i32 148, label %18
    i32 146, label %18
    i32 132, label %27
    i32 144, label %46
    i32 142, label %47
    i32 141, label %47
    i32 136, label %47
    i32 140, label %57
    i32 139, label %57
    i32 138, label %57
    i32 145, label %67
    i32 130, label %72
    i32 149, label %83
  ]

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 20
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 16
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %11, %8
  store i32 -1, i32* %2, align 4
  br label %89

18:                                               ; preds = %1, %1, %1, %1, %1, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 4, i32* %2, align 4
  br label %89

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 9, i32* %2, align 4
  br label %89

26:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %89

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 16
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %2, align 4
  br label %89

45:                                               ; preds = %38, %35
  store i32 -1, i32* %2, align 4
  br label %89

46:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

47:                                               ; preds = %1, %1, %1
  %48 = load i32, i32* %3, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %2, align 4
  br label %89

56:                                               ; preds = %50, %47
  store i32 -1, i32* %2, align 4
  br label %89

57:                                               ; preds = %1, %1, %1
  %58 = load i32, i32* %3, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %89

66:                                               ; preds = %60, %57
  store i32 -1, i32* %2, align 4
  br label %89

67:                                               ; preds = %1
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 4, i32* %2, align 4
  br label %89

71:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %89

72:                                               ; preds = %1
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 16
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 20
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 16
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %89

82:                                               ; preds = %75, %72
  store i32 -1, i32* %2, align 4
  br label %89

83:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

84:                                               ; preds = %1
  %85 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %83, %82, %78, %71, %70, %66, %63, %56, %53, %46, %45, %41, %33, %26, %25, %21, %17, %14, %7
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
