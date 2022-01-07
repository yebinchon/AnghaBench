; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_RSSI_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_RSSI_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@QUALITY_MAP = common dso_local global i32* null, align 8
@STRENGTH_MAP = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_RSSI_calc(%struct.net_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.r8180_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i64 @ieee80211_priv(%struct.net_device* %15)
  %17 = inttoptr i64 %16 to %struct.r8180_priv*
  store %struct.r8180_priv* %17, %struct.r8180_priv** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sle i32 %22, 78
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32*, i32** @QUALITY_MAP, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 50, i32* %8, align 4
  br label %36

35:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %180 [
    i32 128, label %45
    i32 131, label %66
    i32 132, label %117
    i32 129, label %138
    i32 130, label %160
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 126
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 60
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %45
  store i32 100, i32* %9, align 4
  br label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 100, %57
  %59 = sdiv i32 %58, 60
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 255
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 255
  store i32 %65, i32* %14, align 4
  br label %180

66:                                               ; preds = %37
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, -2
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %70, 251
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 6
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %10, align 4
  store i32 4804831, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 4063232
  br i1 %86, label %87, label %92

87:                                               ; preds = %66
  %88 = load i32, i32* %9, align 4
  %89 = icmp ult i32 %88, -1114112
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1114112, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %93

92:                                               ; preds = %66
  store i32 4063232, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 983040
  store i32 %98, i32* %9, align 4
  br label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 983040
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %96
  store i32 5046272, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %106, 100
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %108, 109
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = ashr i32 %110, 16
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = and i32 %112, 255
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 255
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  br label %180

117:                                              ; preds = %37
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 126
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %9, align 4
  %126 = icmp sle i32 %125, 60
  br i1 %126, label %128, label %127

127:                                              ; preds = %124, %117
  store i32 100, i32* %9, align 4
  br label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = mul nsw i32 100, %129
  %131 = sdiv i32 %130, 60
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 255
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, 255
  store i32 %137, i32* %14, align 4
  br label %180

138:                                              ; preds = %37
  %139 = load i32, i32* %13, align 4
  %140 = icmp sle i32 %139, 78
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32*, i32** @STRENGTH_MAP, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32*, i32** %5, align 8
  store i32 %147, i32* %148, align 4
  br label %159

149:                                              ; preds = %138
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 128
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  store i32 1, i32* %14, align 4
  %155 = load i32*, i32** %5, align 8
  store i32 1, i32* %155, align 4
  br label %158

156:                                              ; preds = %149
  store i32 50, i32* %14, align 4
  %157 = load i32*, i32** %5, align 8
  store i32 50, i32* %157, align 4
  br label %158

158:                                              ; preds = %156, %154
  br label %159

159:                                              ; preds = %158, %141
  br label %180

160:                                              ; preds = %37
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, 1
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = and i32 %163, 126
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 66
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 10
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %171, %160
  %175 = load i32, i32* %9, align 4
  %176 = and i32 %175, 255
  %177 = load i32*, i32** %5, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, 255
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %37, %174, %159, %132, %102, %60
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 100
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = load i32*, i32** %5, align 8
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %186, %183
  br label %191

189:                                              ; preds = %180
  %190 = load i32*, i32** %5, align 8
  store i32 100, i32* %190, align 4
  br label %191

191:                                              ; preds = %189, %188
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
