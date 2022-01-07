; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_set_tg_pt_secondary_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_set_tg_pt_secondary_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp_member = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.se_port = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Unable to complete secondary state transition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_EXPLICT_STPG = common dso_local global i32 0, align 4
@ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Successful %s ALUA transition TG PT Group: %s ID: %hu to secondary access state: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"explict\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"implict\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"Unable to allocate md_buf for secondary ALUA access metadata\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t10_alua_tg_pt_gp_member*, %struct.se_port*, i32, i32)* @core_alua_set_tg_pt_secondary_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_alua_set_tg_pt_secondary_state(%struct.t10_alua_tg_pt_gp_member* %0, %struct.se_port* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  %7 = alloca %struct.se_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.t10_alua_tg_pt_gp_member* %0, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  store %struct.se_port* %1, %struct.se_port** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %15 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %18 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %17, i32 0, i32 1
  %19 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %18, align 8
  store %struct.t10_alua_tg_pt_gp* %19, %struct.t10_alua_tg_pt_gp** %10, align 8
  %20 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %21 = icmp ne %struct.t10_alua_tg_pt_gp* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %24 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %111

29:                                               ; preds = %4
  %30 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %31 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.se_port*, %struct.se_port** %7, align 8
  %37 = getelementptr inbounds %struct.se_port, %struct.se_port* %36, i32 0, i32 3
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.se_port*, %struct.se_port** %7, align 8
  %41 = getelementptr inbounds %struct.se_port, %struct.se_port* %40, i32 0, i32 3
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %45 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ALUA_STATUS_ALTERED_BY_EXPLICT_STPG, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.se_port*, %struct.se_port** %7, align 8
  %56 = getelementptr inbounds %struct.se_port, %struct.se_port* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %61 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %62 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @config_item_name(i32* %63)
  %65 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %10, align 8
  %66 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %64, i32 %67, i8* %71)
  %73 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %74 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %53
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @msleep_interruptible(i32 %79)
  br label %81

81:                                               ; preds = %78, %53
  %82 = load %struct.se_port*, %struct.se_port** %7, align 8
  %83 = getelementptr inbounds %struct.se_port, %struct.se_port* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @kzalloc(i32 %87, i32 %88)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %111

96:                                               ; preds = %86
  %97 = load %struct.se_port*, %struct.se_port** %7, align 8
  %98 = getelementptr inbounds %struct.se_port, %struct.se_port* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %6, align 8
  %101 = load %struct.se_port*, %struct.se_port** %7, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @core_alua_update_tpg_secondary_metadata(%struct.t10_alua_tg_pt_gp_member* %100, %struct.se_port* %101, i8* %102, i32 %103)
  %105 = load %struct.se_port*, %struct.se_port** %7, align 8
  %106 = getelementptr inbounds %struct.se_port, %struct.se_port* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @kfree(i8* %108)
  br label %110

110:                                              ; preds = %96, %81
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %92, %22
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @config_item_name(i32*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @core_alua_update_tpg_secondary_metadata(%struct.t10_alua_tg_pt_gp_member*, %struct.se_port*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
