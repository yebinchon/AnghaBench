; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddIeWmePara.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApAddIeWmePara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ZM_WLAN_EID_WIFI_IE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfApAddIeWmePara(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @ZM_WLAN_EID_WIFI_IE, align 4
  %16 = call i32 @zmw_tx_buf_writeb(i32* %11, i32* %12, i32 %13, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = call i32 @zmw_tx_buf_writeb(i32* %17, i32* %18, i32 %19, i32 24)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 @zmw_tx_buf_writeb(i32* %22, i32* %23, i32 %24, i32 0)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = call i32 @zmw_tx_buf_writeb(i32* %27, i32* %28, i32 %29, i32 80)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = call i32 @zmw_tx_buf_writeb(i32* %32, i32* %33, i32 %34, i32 242)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = call i32 @zmw_tx_buf_writeb(i32* %37, i32* %38, i32 %39, i32 2)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = call i32 @zmw_tx_buf_writeb(i32* %42, i32* %43, i32 %44, i32 1)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = call i32 @zmw_tx_buf_writeb(i32* %47, i32* %48, i32 %49, i32 1)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = call i32 @zmw_tx_buf_writeb(i32* %58, i32* %59, i32 %60, i32 129)
  br label %69

63:                                               ; preds = %4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = call i32 @zmw_tx_buf_writeb(i32* %64, i32* %65, i32 %66, i32 1)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = call i32 @zmw_tx_buf_writeb(i32* %70, i32* %71, i32 %72, i32 0)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = call i32 @zmw_tx_buf_writeb(i32* %75, i32* %76, i32 %77, i32 3)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = call i32 @zmw_tx_buf_writeb(i32* %80, i32* %81, i32 %82, i32 164)
  %85 = load i32*, i32** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = call i32 @zmw_tx_buf_writeb(i32* %85, i32* %86, i32 %87, i32 0)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = call i32 @zmw_tx_buf_writeb(i32* %90, i32* %91, i32 %92, i32 0)
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = call i32 @zmw_tx_buf_writeb(i32* %95, i32* %96, i32 %97, i32 39)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = call i32 @zmw_tx_buf_writeb(i32* %100, i32* %101, i32 %102, i32 164)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = call i32 @zmw_tx_buf_writeb(i32* %105, i32* %106, i32 %107, i32 0)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = call i32 @zmw_tx_buf_writeb(i32* %110, i32* %111, i32 %112, i32 0)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = call i32 @zmw_tx_buf_writeb(i32* %115, i32* %116, i32 %117, i32 66)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = call i32 @zmw_tx_buf_writeb(i32* %120, i32* %121, i32 %122, i32 67)
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = call i32 @zmw_tx_buf_writeb(i32* %125, i32* %126, i32 %127, i32 94)
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = call i32 @zmw_tx_buf_writeb(i32* %130, i32* %131, i32 %132, i32 0)
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = call i32 @zmw_tx_buf_writeb(i32* %135, i32* %136, i32 %137, i32 98)
  %140 = load i32*, i32** %5, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  %144 = call i32 @zmw_tx_buf_writeb(i32* %140, i32* %141, i32 %142, i32 50)
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  %149 = call i32 @zmw_tx_buf_writeb(i32* %145, i32* %146, i32 %147, i32 47)
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  %154 = call i32 @zmw_tx_buf_writeb(i32* %150, i32* %151, i32 %152, i32 0)
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_tx_buf_writeb(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
