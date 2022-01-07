; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_arm_vfp_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_encode_arm_vfp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpu_variant = common dso_local global i32 0, align 4
@fpu_vfp_ext_v3 = common dso_local global i32 0, align 4
@thumb_mode = common dso_local global i64 0, align 8
@thumb_arch_used = common dso_local global i32 0, align 4
@arm_arch_used = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"D register out of range for selected VFP version\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @encode_arm_vfp_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_arm_vfp_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 133
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 131
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 132
  br i1 %12, label %13, label %39

13:                                               ; preds = %10, %7, %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 15
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, i32* @cpu_variant, align 4
  %18 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %19 = call i64 @ARM_CPU_HAS_FEATURE(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i64, i64* @thumb_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @thumb_arch_used, align 4
  %26 = load i32, i32* @thumb_arch_used, align 4
  %27 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %28 = call i32 @ARM_MERGE_FEATURE_SETS(i32 %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @arm_arch_used, align 4
  %31 = load i32, i32* @arm_arch_used, align 4
  %32 = load i32, i32* @fpu_vfp_ext_v3, align 4
  %33 = call i32 @ARM_MERGE_FEATURE_SETS(i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %38

35:                                               ; preds = %16
  %36 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @first_error(i32 %36)
  br label %102

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %13, %10
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %100 [
    i32 130, label %41
    i32 128, label %51
    i32 129, label %61
    i32 133, label %71
    i32 131, label %81
    i32 132, label %91
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 1
  %44 = shl i32 %43, 12
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 22
  %48 = or i32 %44, %47
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 1
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 1
  %57 = shl i32 %56, 7
  %58 = or i32 %54, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

61:                                               ; preds = %39
  %62 = load i32, i32* %3, align 4
  %63 = ashr i32 %62, 1
  %64 = shl i32 %63, 0
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 1
  %67 = shl i32 %66, 5
  %68 = or i32 %64, %67
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

71:                                               ; preds = %39
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 15
  %74 = shl i32 %73, 12
  %75 = load i32, i32* %3, align 4
  %76 = ashr i32 %75, 4
  %77 = shl i32 %76, 22
  %78 = or i32 %74, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

81:                                               ; preds = %39
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 16
  %85 = load i32, i32* %3, align 4
  %86 = ashr i32 %85, 4
  %87 = shl i32 %86, 7
  %88 = or i32 %84, %87
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

91:                                               ; preds = %39
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, 15
  %94 = load i32, i32* %3, align 4
  %95 = ashr i32 %94, 4
  %96 = shl i32 %95, 5
  %97 = or i32 %93, %96
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 4
  br label %102

100:                                              ; preds = %39
  %101 = call i32 (...) @abort() #3
  unreachable

102:                                              ; preds = %35, %91, %81, %71, %61, %51, %41
  ret void
}

declare dso_local i64 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @ARM_MERGE_FEATURE_SETS(i32, i32, i32) #1

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
