; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_check_asic_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_check_asic_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@E3G_ASIC_NOT_LOADED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DSP_VC_TEST_ASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"box_status=%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E3G_BOX_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @check_asic_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_asic_status(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %6 = call i64 @wait_handshake(%struct.echoaudio* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load i32, i32* @E3G_ASIC_NOT_LOADED, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %22 = call i32 @clear_handshake(%struct.echoaudio* %21)
  %23 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %24 = load i32, i32* @DSP_VC_TEST_ASIC, align 4
  %25 = call i32 @send_vector(%struct.echoaudio* %23, i32 %24)
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = call i64 @wait_handshake(%struct.echoaudio* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %11
  %30 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %31 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %11
  %35 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %36 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @DE_INIT(i8* %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @E3G_ASIC_NOT_LOADED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %58

51:                                               ; preds = %34
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %54 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @E3G_BOX_TYPE_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %48, %29, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DE_INIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
