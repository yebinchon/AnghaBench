; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_gml.c_write_control_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_gml.c_write_control_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@GML_DIGITAL_IN_AUTO_MUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write_control_reg: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSP_VC_WRITE_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i8)* @write_control_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_control_reg(%struct.echoaudio* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %9 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @GML_DIGITAL_IN_AUTO_MUTE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @GML_DIGITAL_IN_AUTO_MUTE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DE_ACT(i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35, %21
  %40 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %41 = call i64 @wait_handshake(%struct.echoaudio* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %58

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %49 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %53 = call i32 @clear_handshake(%struct.echoaudio* %52)
  %54 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %55 = load i32, i32* @DSP_VC_WRITE_CONTROL_REG, align 4
  %56 = call i32 @send_vector(%struct.echoaudio* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %46, %43
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
