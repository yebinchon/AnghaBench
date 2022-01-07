; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindBrdcmMrvlRlnkExtCap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindBrdcmMrvlRlnkExtCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_WIFI_IE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindBrdcmMrvlRlnkExtCap(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_rx_buf_readb(i32* %12, i32* %13, i32 0)
  %15 = ashr i32 %14, 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** @zgElementOffsetTable, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @zm_assert(i32 0)
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 24
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @zfwBufGetSize(i32* %27, i32* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %154, %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 2
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %159

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @zmw_rx_buf_readb(i32* %36, i32* %37, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* @ZM_WLAN_EID_WIFI_IE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %112

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @zmw_rx_buf_readb(i32* %44, i32* %45, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 65535, i32* %3, align 4
  br label %160

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 65535, i32* %3, align 4
  br label %160

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @zmw_rx_buf_readb(i32* %59, i32* %60, i32 %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 3
  %71 = call i32 @zmw_rx_buf_readb(i32* %67, i32* %68, i32 %70)
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %11, align 8
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 4
  %79 = call i32 @zmw_rx_buf_readb(i32* %75, i32* %76, i32 %78)
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %11, align 8
  %81 = icmp eq i64 %80, 24
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %160

84:                                               ; preds = %74, %66, %58
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @zmw_rx_buf_readb(i32* %85, i32* %86, i32 %88)
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %11, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %84
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 3
  %97 = call i32 @zmw_rx_buf_readb(i32* %93, i32* %94, i32 %96)
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %11, align 8
  %99 = icmp eq i64 %98, 80
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 4
  %105 = call i32 @zmw_rx_buf_readb(i32* %101, i32* %102, i32 %104)
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %11, align 8
  %107 = icmp eq i64 %106, 67
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %160

110:                                              ; preds = %100, %92, %84
  br label %111

111:                                              ; preds = %110
  br label %146

112:                                              ; preds = %35
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @zmw_rx_buf_readb(i32* %113, i32* %114, i32 %115)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %10, align 8
  %118 = icmp eq i64 %117, 127
  br i1 %118, label %119, label %145

119:                                              ; preds = %112
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @zmw_rx_buf_readb(i32* %120, i32* %121, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %125, %126
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  store i32 65535, i32* %3, align 4
  br label %160

130:                                              ; preds = %119
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 65535, i32* %3, align 4
  br label %160

134:                                              ; preds = %130
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 2
  %139 = call i32 @zmw_rx_buf_readb(i32* %135, i32* %136, i32 %138)
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %11, align 8
  %141 = icmp eq i64 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %160

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %111
  %147 = load i32*, i32** %4, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @zmw_rx_buf_readb(i32* %147, i32* %148, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i32 65535, i32* %3, align 4
  br label %160

154:                                              ; preds = %146
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 2
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %30

159:                                              ; preds = %30
  store i32 65535, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %153, %142, %133, %129, %108, %82, %57, %53
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
