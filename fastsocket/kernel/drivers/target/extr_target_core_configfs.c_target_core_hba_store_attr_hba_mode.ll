; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_hba_store_attr_hba_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_hba_store_attr_hba_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { i32, i64, %struct.se_subsystem_api* }
%struct.se_subsystem_api = type { i32 (%struct.se_hba.0*, i64)* }
%struct.se_hba.0 = type opaque

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unable to extract hba mode flag: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to set hba_mode with active devices\0A\00", align 1
@HBA_FLAGS_PSCSI_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_hba*, i8*, i64)* @target_core_hba_store_attr_hba_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_hba_store_attr_hba_mode(%struct.se_hba* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_hba*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_subsystem_api*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.se_hba* %0, %struct.se_hba** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.se_hba*, %struct.se_hba** %5, align 8
  %12 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %11, i32 0, i32 2
  %13 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %12, align 8
  store %struct.se_subsystem_api* %13, %struct.se_subsystem_api** %8, align 8
  %14 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %8, align 8
  %15 = getelementptr inbounds %struct.se_subsystem_api, %struct.se_subsystem_api* %14, i32 0, i32 0
  %16 = load i32 (%struct.se_hba.0*, i64)*, i32 (%struct.se_hba.0*, i64)** %15, align 8
  %17 = icmp eq i32 (%struct.se_hba.0*, i64)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %75

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strict_strtoul(i8* %22, i32 0, i64* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %75

31:                                               ; preds = %21
  %32 = load %struct.se_hba*, %struct.se_hba** %5, align 8
  %33 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %8, align 8
  %42 = getelementptr inbounds %struct.se_subsystem_api, %struct.se_subsystem_api* %41, i32 0, i32 0
  %43 = load i32 (%struct.se_hba.0*, i64)*, i32 (%struct.se_hba.0*, i64)** %42, align 8
  %44 = load %struct.se_hba*, %struct.se_hba** %5, align 8
  %45 = bitcast %struct.se_hba* %44 to %struct.se_hba.0*
  %46 = load i64, i64* %9, align 8
  %47 = call i32 %43(%struct.se_hba.0* %45, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %4, align 8
  br label %75

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @HBA_FLAGS_PSCSI_MODE, align 4
  %58 = load %struct.se_hba*, %struct.se_hba** %5, align 8
  %59 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %73

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @HBA_FLAGS_PSCSI_MODE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.se_hba*, %struct.se_hba** %5, align 8
  %69 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %50, %36, %26, %18
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
