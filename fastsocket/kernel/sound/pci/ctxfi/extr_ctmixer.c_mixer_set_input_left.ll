; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { i32* }
%struct.rsc = type { i32 }

@CHN_NUM = common dso_local global i32 0, align 4
@NUM_CT_AMIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*, i32, %struct.rsc*)* @mixer_set_input_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_set_input_left(%struct.ct_mixer* %0, i32 %1, %struct.rsc* %2) #0 {
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rsc* %2, %struct.rsc** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @port_to_amixer(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %11 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CHN_NUM, align 4
  %15 = mul i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rsc*, %struct.rsc** %6, align 8
  %20 = call i32 @mixer_set_input_port(i32 %18, %struct.rsc* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @get_recording_amixer(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %28 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CHN_NUM, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rsc*, %struct.rsc** %6, align 8
  %37 = call i32 @mixer_set_input_port(i32 %35, %struct.rsc* %36)
  br label %38

38:                                               ; preds = %26, %3
  ret i32 0
}

declare dso_local i32 @port_to_amixer(i32) #1

declare dso_local i32 @mixer_set_input_port(i32, %struct.rsc*) #1

declare dso_local i32 @get_recording_amixer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
