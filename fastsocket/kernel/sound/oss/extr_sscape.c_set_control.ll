; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sscape.c_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sscape.c_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sscape_info = type { i32 }

@CMD_SET_CONTROL = common dso_local global i32 0, align 4
@CMD_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sscape_info*, i32, i32)* @set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_control(%struct.sscape_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sscape_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sscape_info* %0, %struct.sscape_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sscape_info*, %struct.sscape_info** %4, align 8
  %8 = call i32 @host_open(%struct.sscape_info* %7)
  %9 = load %struct.sscape_info*, %struct.sscape_info** %4, align 8
  %10 = load i32, i32* @CMD_SET_CONTROL, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @host_command3(%struct.sscape_info* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.sscape_info*, %struct.sscape_info** %4, align 8
  %15 = call i64 @host_read(%struct.sscape_info* %14)
  %16 = load i64, i64* @CMD_ACK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.sscape_info*, %struct.sscape_info** %4, align 8
  %21 = call i32 @host_close(%struct.sscape_info* %20)
  ret void
}

declare dso_local i32 @host_open(%struct.sscape_info*) #1

declare dso_local i32 @host_command3(%struct.sscape_info*, i32, i32, i32) #1

declare dso_local i64 @host_read(%struct.sscape_info*) #1

declare dso_local i32 @host_close(%struct.sscape_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
