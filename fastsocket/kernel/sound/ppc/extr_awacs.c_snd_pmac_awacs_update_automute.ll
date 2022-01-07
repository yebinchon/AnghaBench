; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_update_automute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_update_automute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32*, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.awacs_amp*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.awacs_amp = type { i32 }

@MASK_HDMUTE = common dso_local global i32 0, align 4
@MASK_SPKMUTE = common dso_local global i32 0, align 4
@imac1 = common dso_local global i64 0, align 8
@MASK_PAROUT1 = common dso_local global i32 0, align 4
@imac2 = common dso_local global i64 0, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@AMP_CH_HD = common dso_local global i32 0, align 4
@AMP_CH_SPK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32)* @snd_pmac_awacs_update_automute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_awacs_update_automute(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %121

10:                                               ; preds = %2
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MASK_HDMUTE, align 4
  %17 = load i32, i32* @MASK_SPKMUTE, align 4
  %18 = or i32 %16, %17
  %19 = or i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @imac1, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load i32, i32* @MASK_SPKMUTE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @MASK_PAROUT1, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %10
  %31 = load i64, i64* @imac2, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @MASK_SPKMUTE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @MASK_PAROUT1, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %33, %30
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %45 = call i64 @snd_pmac_awacs_detect_headphone(%struct.snd_pmac* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @MASK_HDMUTE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %74

52:                                               ; preds = %43
  %53 = load i64, i64* @imac1, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @MASK_PAROUT1, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %73

60:                                               ; preds = %52
  %61 = load i64, i64* @imac2, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @MASK_PAROUT1, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @MASK_SPKMUTE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %121

86:                                               ; preds = %77, %74
  %87 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac* %87, i32 1, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %86
  %93 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %94 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %97 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %98 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @snd_ctl_notify(i32 %95, i32 %96, i32* %100)
  %102 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %103 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %106 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %107 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = call i32 @snd_ctl_notify(i32 %104, i32 %105, i32* %109)
  %111 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %112 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %115 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %116 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = call i32 @snd_ctl_notify(i32 %113, i32 %114, i32* %118)
  br label %120

120:                                              ; preds = %92, %86
  br label %121

121:                                              ; preds = %85, %120, %2
  ret void
}

declare dso_local i64 @snd_pmac_awacs_detect_headphone(%struct.snd_pmac*) #1

declare dso_local i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
