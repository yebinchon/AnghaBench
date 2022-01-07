; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_priv = type { %struct.sh_mobile_lcdc_chan*, i64 }
%struct.sh_mobile_lcdc_chan = type { i64, %struct.TYPE_3__, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_3__ = type { %struct.sh_mobile_lcdc_board_cfg }
%struct.sh_mobile_lcdc_board_cfg = type { i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_priv*)* @sh_mobile_lcdc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_stop(%struct.sh_mobile_lcdc_priv* %0) #0 {
  %2 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_board_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_priv* %0, %struct.sh_mobile_lcdc_priv** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %74, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %8, i32 0, i32 0
  %10 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %6
  %14 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %14, i32 0, i32 0
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %16, i64 %18
  store %struct.sh_mobile_lcdc_chan* %19, %struct.sh_mobile_lcdc_chan** %3, align 8
  %20 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %74

25:                                               ; preds = %13
  %26 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %25
  %33 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = call i32 @schedule_delayed_work(i32* %38, i32 0)
  %40 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %41 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @wait_event(i32 %42, i64 %45)
  %47 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %48 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @fb_deferred_io_cleanup(%struct.TYPE_4__* %49)
  %51 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %52 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %56 = call i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv* %55)
  br label %57

57:                                               ; preds = %32, %25
  %58 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.sh_mobile_lcdc_board_cfg* %60, %struct.sh_mobile_lcdc_board_cfg** %4, align 8
  %61 = load %struct.sh_mobile_lcdc_board_cfg*, %struct.sh_mobile_lcdc_board_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.sh_mobile_lcdc_board_cfg, %struct.sh_mobile_lcdc_board_cfg* %61, i32 0, i32 1
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.sh_mobile_lcdc_board_cfg*, %struct.sh_mobile_lcdc_board_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_board_cfg, %struct.sh_mobile_lcdc_board_cfg* %66, i32 0, i32 1
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.sh_mobile_lcdc_board_cfg*, %struct.sh_mobile_lcdc_board_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.sh_mobile_lcdc_board_cfg, %struct.sh_mobile_lcdc_board_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71)
  br label %73

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %6

77:                                               ; preds = %6
  %78 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %79 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %84 = call i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv* %83, i32 0)
  %85 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %86 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %77
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %109, %87
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %91 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %90, i32 0, i32 0
  %92 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %91, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan* %92)
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %88
  %96 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %97 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %96, i32 0, i32 0
  %98 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %98, i64 %100
  %102 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %2, align 8
  %107 = call i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv* %106)
  br label %108

108:                                              ; preds = %105, %95
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %88

112:                                              ; preds = %88
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wait_event(i32, i64) #1

declare dso_local i32 @fb_deferred_io_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @sh_mobile_lcdc_clk_on(%struct.sh_mobile_lcdc_priv*) #1

declare dso_local i32 @sh_mobile_lcdc_start_stop(%struct.sh_mobile_lcdc_priv*, i32) #1

declare dso_local i32 @sh_mobile_lcdc_clk_off(%struct.sh_mobile_lcdc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
