; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_firmware.c_fw_download_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_firmware.c_fw_download_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, %struct.net_device*)* }
%struct.sk_buff = type { i8*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i8*, i32, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@DESC_PACKET_TYPE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8**, i64)* @fw_download_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_download_code(%struct.net_device* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %18)
  store %struct.r8192_priv* %19, %struct.r8192_priv** %7, align 8
  store i32 1, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @firmware_init_param(%struct.net_device* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %170, %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %9, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %10, align 8
  store i8* null, i8** %17, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %10, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %17, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, 4
  %43 = call %struct.sk_buff* @dev_alloc_skb(i64 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %14, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @memcpy(i8* %47, %struct.net_device** %4, i32 8)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %16, align 8
  %55 = load i32, i32* @TXCMD_QUEUE, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @DESC_PACKET_TYPE_INIT, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %15, align 8
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %145, %40
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %10, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %148

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 0
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  br label %86

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85, %78
  %87 = phi i8* [ %84, %78 ], [ null, %85 ]
  %88 = ptrtoint i8* %87 to i8
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %15, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %10, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %96
  %105 = phi i8* [ %102, %96 ], [ null, %103 ]
  %106 = ptrtoint i8* %105 to i8
  %107 = load i8*, i8** %15, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %15, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %10, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  br label %122

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %114
  %123 = phi i8* [ %120, %114 ], [ null, %121 ]
  %124 = ptrtoint i8* %123 to i8
  %125 = load i8*, i8** %15, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %15, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %10, align 8
  %131 = icmp slt i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 0
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  br label %140

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %132
  %141 = phi i8* [ %138, %132 ], [ null, %139 ]
  %142 = ptrtoint i8* %141 to i8
  %143 = load i8*, i8** %15, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %15, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %12, align 4
  br label %67

148:                                              ; preds = %67
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 @skb_put(%struct.sk_buff* %153, i32 %154)
  %156 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %157 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %159, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 %160(%struct.sk_buff* %161, %struct.net_device* %162)
  %164 = load i64, i64* %10, align 8
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 %164
  store i8** %166, i8*** %5, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %11, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %11, align 8
  br label %170

170:                                              ; preds = %148
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %6, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %28, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @firmware_init_param(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
