; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_bus_overflow_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_send_bus_overflow_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vfe_message = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@VFE_MSG_ID_BUS_OVERFLOW = common dso_local global i32 0, align 4
@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vfe_send_bus_overflow_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_send_bus_overflow_msg() #0 {
  %1 = alloca %struct.vfe_message*, align 8
  %2 = load i32, i32* @GFP_ATOMIC, align 4
  %3 = call %struct.vfe_message* @kzalloc(i32 8, i32 %2)
  store %struct.vfe_message* %3, %struct.vfe_message** %1, align 8
  %4 = load %struct.vfe_message*, %struct.vfe_message** %1, align 8
  %5 = icmp ne %struct.vfe_message* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %14

7:                                                ; preds = %0
  %8 = load i32, i32* @VFE_MSG_ID_BUS_OVERFLOW, align 4
  %9 = load %struct.vfe_message*, %struct.vfe_message** %1, align 8
  %10 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @VFE_MSG_ID_BUS_OVERFLOW, align 4
  %12 = load %struct.vfe_message*, %struct.vfe_message** %1, align 8
  %13 = call i32 @vfe_proc_ops(i32 %11, %struct.vfe_message* %12, i32 8)
  br label %14

14:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.vfe_message* @kzalloc(i32, i32) #1

declare dso_local i32 @vfe_proc_ops(i32, %struct.vfe_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
