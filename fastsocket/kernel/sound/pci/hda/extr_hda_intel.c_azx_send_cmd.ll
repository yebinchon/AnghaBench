; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_bus = type { %struct.azx* }
%struct.azx = type { i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_bus*, i32)* @azx_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_send_cmd(%struct.hda_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.azx*, align 8
  store %struct.hda_bus* %0, %struct.hda_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %8 = getelementptr inbounds %struct.hda_bus, %struct.hda_bus* %7, i32 0, i32 0
  %9 = load %struct.azx*, %struct.azx** %8, align 8
  store %struct.azx* %9, %struct.azx** %6, align 8
  %10 = load %struct.azx*, %struct.azx** %6, align 8
  %11 = getelementptr inbounds %struct.azx, %struct.azx* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.azx*, %struct.azx** %6, align 8
  %18 = getelementptr inbounds %struct.azx, %struct.azx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @azx_command_addr(i32 %20)
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load %struct.azx*, %struct.azx** %6, align 8
  %24 = getelementptr inbounds %struct.azx, %struct.azx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %15
  %28 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @azx_single_send_cmd(%struct.hda_bus* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %15
  %32 = load %struct.hda_bus*, %struct.hda_bus** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @azx_corb_send_cmd(%struct.hda_bus* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @azx_command_addr(i32) #1

declare dso_local i32 @azx_single_send_cmd(%struct.hda_bus*, i32) #1

declare dso_local i32 @azx_corb_send_cmd(%struct.hda_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
