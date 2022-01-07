; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_call_addhbatotarget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_call_addhbatotarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.se_hba = type { %struct.config_group }

@TARGET_CORE_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Passed *name strlen(): %d exceeds TARGET_CORE_NAME_MAX_LEN: %d\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Unable to locate \22_\22 for $SUBSYSTEM_PLUGIN_$HOST_ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"strict_strtoul() returned %d for plugin_dep_id\0A\00", align 1
@target_core_hba_cit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_call_addhbatotarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_call_addhbatotarget(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.se_hba*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @TARGET_CORE_NAME_MAX_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* @TARGET_CORE_NAME_MAX_LEN, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* @TARGET_CORE_NAME_MAX_LEN, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* @TARGET_CORE_NAME_MAX_LEN, align 4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.config_group* @ERR_PTR(i32 %31)
  store %struct.config_group* %32, %struct.config_group** %3, align 8
  store i32 1, i32* %14, align 4
  br label %89

33:                                               ; preds = %2
  %34 = load i32, i32* @TARGET_CORE_NAME_MAX_LEN, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @snprintf(i8* %18, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.config_group* @ERR_PTR(i32 %43)
  store %struct.config_group* %44, %struct.config_group** %3, align 8
  store i32 1, i32* %14, align 4
  br label %89

45:                                               ; preds = %33
  store i8* %18, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i8* @strstr(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %7, align 8
  br label %60

56:                                               ; preds = %45
  %57 = load i8*, i8** %7, align 8
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strict_strtoul(i8* %61, i32 0, i64* %12)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.config_group* @ERR_PTR(i32 %69)
  store %struct.config_group* %70, %struct.config_group** %3, align 8
  store i32 1, i32* %14, align 4
  br label %89

71:                                               ; preds = %60
  %72 = call i32 (...) @transport_subsystem_check_init()
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call %struct.se_hba* @core_alloc_hba(i8* %73, i64 %74, i32 0)
  store %struct.se_hba* %75, %struct.se_hba** %9, align 8
  %76 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %77 = call i64 @IS_ERR(%struct.se_hba* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %81 = call %struct.config_group* @ERR_CAST(%struct.se_hba* %80)
  store %struct.config_group* %81, %struct.config_group** %3, align 8
  store i32 1, i32* %14, align 4
  br label %89

82:                                               ; preds = %71
  %83 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %84 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %83, i32 0, i32 0
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @config_group_init_type_name(%struct.config_group* %84, i8* %85, i32* @target_core_hba_cit)
  %87 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %88 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %87, i32 0, i32 0
  store %struct.config_group* %88, %struct.config_group** %3, align 8
  store i32 1, i32* %14, align 4
  br label %89

89:                                               ; preds = %82, %79, %65, %40, %25
  %90 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local %struct.config_group* @ERR_PTR(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #2

declare dso_local i32 @transport_subsystem_check_init(...) #2

declare dso_local %struct.se_hba* @core_alloc_hba(i8*, i64, i32) #2

declare dso_local i64 @IS_ERR(%struct.se_hba*) #2

declare dso_local %struct.config_group* @ERR_CAST(%struct.se_hba*) #2

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
