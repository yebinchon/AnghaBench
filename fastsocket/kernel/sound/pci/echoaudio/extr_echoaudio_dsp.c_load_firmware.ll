; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_dsp.c_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32*, i32 }
%struct.firmware = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_firmware(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %7 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %8 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %13 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %32 = call i32 @check_asic_status(%struct.echoaudio* %31)
  store i32 %32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %30
  %37 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %38 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %44 = call i32 @get_firmware(%struct.firmware** %4, i32 %42, %struct.echoaudio* %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %39
  %49 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %50 = load %struct.firmware*, %struct.firmware** %4, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @load_dsp(%struct.echoaudio* %49, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.firmware*, %struct.firmware** %4, align 8
  %56 = call i32 @free_firmware(%struct.firmware* %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %75

61:                                               ; preds = %48
  %62 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %63 = call i32 @load_asic(%struct.echoaudio* %62)
  store i32 %63, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %75

67:                                               ; preds = %61
  %68 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %69 = call i32 @restore_dsp_rettings(%struct.echoaudio* %68)
  store i32 %69, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %71, %65, %59, %46, %34, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @check_asic_status(%struct.echoaudio*) #1

declare dso_local i32 @get_firmware(%struct.firmware**, i32, %struct.echoaudio*) #1

declare dso_local i32 @load_dsp(%struct.echoaudio*, i32*) #1

declare dso_local i32 @free_firmware(%struct.firmware*) #1

declare dso_local i32 @load_asic(%struct.echoaudio*) #1

declare dso_local i32 @restore_dsp_rettings(%struct.echoaudio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
