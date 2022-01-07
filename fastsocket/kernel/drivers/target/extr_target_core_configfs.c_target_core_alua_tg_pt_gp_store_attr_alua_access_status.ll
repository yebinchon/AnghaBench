; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_alua_access_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_alua_access_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"Unable to do set ALUA access status on non valid tg_pt_gp ID: %hu\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Unable to extract new ALUA access status from %s\0A\00", align 1
@ALUA_STATUS_NONE = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_EXPLICT_STPG = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Illegal ALUA access status: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.t10_alua_tg_pt_gp*, i8*, i64)* @target_core_alua_tg_pt_gp_store_attr_alua_access_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_alua_tg_pt_gp_store_attr_alua_access_status(%struct.t10_alua_tg_pt_gp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %12 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %17 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %56

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strict_strtoul(i8* %23, i32 0, i64* %8)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %56

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ALUA_STATUS_NONE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ALUA_STATUS_ALTERED_BY_EXPLICT_STPG, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %56

51:                                               ; preds = %42, %38, %32
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %54 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %51, %46, %27, %15
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
