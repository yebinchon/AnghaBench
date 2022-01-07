; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_tg_pt_gp_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_alua_tg_pt_gp_store_attr_tg_pt_gp_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, %struct.config_group }
%struct.config_group = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"strict_strtoul() returned %d for tg_pt_gp_id\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"ALUA tg_pt_gp_id: %lu exceeds maximum: 0x0000ffff\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Target_Core_ConfigFS: Set ALUA Target Port Group: core/alua/tg_pt_gps/%s to ID: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.t10_alua_tg_pt_gp*, i8*, i64)* @target_core_alua_tg_pt_gp_store_attr_tg_pt_gp_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_alua_tg_pt_gp_store_attr_tg_pt_gp_id(%struct.t10_alua_tg_pt_gp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.config_group*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %12 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %11, i32 0, i32 1
  store %struct.config_group* %12, %struct.config_group** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strict_strtoul(i8* %13, i32 0, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %50

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 65535
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %50

31:                                               ; preds = %23
  %32 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @core_alua_set_tg_pt_gp_id(%struct.t10_alua_tg_pt_gp* %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %50

41:                                               ; preds = %31
  %42 = load %struct.config_group*, %struct.config_group** %8, align 8
  %43 = getelementptr inbounds %struct.config_group, %struct.config_group* %42, i32 0, i32 0
  %44 = call i32 @config_item_name(i32* %43)
  %45 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %46 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %41, %38, %26, %17
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @core_alua_set_tg_pt_gp_id(%struct.t10_alua_tg_pt_gp*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @config_item_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
