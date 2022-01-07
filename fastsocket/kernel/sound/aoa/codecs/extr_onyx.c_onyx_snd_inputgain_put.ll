; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_inputgain_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_snd_inputgain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.onyx = type { i32 }

@INPUTGAIN_RANGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ONYX_REG_ADC_CONTROL = common dso_local global i32 0, align 4
@ONYX_ADC_PGA_GAIN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @onyx_snd_inputgain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_snd_inputgain_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %18 = load i64, i64* @INPUTGAIN_RANGE_SHIFT, align 8
  %19 = add nsw i64 3, %18
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
  %29 = load i64, i64* @INPUTGAIN_RANGE_SHIFT, align 8
  %30 = add nsw i64 28, %29
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %21
  %36 = load %struct.onyx*, %struct.onyx** %6, align 8
  %37 = getelementptr inbounds %struct.onyx, %struct.onyx* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.onyx*, %struct.onyx** %6, align 8
  %40 = load i32, i32* @ONYX_REG_ADC_CONTROL, align 4
  %41 = call i32 @onyx_read_register(%struct.onyx* %39, i32 %40, i64* %7)
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @ONYX_ADC_PGA_GAIN_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %8, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INPUTGAIN_RANGE_SHIFT, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* @ONYX_ADC_PGA_GAIN_MASK, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load %struct.onyx*, %struct.onyx** %6, align 8
  %61 = load i32, i32* @ONYX_REG_ADC_CONTROL, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @onyx_write_register(%struct.onyx* %60, i32 %61, i64 %62)
  %64 = load %struct.onyx*, %struct.onyx** %6, align 8
  %65 = getelementptr inbounds %struct.onyx, %struct.onyx* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %35, %32
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.onyx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i64*) #1

declare dso_local i32 @onyx_write_register(%struct.onyx*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
