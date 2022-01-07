; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_alua_access_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_alua_access_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, i32, %struct.se_device* }
%struct.se_device = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Unable to do implict ALUA on non valid tg_pt_gp ID: %hu\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Unable to extract new ALUA access state from %s\0A\00", align 1
@TPGS_IMPLICT_ALUA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"Unable to process implict configfs ALUA transition while TPGS_IMPLICT_ALUA is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.t10_alua_tg_pt_gp*, i8*, i64)* @target_core_alua_tg_pt_gp_store_attr_alua_access_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_alua_tg_pt_gp_store_attr_alua_access_state(%struct.t10_alua_tg_pt_gp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %13 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %12, i32 0, i32 2
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %8, align 8
  %15 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %16 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %21 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %63

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strict_strtoul(i8* %27, i32 0, i64* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %63

36:                                               ; preds = %26
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %40 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TPGS_IMPLICT_ALUA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %63

49:                                               ; preds = %36
  %50 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %51 = load %struct.se_device*, %struct.se_device** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @core_alua_do_port_transition(%struct.t10_alua_tg_pt_gp* %50, %struct.se_device* %51, i32* null, i32* null, i32 %52, i32 0)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  br label %61

58:                                               ; preds = %49
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i64 [ %57, %56 ], [ %60, %58 ]
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %61, %45, %31, %19
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @core_alua_do_port_transition(%struct.t10_alua_tg_pt_gp*, %struct.se_device*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
