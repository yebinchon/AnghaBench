; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_setup_cits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_fabric_configfs.c_target_fabric_setup_cits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_fabric_setup_cits(%struct.target_fabric_configfs* %0) #0 {
  %2 = alloca %struct.target_fabric_configfs*, align 8
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %2, align 8
  %3 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %4 = call i32 @target_fabric_setup_discovery_cit(%struct.target_fabric_configfs* %3)
  %5 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %6 = call i32 @target_fabric_setup_wwn_cit(%struct.target_fabric_configfs* %5)
  %7 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %8 = call i32 @target_fabric_setup_wwn_fabric_stats_cit(%struct.target_fabric_configfs* %7)
  %9 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %10 = call i32 @target_fabric_setup_tpg_cit(%struct.target_fabric_configfs* %9)
  %11 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %12 = call i32 @target_fabric_setup_tpg_base_cit(%struct.target_fabric_configfs* %11)
  %13 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %14 = call i32 @target_fabric_setup_tpg_port_cit(%struct.target_fabric_configfs* %13)
  %15 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %16 = call i32 @target_fabric_setup_tpg_port_stat_cit(%struct.target_fabric_configfs* %15)
  %17 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %18 = call i32 @target_fabric_setup_tpg_lun_cit(%struct.target_fabric_configfs* %17)
  %19 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %20 = call i32 @target_fabric_setup_tpg_np_cit(%struct.target_fabric_configfs* %19)
  %21 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %22 = call i32 @target_fabric_setup_tpg_np_base_cit(%struct.target_fabric_configfs* %21)
  %23 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %24 = call i32 @target_fabric_setup_tpg_attrib_cit(%struct.target_fabric_configfs* %23)
  %25 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %26 = call i32 @target_fabric_setup_tpg_param_cit(%struct.target_fabric_configfs* %25)
  %27 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %28 = call i32 @target_fabric_setup_tpg_nacl_cit(%struct.target_fabric_configfs* %27)
  %29 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %30 = call i32 @target_fabric_setup_tpg_nacl_base_cit(%struct.target_fabric_configfs* %29)
  %31 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %32 = call i32 @target_fabric_setup_tpg_nacl_attrib_cit(%struct.target_fabric_configfs* %31)
  %33 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %34 = call i32 @target_fabric_setup_tpg_nacl_auth_cit(%struct.target_fabric_configfs* %33)
  %35 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %36 = call i32 @target_fabric_setup_tpg_nacl_param_cit(%struct.target_fabric_configfs* %35)
  %37 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %38 = call i32 @target_fabric_setup_tpg_nacl_stat_cit(%struct.target_fabric_configfs* %37)
  %39 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %40 = call i32 @target_fabric_setup_tpg_mappedlun_cit(%struct.target_fabric_configfs* %39)
  %41 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %2, align 8
  %42 = call i32 @target_fabric_setup_tpg_mappedlun_stat_cit(%struct.target_fabric_configfs* %41)
  ret i32 0
}

declare dso_local i32 @target_fabric_setup_discovery_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_wwn_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_wwn_fabric_stats_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_base_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_port_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_port_stat_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_lun_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_np_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_np_base_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_attrib_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_param_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_base_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_attrib_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_auth_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_param_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_nacl_stat_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_mappedlun_cit(%struct.target_fabric_configfs*) #1

declare dso_local i32 @target_fabric_setup_tpg_mappedlun_stat_cit(%struct.target_fabric_configfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
