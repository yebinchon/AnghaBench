; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_core.c_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (i32, i32)*, i32 (%struct.rfkill*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PM_EVENT_SLEEP = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW_PREV = common dso_local global i32 0, align 4
@RFKILL_BLOCK_SW_SETCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfkill*, i32)* @rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_set_block(%struct.rfkill* %0, i32 %1) #0 {
  %3 = alloca %struct.rfkill*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rfkill* %0, %struct.rfkill** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %8 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PM_EVENT_SLEEP, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %144

18:                                               ; preds = %2
  %19 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %20 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32 (%struct.rfkill*, i32)*, i32 (%struct.rfkill*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.rfkill*, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %27 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32 (%struct.rfkill*, i32)*, i32 (%struct.rfkill*, i32)** %29, align 8
  %31 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %32 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %33 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %30(%struct.rfkill* %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %18
  %37 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %38 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %42 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %49 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %50 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %60

53:                                               ; preds = %36
  %54 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %57 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %65 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %66 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %76

69:                                               ; preds = %60
  %70 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %73 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %63
  %77 = load i32, i32* @RFKILL_BLOCK_SW_SETCALL, align 4
  %78 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %79 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %83 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %82, i32 0, i32 1
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %87 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %92 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 %90(i32 %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %97 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %96, i32 0, i32 1
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %76
  %103 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %104 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %111 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %112 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %122

115:                                              ; preds = %102
  %116 = load i32, i32* @RFKILL_BLOCK_SW, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %119 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %76
  %124 = load i32, i32* @RFKILL_BLOCK_SW_SETCALL, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %127 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i32, i32* @RFKILL_BLOCK_SW_PREV, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %133 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %137 = getelementptr inbounds %struct.rfkill, %struct.rfkill* %136, i32 0, i32 1
  %138 = load i64, i64* %5, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %141 = call i32 @rfkill_led_trigger_event(%struct.rfkill* %140)
  %142 = load %struct.rfkill*, %struct.rfkill** %3, align 8
  %143 = call i32 @rfkill_event(%struct.rfkill* %142)
  br label %144

144:                                              ; preds = %123, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rfkill_led_trigger_event(%struct.rfkill*) #1

declare dso_local i32 @rfkill_event(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
