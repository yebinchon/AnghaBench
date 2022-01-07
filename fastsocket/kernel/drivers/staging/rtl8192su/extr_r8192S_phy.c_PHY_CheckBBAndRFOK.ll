; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_CheckBBAndRFOK.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_CheckBBAndRFOK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@__const.PHY_CheckBBAndRFOK.WriteData = private unnamed_addr constant [4 x i32] [i32 -4057, i32 -1437229009, i32 39, i32 1437225007], align 16
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PHY_CheckBBRFOK(): Never Write 0x100 here!\0A\00", align 1
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@RT_STATUS_FAILURE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"read back error(read:%x, write:%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_CheckBBAndRFOK(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.PHY_CheckBBAndRFOK.WriteData to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 131
  store i32 256, i32* %15, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 130
  store i32 2304, i32* %16, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 129
  store i32 2048, i32* %17, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 128
  store i32 3, i32* %18, align 16
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %88, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %69 [
    i32 131, label %25
    i32 130, label %28
    i32 129, label %28
    i32 128, label %45
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @COMP_INIT, align 4
  %27 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %71

28:                                               ; preds = %23, %23
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @write_nic_dword(%struct.net_device* %29, i32 %33, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @read_nic_dword(%struct.net_device* %39, i32 %43)
  store i32 %44, i32* %10, align 4
  br label %71

45:                                               ; preds = %23
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 4095
  store i32 %50, i32* %48, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 128
  %54 = load i32, i32* %53, align 16
  %55 = load i32, i32* @bRFRegOffsetMask, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %51, i32 %52, i32 %54, i32 %55, i32 %59)
  %61 = call i32 @mdelay(i32 10)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 128
  %65 = load i32, i32* %64, align 16
  %66 = load i32, i32* @bMaskDWord, align 4
  %67 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %62, i32 %63, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = call i32 @mdelay(i32 10)
  br label %71

69:                                               ; preds = %23
  %70 = load i32, i32* @RT_STATUS_FAILURE, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %45, %28, %25
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* @COMP_ERR, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84)
  %86 = load i32, i32* @RT_STATUS_FAILURE, align 4
  store i32 %86, i32* %7, align 4
  br label %91

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %19

91:                                               ; preds = %78, %19
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #2

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #2

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32) #2

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @rtl8192_phy_QueryRFReg(%struct.net_device*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
