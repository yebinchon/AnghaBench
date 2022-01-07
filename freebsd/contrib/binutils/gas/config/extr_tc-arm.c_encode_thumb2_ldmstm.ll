; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_thumb2_ldmstm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_thumb2_ldmstm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"SP not allowed in register list\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"LR and PC should not both be in register list\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"base register should not be in register list when written back\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"PC not allowed in register list\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"value stored for r%d is UNPREDICTABLE\00", align 1
@WRITE_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @encode_thumb2_ldmstm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_thumb2_ldmstm(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %9 = and i32 %8, 1048576
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 8192
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 16384
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %28, %24, %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i8* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @as_warn(i8* %40)
  br label %42

42:                                               ; preds = %39, %36, %30
  br label %60

43:                                               ; preds = %17
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 32768
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 1), align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @as_warn(i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub i32 %62, 1
  %64 = and i32 %61, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %71 = and i32 %70, 8388608
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 2820, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %75

74:                                               ; preds = %69
  store i32 3332, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %75

75:                                               ; preds = %74, %73
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %78 = and i32 %77, 8388608
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 8388608, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %82

81:                                               ; preds = %76
  store i32 3076, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %75
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %85 = or i32 %84, -130023424
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %90 = or i32 %89, 1048576
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ffs(i32 %92)
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 %95, 12
  store i32 %96, i32* %5, align 4
  br label %105

97:                                               ; preds = %60
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @WRITE_BACK, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %103 = or i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  br label %104

104:                                              ; preds = %100, %97
  br label %105

105:                                              ; preds = %104, %91
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %108 = or i32 %107, %106
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %109 = load i32, i32* %4, align 4
  %110 = shl i32 %109, 16
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %112 = or i32 %111, %110
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @as_warn(i8*, ...) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
