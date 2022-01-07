; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ldmstm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_ldmstm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LDM_TYPE_2_OR_3 = common dso_local global i32 0, align 4
@WRITE_BACK = common dso_local global i32 0, align 4
@LOAD_BIT = common dso_local global i32 0, align 4
@REG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"writeback of base register is UNPREDICTABLE\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"writeback of base register when in register list is UNPREDICTABLE\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"if writeback register is in list, it must be the lowest reg in the list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_ldmstm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ldmstm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i64 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %1, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = shl i32 %11, 16
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %17 = or i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* @LDM_TYPE_2_OR_3, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %26 = or i32 %25, %24
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %27

27:                                               ; preds = %23, %0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = load i32, i32* @WRITE_BACK, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %36 = or i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %38 = load i32, i32* @LOAD_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %43 = load i32, i32* @LDM_TYPE_2_OR_3, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @REG_PC, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 @as_warn(i32 %53)
  br label %65

55:                                               ; preds = %46, %41
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %1, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @as_warn(i32 %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %52
  br label %92

66:                                               ; preds = %33
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %68 = load i32, i32* @LDM_TYPE_2_OR_3, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @as_warn(i32 %72)
  br label %91

74:                                               ; preds = %66
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %1, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %1, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @as_warn(i32 %88)
  br label %90

90:                                               ; preds = %87, %80, %74
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %27
  ret void
}

declare dso_local i32 @as_warn(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
