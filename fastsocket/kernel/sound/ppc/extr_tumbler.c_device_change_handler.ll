; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_device_change_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_tumbler.c_device_change_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.pmac_tumbler* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pmac_tumbler = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_6__, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.work_struct = type { i32 }

@device_change_chip = common dso_local global %struct.snd_pmac* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"headphone: %d, lineout: %d\0A\00", align 1
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@PMAC_TUMBLER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @device_change_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_change_handler(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca %struct.pmac_tumbler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.snd_pmac*, %struct.snd_pmac** @device_change_chip, align 8
  store %struct.snd_pmac* %7, %struct.snd_pmac** %3, align 8
  %8 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %9 = icmp ne %struct.snd_pmac* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %150

11:                                               ; preds = %1
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %12, i32 0, i32 7
  %14 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %13, align 8
  store %struct.pmac_tumbler* %14, %struct.pmac_tumbler** %4, align 8
  %15 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %16 = icmp ne %struct.pmac_tumbler* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %150

22:                                               ; preds = %11
  %23 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %24 = call i32 @tumbler_detect_headphone(%struct.snd_pmac* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %26 = call i32 @tumbler_detect_lineout(%struct.snd_pmac* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %40 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %41 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %40, i32 0, i32 3
  %42 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %43 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %46 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @check_mute(%struct.snd_pmac* %39, %struct.TYPE_6__* %41, i32 0, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %54 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %60 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %61 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %60, i32 0, i32 2
  %62 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %63 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %66 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @check_mute(%struct.snd_pmac* %59, %struct.TYPE_6__* %61, i32 0, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %58, %52, %49
  %70 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %71 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @msleep(i32 10)
  br label %76

76:                                               ; preds = %74, %69
  %77 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %78 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %79 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %78, i32 0, i32 5
  %80 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %81 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %84 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @check_mute(%struct.snd_pmac* %77, %struct.TYPE_6__* %79, i32 1, i64 %82, i32 %85)
  br label %132

87:                                               ; preds = %32
  %88 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %89 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %90 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %89, i32 0, i32 5
  %91 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %92 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %95 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @check_mute(%struct.snd_pmac* %88, %struct.TYPE_6__* %90, i32 0, i64 %93, i32 %96)
  %98 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %99 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = call i32 @msleep(i32 10)
  br label %104

104:                                              ; preds = %102, %87
  %105 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %106 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %107 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %106, i32 0, i32 3
  %108 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %109 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %112 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @check_mute(%struct.snd_pmac* %105, %struct.TYPE_6__* %107, i32 1, i64 %110, i32 %113)
  %115 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %116 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %104
  %121 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %122 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %123 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %122, i32 0, i32 2
  %124 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %125 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %128 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @check_mute(%struct.snd_pmac* %121, %struct.TYPE_6__* %123, i32 1, i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %120, %104
  br label %132

132:                                              ; preds = %131, %76
  %133 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %134 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %139 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %142 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %143 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %142, i32 0, i32 3
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i32 @snd_ctl_notify(i32 %140, i32 %141, i32* %145)
  br label %147

147:                                              ; preds = %137, %132
  %148 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %4, align 8
  %149 = call i32 @tumbler_set_master_volume(%struct.pmac_tumbler* %148)
  br label %150

150:                                              ; preds = %147, %21, %10
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @tumbler_detect_headphone(%struct.snd_pmac*) #1

declare dso_local i32 @tumbler_detect_lineout(%struct.snd_pmac*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @check_mute(%struct.snd_pmac*, %struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

declare dso_local i32 @tumbler_set_master_volume(%struct.pmac_tumbler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
