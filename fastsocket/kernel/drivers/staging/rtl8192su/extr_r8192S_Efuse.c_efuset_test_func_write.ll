; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuset_test_func_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuset_test_func_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@__const.efuset_test_func_write.macaddr = private unnamed_addr constant [6 x i32] [i32 0, i32 224, i32 76, i32 135, i32 18, i32 102], align 16
@EFUSE_MAC_ADDR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EFUSE_CCCR = common dso_local global i32 0, align 4
@EFUSE_SDIO_SETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuset_test_func_write(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [6 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %3, align 4
  store i32 2, i32* %4, align 4
  store i32 255, i32* %5, align 4
  %9 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @__const.efuset_test_func_write.macaddr to i8*), i64 24, i1 false)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @EFUSE_MAC_ADDR, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @efuse_write_data(%struct.net_device* %10, i32 %11, i32* %12, i32 24, i32 %13)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* @EFUSE_CCCR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @efuse_write_data(%struct.net_device* %16, i32 %17, i32* %4, i32 4, i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @EFUSE_SDIO_SETTING, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @efuse_write_data(%struct.net_device* %21, i32 %22, i32* %5, i32 4, i32 %23)
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @EFUSE_SDIO_SETTING, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @efuse_write_data(%struct.net_device* %30, i32 %31, i32* %32, i32 8, i32 %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @efuse_write_data(%struct.net_device*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
