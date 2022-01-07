; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_check_valid_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_sbc.c_sbc_check_valid_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.se_device*)* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"target: lba %llu, sectors %u exceeds end lba %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @sbc_check_valid_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_check_valid_sectors(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 2
  %9 = load %struct.se_device*, %struct.se_device** %8, align 8
  store %struct.se_device* %9, %struct.se_device** %4, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.se_device*, %struct.se_device** %4, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = udiv i64 %12, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.se_device*, %struct.se_device** %4, align 8
  %19 = getelementptr inbounds %struct.se_device, %struct.se_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %21, align 8
  %23 = load %struct.se_device*, %struct.se_device** %4, align 8
  %24 = call i32 %22(%struct.se_device* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38, i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
