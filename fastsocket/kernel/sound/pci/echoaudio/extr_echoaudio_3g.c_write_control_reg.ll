; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_write_control_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_write_control_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WriteControlReg: Setting 0x%x, 0x%x\0A\00", align 1
@DSP_VC_WRITE_CONTROL_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"WriteControlReg: not written, no change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i64, i64, i8)* @write_control_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_control_reg(%struct.echoaudio* %0, i64 %1, i64 %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.echoaudio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.echoaudio* %0, %struct.echoaudio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %10 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %11 = call i64 @wait_handshake(%struct.echoaudio* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %62

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DE_ACT(i8* %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @cpu_to_le32(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @cpu_to_le32(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %16
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i8, i8* %9, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40, %32, %16
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %47 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %52 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %56 = call i32 @clear_handshake(%struct.echoaudio* %55)
  %57 = load %struct.echoaudio*, %struct.echoaudio** %6, align 8
  %58 = load i32, i32* @DSP_VC_WRITE_CONTROL_REG, align 4
  %59 = call i32 @send_vector(%struct.echoaudio* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %40
  %61 = call i32 @DE_ACT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %44, %13
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
