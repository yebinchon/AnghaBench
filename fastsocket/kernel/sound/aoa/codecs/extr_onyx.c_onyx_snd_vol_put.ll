; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_vol_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.onyx = type { i32 }

@VOLUME_RANGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ONYX_REG_DAC_ATTEN_LEFT = common dso_local global i32 0, align 4
@ONYX_REG_DAC_ATTEN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @onyx_snd_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_snd_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.onyx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.onyx* %10, %struct.onyx** %6, align 8
  %11 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %19 = add nsw i64 -128, %18
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %30 = add nsw i64 -1, %29
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %125

35:                                               ; preds = %21
  %36 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %44 = add nsw i64 -128, %43
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %55 = add nsw i64 -1, %54
  %56 = icmp sgt i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46, %35
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %125

60:                                               ; preds = %46
  %61 = load %struct.onyx*, %struct.onyx** %6, align 8
  %62 = getelementptr inbounds %struct.onyx, %struct.onyx* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.onyx*, %struct.onyx** %6, align 8
  %65 = load i32, i32* @ONYX_REG_DAC_ATTEN_LEFT, align 4
  %66 = call i32 @onyx_read_register(%struct.onyx* %64, i32 %65, i64* %7)
  %67 = load %struct.onyx*, %struct.onyx** %6, align 8
  %68 = load i32, i32* @ONYX_REG_DAC_ATTEN_RIGHT, align 4
  %69 = call i32 @onyx_read_register(%struct.onyx* %67, i32 %68, i64* %8)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %74 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %72, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %60
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %86 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %84, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load %struct.onyx*, %struct.onyx** %6, align 8
  %95 = getelementptr inbounds %struct.onyx, %struct.onyx* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %3, align 4
  br label %125

97:                                               ; preds = %81, %60
  %98 = load %struct.onyx*, %struct.onyx** %6, align 8
  %99 = load i32, i32* @ONYX_REG_DAC_ATTEN_LEFT, align 4
  %100 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @onyx_write_register(%struct.onyx* %98, i32 %99, i64 %108)
  %110 = load %struct.onyx*, %struct.onyx** %6, align 8
  %111 = load i32, i32* @ONYX_REG_DAC_ATTEN_RIGHT, align 4
  %112 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %113 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VOLUME_RANGE_SHIFT, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i32 @onyx_write_register(%struct.onyx* %110, i32 %111, i64 %120)
  %122 = load %struct.onyx*, %struct.onyx** %6, align 8
  %123 = getelementptr inbounds %struct.onyx, %struct.onyx* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %97, %93, %57, %32
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @onyx_write_register(%struct.onyx*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
