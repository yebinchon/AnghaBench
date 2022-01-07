; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_ConfigBBWithPgHeaderFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_ConfigBBWithPgHeaderFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PHY_REG_Array_PGLength = common dso_local global i32 0, align 4
@Rtl819XPHY_REG_Array_PG = common dso_local global i32* null, align 8
@BaseBand_Config_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"phy_ConfigBBWithPgHeaderFile(): ConfigType != BaseBand_Config_PHY_REG\0A\00", align 1
@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @phy_ConfigBBWithPgHeaderFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_ConfigBBWithPgHeaderFile(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @PHY_REG_Array_PGLength, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** @Rtl819XPHY_REG_Array_PG, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @BaseBand_Config_PHY_REG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %97, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 254
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @mdelay(i32 50)
  br label %77

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 253
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @mdelay(i32 5)
  br label %76

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 252
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @mdelay(i32 1)
  br label %75

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 251
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @udelay(i32 50)
  br label %74

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 250
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @udelay(i32 5)
  br label %73

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 249
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @udelay(i32 1)
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %61
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %43
  br label %76

76:                                               ; preds = %75, %34
  br label %77

77:                                               ; preds = %76, %25
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rtl8192_setBBreg(%struct.net_device* %78, i32 %83, i32 %89, i32 %95)
  br label %97

97:                                               ; preds = %77
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 3
  store i32 %99, i32* %5, align 4
  br label %14

100:                                              ; preds = %14
  br label %104

101:                                              ; preds = %2
  %102 = load i32, i32* @COMP_SEND, align 4
  %103 = call i32 @RT_TRACE(i32 %102, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %100
  %105 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  ret i32 %105
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
