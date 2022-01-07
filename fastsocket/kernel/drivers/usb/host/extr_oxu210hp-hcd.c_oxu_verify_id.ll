; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_verify_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_verify_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"128-pin LQFP\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"84-pin TFBGA\00", align 1
@__const.oxu_verify_id.bo = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0)], align 16
@OXU_DEVICEID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"device ID %x\0A\00", align 1
@OXU_REV_MASK = common dso_local global i64 0, align 8
@OXU_REV_2100 = common dso_local global i64 0, align 8
@OXU_REV_SHIFT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"found device %x %s (%04x:%04x)\0A\00", align 1
@OXU_BO_MASK = common dso_local global i64 0, align 8
@OXU_BO_SHIFT = common dso_local global i64 0, align 8
@OXU_MAJ_REV_MASK = common dso_local global i64 0, align 8
@OXU_MAJ_REV_SHIFT = common dso_local global i64 0, align 8
@OXU_MIN_REV_MASK = common dso_local global i64 0, align 8
@OXU_MIN_REV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @oxu_verify_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxu_verify_id(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8*], align 16
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast [4 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.oxu_verify_id.bo to i8*), i64 32, i1 false)
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @OXU_DEVICEID, align 4
  %11 = call i64 @oxu_readl(i8* %9, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @OXU_REV_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @OXU_REV_2100, align 8
  %20 = load i64, i64* @OXU_REV_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @OXU_REV_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @OXU_BO_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @OXU_BO_SHIFT, align 8
  %34 = lshr i64 %32, %33
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %7, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @OXU_MAJ_REV_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @OXU_MAJ_REV_SHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @OXU_MIN_REV_MASK, align 8
  %44 = and i64 %42, %43
  %45 = load i64, i64* @OXU_MIN_REV_SHIFT, align 8
  %46 = lshr i64 %44, %45
  %47 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %29, i8* %36, i64 %41, i64 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %24, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @oxu_readl(i8*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
