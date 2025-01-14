; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_dev_alias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_store_dev_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i8*, %struct.TYPE_4__, i32, %struct.se_hba* }
%struct.TYPE_4__ = type { i32 }
%struct.se_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SE_DEV_ALIAS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"alias count: %d exceeds SE_DEV_ALIAS_LEN-1: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DF_USING_ALIAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Target_Core_ConfigFS: %s/%s set alias: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @target_core_store_dev_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_store_dev_alias(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_device*, align 8
  %9 = alloca %struct.se_hba*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.se_device*
  store %struct.se_device* %12, %struct.se_device** %8, align 8
  %13 = load %struct.se_device*, %struct.se_device** %8, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 3
  %15 = load %struct.se_hba*, %struct.se_hba** %14, align 8
  store %struct.se_hba* %15, %struct.se_hba** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @SE_DEV_ALIAS_LEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @SE_DEV_ALIAS_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %80

29:                                               ; preds = %3
  %30 = load %struct.se_device*, %struct.se_device** %8, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i32, i32* @SE_DEV_ALIAS_LEN, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %29
  %43 = load %struct.se_device*, %struct.se_device** %8, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.se_device*, %struct.se_device** %8, align 8
  %55 = getelementptr inbounds %struct.se_device, %struct.se_device* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %53, %42
  %62 = load i32, i32* @DF_USING_ALIAS, align 4
  %63 = load %struct.se_device*, %struct.se_device** %8, align 8
  %64 = getelementptr inbounds %struct.se_device, %struct.se_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %68 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @config_item_name(i32* %69)
  %71 = load %struct.se_device*, %struct.se_device** %8, align 8
  %72 = getelementptr inbounds %struct.se_device, %struct.se_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @config_item_name(i32* %73)
  %75 = load %struct.se_device*, %struct.se_device** %8, align 8
  %76 = getelementptr inbounds %struct.se_device, %struct.se_device* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74, i8* %77)
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %61, %39, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*) #1

declare dso_local i32 @config_item_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
