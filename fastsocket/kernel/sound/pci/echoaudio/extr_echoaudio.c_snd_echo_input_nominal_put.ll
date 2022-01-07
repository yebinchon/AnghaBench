; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_input_nominal_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_input_nominal_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.echoaudio = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_echo_input_nominal_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_input_nominal_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = call %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.echoaudio* %9, %struct.echoaudio** %5, align 8
  %10 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %16 = call i32 @num_analog_busses_in(%struct.echoaudio* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %23 = call i32 @bx_analog_in(%struct.echoaudio* %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %28, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %18
  %40 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %41 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %42 = call i32 @bx_analog_in(%struct.echoaudio* %41)
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %46 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @set_nominal_level(%struct.echoaudio* %40, i32 %44, i64 %53)
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %39, %18
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %64 = call i32 @update_output_line_level(%struct.echoaudio* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %67 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.echoaudio* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @num_analog_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @bx_analog_in(%struct.echoaudio*) #1

declare dso_local i32 @set_nominal_level(%struct.echoaudio*, i32, i64) #1

declare dso_local i32 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
