; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_config_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_config_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_network }
%struct.ieee80211_network = type { i64, i32*, i64, i32* }

@RRSR_1M = common dso_local global i32 0, align 4
@RRSR_2M = common dso_local global i32 0, align 4
@RRSR_5_5M = common dso_local global i32 0, align 4
@RRSR_11M = common dso_local global i32 0, align 4
@RRSR_6M = common dso_local global i32 0, align 4
@RRSR_9M = common dso_local global i32 0, align 4
@RRSR_12M = common dso_local global i32 0, align 4
@RRSR_18M = common dso_local global i32 0, align 4
@RRSR_24M = common dso_local global i32 0, align 4
@RRSR_36M = common dso_local global i32 0, align 4
@RRSR_48M = common dso_local global i32 0, align 4
@RRSR_54M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @rtl8192_config_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_config_rate(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.ieee80211_network*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ieee80211_network* %14, %struct.ieee80211_network** %6, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %92, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 127
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  switch i64 %30, label %91 [
    i64 136, label %31
    i64 134, label %36
    i64 130, label %41
    i64 139, label %46
    i64 129, label %51
    i64 128, label %56
    i64 138, label %61
    i64 137, label %66
    i64 135, label %71
    i64 133, label %76
    i64 132, label %81
    i64 131, label %86
  ]

31:                                               ; preds = %21
  %32 = load i32, i32* @RRSR_1M, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %91

36:                                               ; preds = %21
  %37 = load i32, i32* @RRSR_2M, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %91

41:                                               ; preds = %21
  %42 = load i32, i32* @RRSR_5_5M, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %91

46:                                               ; preds = %21
  %47 = load i32, i32* @RRSR_11M, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %91

51:                                               ; preds = %21
  %52 = load i32, i32* @RRSR_6M, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %91

56:                                               ; preds = %21
  %57 = load i32, i32* @RRSR_9M, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %91

61:                                               ; preds = %21
  %62 = load i32, i32* @RRSR_12M, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %91

66:                                               ; preds = %21
  %67 = load i32, i32* @RRSR_18M, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %91

71:                                               ; preds = %21
  %72 = load i32, i32* @RRSR_24M, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %91

76:                                               ; preds = %21
  %77 = load i32, i32* @RRSR_36M, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %91

81:                                               ; preds = %21
  %82 = load i32, i32* @RRSR_48M, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %91

86:                                               ; preds = %21
  %87 = load i32, i32* @RRSR_54M, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %21, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %15

95:                                               ; preds = %15
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %173, %95
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %176

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_network*, %struct.ieee80211_network** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 127
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  switch i64 %111, label %172 [
    i64 136, label %112
    i64 134, label %117
    i64 130, label %122
    i64 139, label %127
    i64 129, label %132
    i64 128, label %137
    i64 138, label %142
    i64 137, label %147
    i64 135, label %152
    i64 133, label %157
    i64 132, label %162
    i64 131, label %167
  ]

112:                                              ; preds = %102
  %113 = load i32, i32* @RRSR_1M, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %172

117:                                              ; preds = %102
  %118 = load i32, i32* @RRSR_2M, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %172

122:                                              ; preds = %102
  %123 = load i32, i32* @RRSR_5_5M, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %172

127:                                              ; preds = %102
  %128 = load i32, i32* @RRSR_11M, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %172

132:                                              ; preds = %102
  %133 = load i32, i32* @RRSR_6M, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %172

137:                                              ; preds = %102
  %138 = load i32, i32* @RRSR_9M, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  br label %172

142:                                              ; preds = %102
  %143 = load i32, i32* @RRSR_12M, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 4
  br label %172

147:                                              ; preds = %102
  %148 = load i32, i32* @RRSR_18M, align 4
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %172

152:                                              ; preds = %102
  %153 = load i32, i32* @RRSR_24M, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %172

157:                                              ; preds = %102
  %158 = load i32, i32* @RRSR_36M, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %172

162:                                              ; preds = %102
  %163 = load i32, i32* @RRSR_48M, align 4
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 4
  br label %172

167:                                              ; preds = %102
  %168 = load i32, i32* @RRSR_54M, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %102, %167, %162, %157, %152, %147, %142, %137, %132, %127, %122, %117, %112
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %7, align 8
  br label %96

176:                                              ; preds = %96
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
