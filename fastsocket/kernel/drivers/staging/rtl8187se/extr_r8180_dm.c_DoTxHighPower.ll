; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_DoTxHighPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_DoTxHighPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32, i64, i64, i8*, i8*, i32, i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CCK_TXAGC = common dso_local global i32 0, align 4
@OFDM_TXAGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoTxHighPower(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8180_priv* %12, %struct.r8180_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 10
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 10
  store i32 %22, i32* %5, align 4
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 10
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %9, align 1
  %40 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %40, i32 0, i32 5
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 10
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %1
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %56
  %62 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %63 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %61, %1
  %68 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %68, i32 0, i32 8
  store i32 1, i32* %69, align 8
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* @CCK_TXAGC, align 4
  %72 = call i64 @read_nic_byte(%struct.net_device* %70, i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i8, i8* %10, align 1
  %74 = sext i8 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %67
  %78 = load i64, i64* %8, align 8
  %79 = icmp sgt i64 %78, 16
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %81, 16
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i64 [ %82, %80 ], [ 0, %83 ]
  store i64 %85, i64* %8, align 8
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = load i32, i32* @CCK_TXAGC, align 4
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i8
  %90 = call i32 @write_nic_byte(%struct.net_device* %86, i32 %87, i8 signext %89)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i32, i32* @OFDM_TXAGC, align 4
  %93 = call i64 @read_nic_byte(%struct.net_device* %91, i32 %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp sgt i64 %94, 16
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i64, i64* %8, align 8
  %98 = sub nsw i64 %97, 16
  br label %100

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i64 [ %98, %96 ], [ 0, %99 ]
  store i64 %101, i64* %8, align 8
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = load i32, i32* @OFDM_TXAGC, align 4
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i8
  %106 = call i32 @write_nic_byte(%struct.net_device* %102, i32 %103, i8 signext %105)
  br label %107

107:                                              ; preds = %100, %67
  br label %161

108:                                              ; preds = %61, %56
  %109 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %110 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %160

114:                                              ; preds = %108
  %115 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %115, i32 0, i32 9
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %121 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %119, %114
  %126 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %127 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %125
  %131 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %132 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %131, i32 0, i32 8
  store i32 0, i32* %132, align 8
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i32, i32* @CCK_TXAGC, align 4
  %135 = call i64 @read_nic_byte(%struct.net_device* %133, i32 %134)
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i8, i8* %10, align 1
  %138 = sext i8 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = load i32, i32* @CCK_TXAGC, align 4
  %143 = load i8, i8* %10, align 1
  %144 = call i32 @write_nic_byte(%struct.net_device* %141, i32 %142, i8 signext %143)
  br label %145

145:                                              ; preds = %140, %130
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = load i32, i32* @OFDM_TXAGC, align 4
  %148 = call i64 @read_nic_byte(%struct.net_device* %146, i32 %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i8, i8* %9, align 1
  %151 = sext i8 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load %struct.net_device*, %struct.net_device** %2, align 8
  %155 = load i32, i32* @OFDM_TXAGC, align 4
  %156 = load i8, i8* %9, align 1
  %157 = call i32 @write_nic_byte(%struct.net_device* %154, i32 %155, i8 signext %156)
  br label %158

158:                                              ; preds = %153, %145
  br label %159

159:                                              ; preds = %158, %125
  br label %160

160:                                              ; preds = %159, %119, %108
  br label %161

161:                                              ; preds = %160, %107
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
