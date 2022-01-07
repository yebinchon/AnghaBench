; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_register_fabric.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_register_fabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_5__, %struct.config_group** }
%struct.TYPE_5__ = type { i8* }
%struct.target_fabric_configfs = type { i8*, %struct.config_group, %struct.TYPE_5__*, i32, %struct.TYPE_4__, %struct.config_group, %struct.config_group** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8, i8 }

@.str = private unnamed_addr constant [54 x i8] c"Target_Core_ConfigFS: REGISTER -> group: %p name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iscsi\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"iscsi_target_mod\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"request_module() failed for iscsi_target_mod.ko: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tcm_loop\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"request_module() failed for tcm_loop.ko: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"target_core_get_fabric() failed for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Target_Core_ConfigFS: REGISTER -> Located fabric: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Target_Core_ConfigFS: REGISTER tfc_wwn_cit -> %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"discovery_auth\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Target_Core_ConfigFS: REGISTER -> Allocated Fabric: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"Target_Core_ConfigFS: REGISTER -> Set tf->tf_fabric for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_register_fabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_register_fabric(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.target_fabric_configfs*, align 8
  %7 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.config_group*, %struct.config_group** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.config_group* %8, i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = call i32 @request_module(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.config_group* @ERR_PTR(i32 %22)
  store %struct.config_group* %23, %struct.config_group** %3, align 8
  br label %113

24:                                               ; preds = %14
  br label %41

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.config_group* @ERR_PTR(i32 %37)
  store %struct.config_group* %38, %struct.config_group** %3, align 8
  br label %113

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i8*, i8** %5, align 8
  %43 = call %struct.target_fabric_configfs* @target_core_get_fabric(i8* %42)
  store %struct.target_fabric_configfs* %43, %struct.target_fabric_configfs** %6, align 8
  %44 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %45 = icmp ne %struct.target_fabric_configfs* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.config_group* @ERR_PTR(i32 %50)
  store %struct.config_group* %51, %struct.config_group** %3, align 8
  br label %113

52:                                               ; preds = %41
  %53 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %54 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %55)
  %57 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %58 = call %struct.TYPE_6__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  %61 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %62 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %61, i32 0, i32 6
  %63 = load %struct.config_group**, %struct.config_group*** %62, align 8
  %64 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %65 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.config_group, %struct.config_group* %65, i32 0, i32 1
  store %struct.config_group** %63, %struct.config_group*** %66, align 8
  %67 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %68 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %67, i32 0, i32 5
  %69 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %70 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.config_group, %struct.config_group* %70, i32 0, i32 1
  %72 = load %struct.config_group**, %struct.config_group*** %71, align 8
  %73 = getelementptr inbounds %struct.config_group*, %struct.config_group** %72, i64 0
  store %struct.config_group* %68, %struct.config_group** %73, align 8
  %74 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %75 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.config_group, %struct.config_group* %75, i32 0, i32 1
  %77 = load %struct.config_group**, %struct.config_group*** %76, align 8
  %78 = getelementptr inbounds %struct.config_group*, %struct.config_group** %77, i64 1
  store %struct.config_group* null, %struct.config_group** %78, align 8
  %79 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %80 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %79, i32 0, i32 1
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %83 = call %struct.TYPE_6__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @config_group_init_type_name(%struct.config_group* %80, i8* %81, i8* %84)
  %86 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %87 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %86, i32 0, i32 5
  %88 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %89 = call %struct.TYPE_6__* @TF_CIT_TMPL(%struct.target_fabric_configfs* %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @config_group_init_type_name(%struct.config_group* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %90)
  %92 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %93 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.config_group, %struct.config_group* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* %96)
  %98 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %99 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %102 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %105 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.config_group, %struct.config_group* %105, i32 0, i32 0
  %107 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %108 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %107, i32 0, i32 2
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %108, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i8* %109)
  %111 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %6, align 8
  %112 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %111, i32 0, i32 1
  store %struct.config_group* %112, %struct.config_group** %3, align 8
  br label %113

113:                                              ; preds = %52, %46, %33, %18
  %114 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %114
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.target_fabric_configfs* @target_core_get_fabric(i8*) #1

declare dso_local %struct.TYPE_6__* @TF_CIT_TMPL(%struct.target_fabric_configfs*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
