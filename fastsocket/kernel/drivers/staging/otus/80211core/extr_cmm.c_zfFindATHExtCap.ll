; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindATHExtCap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindATHExtCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_WIFI_IE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindATHExtCap(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @zmw_rx_buf_readb(i32* %16, i32* %17, i32 0)
  %19 = ashr i32 %18, 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** @zgElementOffsetTable, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @zm_assert(i32 0)
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 24
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfwBufGetSize(i32* %31, i32* %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %122, %28
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 2
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @zmw_rx_buf_readb(i32* %40, i32* %41, i32 %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* @ZM_WLAN_EID_WIFI_IE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %114

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @zmw_rx_buf_readb(i32* %48, i32* %49, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 65535, i32* %5, align 4
  br label %128

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 65535, i32* %5, align 4
  br label %128

62:                                               ; preds = %58
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @zmw_rx_buf_readb(i32* %63, i32* %64, i32 %66)
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %15, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %62
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 3
  %75 = call i32 @zmw_rx_buf_readb(i32* %71, i32* %72, i32 %74)
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %15, align 8
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %78, label %113

78:                                               ; preds = %70
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 4
  %83 = call i32 @zmw_rx_buf_readb(i32* %79, i32* %80, i32 %82)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %15, align 8
  %85 = icmp eq i64 %84, 127
  br i1 %85, label %86, label %113

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 5
  %91 = call i32 @zmw_rx_buf_readb(i32* %87, i32* %88, i32 %90)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %86
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 255
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 6
  %103 = call i32 @zmw_rx_buf_readb(i32* %99, i32* %100, i32 %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %128

109:                                              ; preds = %98
  br label %112

110:                                              ; preds = %95
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %5, align 4
  br label %128

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %112, %86, %78, %70, %62
  br label %114

114:                                              ; preds = %113, %39
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i32 @zmw_rx_buf_readb(i32* %115, i32* %116, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 65535, i32* %5, align 4
  br label %128

122:                                              ; preds = %114
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 2
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %11, align 4
  br label %34

127:                                              ; preds = %34
  store i32 65535, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %121, %110, %107, %61, %57
  %129 = load i32, i32* %5, align 4
  ret i32 %129
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
