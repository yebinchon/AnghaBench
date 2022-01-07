; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_put_tg_pt_gp_from_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_put_tg_pt_gp_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_alua_tg_pt_gp = type { i32, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t10_alua_tg_pt_gp*)* @core_alua_put_tg_pt_gp_from_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_alua_put_tg_pt_gp_from_name(%struct.t10_alua_tg_pt_gp* %0) #0 {
  %2 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %3 = alloca %struct.se_device*, align 8
  store %struct.t10_alua_tg_pt_gp* %0, %struct.t10_alua_tg_pt_gp** %2, align 8
  %4 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %2, align 8
  %5 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %4, i32 0, i32 1
  %6 = load %struct.se_device*, %struct.se_device** %5, align 8
  store %struct.se_device* %6, %struct.se_device** %3, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %2, align 8
  %12 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec(i32* %12)
  %14 = load %struct.se_device*, %struct.se_device** %3, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
