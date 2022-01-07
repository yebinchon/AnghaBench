; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_is_tx_queue_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_is_tx_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32*, i32, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @rtl8180_is_tx_queue_empty(%struct.net_device* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8180_priv*, align 8
  %5 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8180_priv* %7, %struct.r8180_priv** %4, align 8
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = icmp ult i32* %12, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %11
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -2147483648
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i16 0, i16* %2, align 2
  br label %158

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  store i32* %31, i32** %5, align 8
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %54, %32
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %42 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = icmp ult i32* %37, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -2147483648
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i16 0, i16* %2, align 2
  br label %158

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32* %56, i32** %5, align 8
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %59 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %79, %57
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %64 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = icmp ult i32* %62, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -2147483648
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i16 0, i16* %2, align 2
  br label %158

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  store i32* %81, i32** %5, align 8
  br label %61

82:                                               ; preds = %61
  %83 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %84 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %5, align 8
  br label %86

86:                                               ; preds = %104, %82
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %89 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %92 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = icmp ult i32* %87, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %86
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -2147483648
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i16 0, i16* %2, align 2
  br label %158

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %106, i32** %5, align 8
  br label %86

107:                                              ; preds = %86
  %108 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %109 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %129, %107
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %114 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %117 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = icmp ult i32* %112, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %111
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, -2147483648
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i16 0, i16* %2, align 2
  br label %158

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 8
  store i32* %131, i32** %5, align 8
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %134 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %5, align 8
  br label %136

136:                                              ; preds = %154, %132
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %139 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %142 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = icmp ult i32* %137, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %136
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, -2147483648
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i16 0, i16* %2, align 2
  br label %158

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 8
  store i32* %156, i32** %5, align 8
  br label %136

157:                                              ; preds = %136
  store i16 1, i16* %2, align 2
  br label %158

158:                                              ; preds = %157, %152, %127, %102, %77, %52, %27
  %159 = load i16, i16* %2, align 2
  ret i16 %159
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
