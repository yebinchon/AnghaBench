; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_change_dynamic_initgain_thresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_dm.c_dm_change_dynamic_initgain_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32, i64, i64, i64, i64, i8*, i64, i64, i64 }
%struct.net_device = type { i32 }

@DIG_TYPE_THRESH_HIGH = common dso_local global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIG_TYPE_THRESH_LOW = common dso_local global i64 0, align 8
@DIG_TYPE_THRESH_HIGHPWR_HIGH = common dso_local global i64 0, align 8
@DIG_TYPE_ENABLE = common dso_local global i64 0, align 8
@DM_STA_DIG_MAX = common dso_local global i8* null, align 8
@DIG_TYPE_DISABLE = common dso_local global i64 0, align 8
@DIG_TYPE_DBG_MODE = common dso_local global i64 0, align 8
@DM_DBG_MAX = common dso_local global i64 0, align 8
@DM_DBG_OFF = common dso_local global i64 0, align 8
@DIG_TYPE_RSSI = common dso_local global i64 0, align 8
@DIG_TYPE_ALGORITHM = common dso_local global i64 0, align 8
@DIG_ALGO_MAX = common dso_local global i64 0, align 8
@DIG_ALGO_BY_FALSE_ALARM = common dso_local global i64 0, align 8
@DIG_TYPE_BACKOFF = common dso_local global i64 0, align 8
@DIG_TYPE_RX_GAIN_MIN = common dso_local global i64 0, align 8
@DIG_TYPE_RX_GAIN_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_change_dynamic_initgain_thresh(%struct.net_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @DIG_TYPE_THRESH_HIGH, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 11), align 8
  br label %122

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @DIG_TYPE_THRESH_LOW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 10), align 8
  br label %121

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @DIG_TYPE_THRESH_HIGHPWR_HIGH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 9), align 8
  br label %120

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @DIG_TYPE_THRESH_HIGHPWR_HIGH, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 9), align 8
  br label %119

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @DIG_TYPE_ENABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  br label %118

36:                                               ; preds = %30
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @DIG_TYPE_DISABLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  br label %117

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @DIG_TYPE_DBG_MODE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @DM_DBG_MAX, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @DM_DBG_OFF, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  br label %116

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @DIG_TYPE_RSSI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = icmp sgt i64 %59, 100
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 30, i64* %6, align 8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  br label %115

64:                                               ; preds = %54
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @DIG_TYPE_ALGORITHM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @DIG_ALGO_MAX, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @DIG_ALGO_BY_FALSE_ALARM, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  br label %114

81:                                               ; preds = %64
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @DIG_TYPE_BACKOFF, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = icmp sgt i64 %86, 30
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i64 30, i64* %6, align 8
  br label %89

89:                                               ; preds = %88, %85
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  br label %113

91:                                               ; preds = %81
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @DIG_TYPE_RX_GAIN_MIN, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 1, i64* %6, align 8
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i64, i64* %6, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  br label %112

101:                                              ; preds = %91
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @DIG_TYPE_RX_GAIN_MAX, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i64, i64* %6, align 8
  %107 = icmp sgt i64 %106, 80
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i64 80, i64* %6, align 8
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %111

111:                                              ; preds = %109, %101
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %79
  br label %115

115:                                              ; preds = %114, %62
  br label %116

116:                                              ; preds = %115, %52
  br label %117

117:                                              ; preds = %116, %40
  br label %118

118:                                              ; preds = %117, %34
  br label %119

119:                                              ; preds = %118, %28
  br label %120

120:                                              ; preds = %119, %22
  br label %121

121:                                              ; preds = %120, %16
  br label %122

122:                                              ; preds = %121, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
