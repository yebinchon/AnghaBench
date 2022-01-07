; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_offline_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_offline_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.t10_alua_tg_pt_gp_member* }
%struct.t10_alua_tg_pt_gp_member = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unable to extract alua_tg_pt_offline value\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Illegal value for alua_tg_pt_offline: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to locate *tg_pt_gp_mem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @core_alua_store_offline_bit(%struct.se_lun* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.se_lun* %0, %struct.se_lun** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %12 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strict_strtoul(i8* %19, i32 0, i64* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %65

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %65

38:                                               ; preds = %30, %27
  %39 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %40 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %42, align 8
  store %struct.t10_alua_tg_pt_gp_member* %43, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %44 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %45 = icmp ne %struct.t10_alua_tg_pt_gp_member* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %65

50:                                               ; preds = %38
  %51 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %8, align 8
  %52 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %53 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @core_alua_set_tg_pt_secondary_state(%struct.t10_alua_tg_pt_gp_member* %51, %struct.TYPE_2__* %54, i32 0, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %4, align 8
  br label %65

63:                                               ; preds = %50
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %60, %46, %33, %23, %15
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @core_alua_set_tg_pt_secondary_state(%struct.t10_alua_tg_pt_gp_member*, %struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
