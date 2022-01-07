; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_for_each_saved_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_for_each_saved_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64 }

@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@GP_REG_LAST = common dso_local global i32 0, align 4
@GP_REG_FIRST = common dso_local global i32 0, align 4
@gpr_mode = common dso_local global i32 0, align 4
@TARGET_SINGLE_FLOAT = common dso_local global i64 0, align 8
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@FP_REG_LAST = common dso_local global i32 0, align 4
@FP_INC = common dso_local global i32 0, align 4
@FP_REG_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @mips_for_each_saved_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_for_each_saved_reg(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @GP_REG_LAST, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GP_REG_FIRST, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GP_REG_FIRST, align 4
  %31 = sub nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = and i64 %28, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %21
  %37 = load i32, i32* @gpr_mode, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @mips_save_restore_reg(i32 %37, i32 %38, i64 %39, i32 %40)
  %42 = load i32, i32* @gpr_mode, align 4
  %43 = call i64 @GET_MODE_SIZE(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %36, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = sub nsw i64 %56, %57
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* @TARGET_SINGLE_FLOAT, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @SFmode, align 4
  br label %65

63:                                               ; preds = %50
  %64 = load i32, i32* @DFmode, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @FP_REG_LAST, align 4
  %68 = load i32, i32* @FP_INC, align 4
  %69 = sub nsw i32 %67, %68
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %101, %65
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FP_REG_FIRST, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @FP_REG_FIRST, align 4
  %85 = sub nsw i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = shl i64 1, %86
  %88 = and i64 %82, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %75
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %6, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @mips_save_restore_reg(i32 %91, i32 %92, i64 %93, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @GET_MODE_SIZE(i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %90, %75
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @FP_INC, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %71

105:                                              ; preds = %71
  ret void
}

declare dso_local i32 @mips_save_restore_reg(i32, i32, i64, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
