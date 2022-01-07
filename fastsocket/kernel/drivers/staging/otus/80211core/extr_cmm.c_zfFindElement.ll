; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.zfFindElement.oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 1], align 16
@__const.zfFindElement.oui11n = private unnamed_addr constant [3 x i32] [i32 0, i32 144, i32 76], align 4
@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_EID_WPA_IE = common dso_local global i32 0, align 4
@ZM_WLAN_EID_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindElement(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %17 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.zfFindElement.oui to i8*), i64 16, i1 false)
  %18 = bitcast [3 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([3 x i32]* @__const.zfFindElement.oui11n to i8*), i64 12, i1 false)
  store i32 0, i32* %16, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @zmw_rx_buf_readb(i32* %19, i32* %20, i32 0)
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** @zgElementOffsetTable, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 @zm_assert(i32 0)
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 24
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  store i32 %43, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @zfwBufGetSize(i32* %45, i32* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %123, %44
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %133

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @zmw_rx_buf_readb(i32* %54, i32* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @zmw_rx_buf_readb(i32* %61, i32* %62, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 65535, i32* %4, align 4
  br label %134

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ZM_WLAN_EID_SSID, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 65535, i32* %4, align 4
  br label %134

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 2
  %92 = call i64 @zfRxBufferEqualToStr(i32* %87, i32* %88, i32* %89, i32 %91, i32 4)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %134

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 2
  %105 = call i64 @zfRxBufferEqualToStr(i32* %100, i32* %101, i32* %102, i32 %104, i32 3)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 5
  %112 = call i32 @zmw_rx_buf_readb(i32* %108, i32* %109, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 5
  store i32 %117, i32* %4, align 4
  br label %134

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %99, %96
  br label %122

120:                                              ; preds = %79
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %134

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %53
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @zmw_rx_buf_readb(i32* %124, i32* %125, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 2
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %48

133:                                              ; preds = %48
  store i32 65535, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %120, %115, %94, %78, %70
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #2

declare dso_local i32 @zm_assert(i32) #2

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #2

declare dso_local i64 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
