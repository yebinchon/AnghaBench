; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcfbsd-tdep.c_ppcfbsd_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32 }

@ppcfbsd_pc_in_sigtramp = common dso_local global i32 0, align 4
@ppcfbsd_return_value = common dso_local global i32 0, align 4
@svr4_ilp32_fetch_link_map_offsets = common dso_local global i32 0, align 4
@ppc64_fbsd_pc_in_sigtramp = common dso_local global i32 0, align 4
@ppc64_fbsd_convert_from_func_ptr_addr = common dso_local global i32 0, align 4
@ppc64_skip_trampoline_code = common dso_local global i32 0, align 4
@svr4_lp64_fetch_link_map_offsets = common dso_local global i32 0, align 4
@ppcfbsd_regset_from_core_section = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gdbarch*)* @ppcfbsd_init_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppcfbsd_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %10 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %9, i32 64)
  %11 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %12 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %17 = load i32, i32* @ppcfbsd_pc_in_sigtramp, align 4
  %18 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %16, i32 %17)
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = load i32, i32* @ppcfbsd_return_value, align 4
  %21 = call i32 @set_gdbarch_return_value(%struct.gdbarch* %19, i32 %20)
  %22 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %23 = load i32, i32* @svr4_ilp32_fetch_link_map_offsets, align 4
  %24 = call i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %22, i32 %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %27 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %32 = load i32, i32* @ppc64_fbsd_pc_in_sigtramp, align 4
  %33 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %31, i32 %32)
  %34 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %35 = load i32, i32* @ppc64_fbsd_convert_from_func_ptr_addr, align 4
  %36 = call i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch* %34, i32 %35)
  %37 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %38 = load i32, i32* @ppc64_skip_trampoline_code, align 4
  %39 = call i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch* %37, i32 %38)
  %40 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %41 = load i32, i32* @svr4_lp64_fetch_link_map_offsets, align 4
  %42 = call i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %40, i32 %41)
  br label %43

43:                                               ; preds = %30, %25
  %44 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %45 = load i32, i32* @ppcfbsd_regset_from_core_section, align 4
  %46 = call i32 @set_gdbarch_regset_from_core_section(%struct.gdbarch* %44, i32 %45)
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_long_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_regset_from_core_section(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
