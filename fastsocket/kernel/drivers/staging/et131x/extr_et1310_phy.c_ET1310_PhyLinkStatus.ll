; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyLinkStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_phy.c_ET1310_PhyLinkStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32 }

@PHY_STATUS = common dso_local global i32 0, align 4
@PHY_1000_STATUS = common dso_local global i32 0, align 4
@PHY_PHY_STATUS = common dso_local global i32 0, align 4
@PHY_CONTROL = common dso_local global i32 0, align 4
@TRUEPHY_ANEG_COMPLETE = common dso_local global i32 0, align 4
@TRUEPHY_ANEG_NOT_COMPLETE = common dso_local global i32 0, align 4
@TRUEPHY_ANEG_DISABLED = common dso_local global i32 0, align 4
@TRUEPHY_CFG_MASTER = common dso_local global i32 0, align 4
@TRUEPHY_CFG_SLAVE = common dso_local global i32 0, align 4
@TRUEPHY_POLARITY_INVERTED = common dso_local global i32 0, align 4
@TRUEPHY_POLARITY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ET1310_PhyLinkStatus(%struct.et131x_adapter* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.et131x_adapter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %9, align 8
  %22 = load i32, i32* @PHY_STATUS, align 4
  %23 = call i32 @MiRead(%struct.et131x_adapter* %21, i32 %22, i32* %17)
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %9, align 8
  %25 = load i32, i32* @PHY_1000_STATUS, align 4
  %26 = call i32 @MiRead(%struct.et131x_adapter* %24, i32 %25, i32* %18)
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %9, align 8
  %28 = load i32, i32* @PHY_PHY_STATUS, align 4
  %29 = call i32 @MiRead(%struct.et131x_adapter* %27, i32 %28, i32* %19)
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %9, align 8
  %31 = load i32, i32* @PHY_CONTROL, align 4
  %32 = call i32 @MiRead(%struct.et131x_adapter* %30, i32 %31, i32* %20)
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %8
  %36 = load i32, i32* %19, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  store i8 %41, i8* %42, align 1
  br label %43

43:                                               ; preds = %35, %8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %20, align 4
  %48 = and i32 %47, 4096
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %19, align 4
  %52 = and i32 %51, 32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @TRUEPHY_ANEG_COMPLETE, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @TRUEPHY_ANEG_NOT_COMPLETE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  br label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @TRUEPHY_ANEG_DISABLED, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %43
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* %19, align 4
  %70 = and i32 %69, 768
  %71 = ashr i32 %70, 8
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %19, align 4
  %78 = and i32 %77, 128
  %79 = ashr i32 %78, 7
  %80 = load i32*, i32** %13, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32*, i32** %14, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32*, i32** %14, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32*, i32** %15, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %18, align 4
  %91 = and i32 %90, 16384
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @TRUEPHY_CFG_MASTER, align 4
  br label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @TRUEPHY_CFG_SLAVE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32*, i32** %15, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %86
  %101 = load i32*, i32** %16, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = and i32 %104, 1024
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @TRUEPHY_POLARITY_INVERTED, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @TRUEPHY_POLARITY_NORMAL, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32*, i32** %16, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %100
  ret void
}

declare dso_local i32 @MiRead(%struct.et131x_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
