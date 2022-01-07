; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_alua_lu_gp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_alua_lu_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_5__, %struct.t10_alua_lu_gp_member*, %struct.se_hba* }
%struct.TYPE_5__ = type { i32 }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp* }
%struct.t10_alua_lu_gp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.se_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LU_GROUP_NAME_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ALUA LU Group Alias too large!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [88 x i8] c"Target_Core_ConfigFS: Releasing %s/%s from ALUA LU Group: core/alua/lu_gps/%s, ID: %hu\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Target_Core_ConfigFS: %s %s/%s to ALUA LU Group: core/alua/lu_gps/%s, ID: %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Moving\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @target_core_store_alua_lu_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @target_core_store_alua_lu_gp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca %struct.se_hba*, align 8
  %10 = alloca %struct.t10_alua_lu_gp*, align 8
  %11 = alloca %struct.t10_alua_lu_gp*, align 8
  %12 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.se_device*
  store %struct.se_device* %18, %struct.se_device** %8, align 8
  %19 = load %struct.se_device*, %struct.se_device** %8, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 2
  %21 = load %struct.se_hba*, %struct.se_hba** %20, align 8
  store %struct.se_hba* %21, %struct.se_hba** %9, align 8
  store %struct.t10_alua_lu_gp* null, %struct.t10_alua_lu_gp** %10, align 8
  store %struct.t10_alua_lu_gp* null, %struct.t10_alua_lu_gp** %11, align 8
  %22 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.se_device*, %struct.se_device** %8, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 1
  %28 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %27, align 8
  store %struct.t10_alua_lu_gp_member* %28, %struct.t10_alua_lu_gp_member** %12, align 8
  %29 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %30 = icmp ne %struct.t10_alua_lu_gp_member* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %131

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %131

41:                                               ; preds = %32
  %42 = load i32, i32* @LU_GROUP_NAME_BUF, align 4
  %43 = call i32 @memset(i8* %25, i32 0, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @memcpy(i8* %25, i8* %44, i64 %45)
  %47 = call i32 @strstrip(i8* %25)
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = call i32 @strstrip(i8* %25)
  %52 = call %struct.t10_alua_lu_gp* @core_alua_get_lu_gp_by_name(i32 %51)
  store %struct.t10_alua_lu_gp* %52, %struct.t10_alua_lu_gp** %11, align 8
  %53 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %54 = icmp ne %struct.t10_alua_lu_gp* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @ENODEV, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %131

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %61 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %60, i32 0, i32 0
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %64 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %63, i32 0, i32 1
  %65 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %64, align 8
  store %struct.t10_alua_lu_gp* %65, %struct.t10_alua_lu_gp** %10, align 8
  %66 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %67 = icmp ne %struct.t10_alua_lu_gp* %66, null
  br i1 %67, label %68, label %101

68:                                               ; preds = %59
  %69 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %70 = icmp ne %struct.t10_alua_lu_gp* %69, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %68
  %72 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %73 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @config_item_name(i32* %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.se_device*, %struct.se_device** %8, align 8
  %79 = getelementptr inbounds %struct.se_device, %struct.se_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @config_item_name(i32* %80)
  %82 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %83 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @config_item_name(i32* %84)
  %86 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %87 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8* %77, i32 %81, i32 %85, i32 %88)
  %90 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %91 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %92 = call i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member* %90, %struct.t10_alua_lu_gp* %91)
  %93 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %94 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i64, i64* %7, align 8
  store i64 %96, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %131

97:                                               ; preds = %68
  %98 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %99 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %10, align 8
  %100 = call i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member* %98, %struct.t10_alua_lu_gp* %99)
  store i32 1, i32* %15, align 4
  br label %101

101:                                              ; preds = %97, %59
  %102 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %103 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %104 = call i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member* %102, %struct.t10_alua_lu_gp* %103)
  %105 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %12, align 8
  %106 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %112 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %113 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @config_item_name(i32* %114)
  %116 = load %struct.se_device*, %struct.se_device** %8, align 8
  %117 = getelementptr inbounds %struct.se_device, %struct.se_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @config_item_name(i32* %118)
  %120 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %121 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = call i32 @config_item_name(i32* %122)
  %124 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %125 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* %111, i32 %115, i32 %119, i32 %123, i32 %126)
  %128 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %11, align 8
  %129 = call i32 @core_alua_put_lu_gp_from_name(%struct.t10_alua_lu_gp* %128)
  %130 = load i64, i64* %7, align 8
  store i64 %130, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %131

131:                                              ; preds = %101, %71, %55, %37, %31
  %132 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @strstrip(i8*) #2

declare dso_local %struct.t10_alua_lu_gp* @core_alua_get_lu_gp_by_name(i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @config_item_name(i32*) #2

declare dso_local i32 @__core_alua_drop_lu_gp_mem(%struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @__core_alua_attach_lu_gp_mem(%struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp*) #2

declare dso_local i32 @core_alua_put_lu_gp_from_name(%struct.t10_alua_lu_gp*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
