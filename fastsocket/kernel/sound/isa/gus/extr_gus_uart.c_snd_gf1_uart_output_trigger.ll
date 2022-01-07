; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_output_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_uart.c_snd_gf1_uart_output_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_gus_card* }
%struct.snd_gus_card = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_gf1_uart_output_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_uart_output_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.snd_gus_card*, %struct.snd_gus_card** %12, align 8
  store %struct.snd_gus_card* %13, %struct.snd_gus_card** %6, align 8
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %87

20:                                               ; preds = %2
  %21 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %22 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %20
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %29 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  store i32 10000, i32* %8, align 4
  br label %32

32:                                               ; preds = %43, %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %38 = call i32 @snd_gf1_uart_stat(%struct.snd_gus_card* %37)
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  br label %32

44:                                               ; preds = %41
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %50 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %57 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %108

60:                                               ; preds = %44
  %61 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %62 = call i32 @snd_gf1_uart_stat(%struct.snd_gus_card* %61)
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %67 = call i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream* %66, i8* %7, i32 1)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %71 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %70, i32 0, i32 0
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %108

74:                                               ; preds = %65
  %75 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %76 = load i8, i8* %7, align 1
  %77 = call i32 @snd_gf1_uart_put(%struct.snd_gus_card* %75, i8 signext %76)
  br label %78

78:                                               ; preds = %74, %60
  %79 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %80 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %81 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, 32
  %85 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %79, i32 %84)
  br label %86

86:                                               ; preds = %78, %20
  br label %103

87:                                               ; preds = %2
  %88 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %89 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %96 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %97 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -33
  %101 = call i32 @snd_gf1_uart_cmd(%struct.snd_gus_card* %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %105 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %104, i32 0, i32 0
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %69, %55
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_gf1_uart_stat(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_rawmidi_transmit(%struct.snd_rawmidi_substream*, i8*, i32) #1

declare dso_local i32 @snd_gf1_uart_put(%struct.snd_gus_card*, i8 signext) #1

declare dso_local i32 @snd_gf1_uart_cmd(%struct.snd_gus_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
