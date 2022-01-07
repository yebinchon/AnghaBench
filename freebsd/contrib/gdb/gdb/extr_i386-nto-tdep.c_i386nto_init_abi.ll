; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i32, i32 }

@in_plt_section = common dso_local global i32 0, align 4
@find_solib_trampoline_target = common dso_local global i32 0, align 4
@i386nto_pc_in_sigtramp = common dso_local global i32 0, align 4
@i386nto_sigcontext_addr = common dso_local global i32 0, align 4
@i386nto_svr4_fetch_link_map_offsets = common dso_local global i32 0, align 4
@nto_relocate_section_addresses = common dso_local global i32 0, align 4
@TARGET_SO_RELOCATE_SECTION_ADDRESSES = common dso_local global i32 0, align 4
@nto_find_and_open_solib = common dso_local global i32 0, align 4
@TARGET_SO_FIND_AND_OPEN_SOLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gdbarch*)* @i386nto_init_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386nto_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
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
  %10 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @i386_elf_init_abi(i32 %11, %struct.gdbarch* %9)
  %13 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %14 = call i32 @set_gdbarch_decr_pc_after_break(%struct.gdbarch* %13, i32 0)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %16 = load i32, i32* @in_plt_section, align 4
  %17 = call i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch* %15, i32 %16)
  %18 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %19 = load i32, i32* @find_solib_trampoline_target, align 4
  %20 = call i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch* %18, i32 %19)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %22 = load i32, i32* @i386nto_pc_in_sigtramp, align 4
  %23 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %21, i32 %22)
  %24 = load i32, i32* @i386nto_sigcontext_addr, align 4
  %25 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %26 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 0
  store i32 56, i32* %28, align 4
  %29 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %30 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %29, i32 0, i32 1
  store i32 68, i32* %30, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 2
  store i32 20, i32* %32, align 4
  %33 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %34 = load i32, i32* @i386nto_svr4_fetch_link_map_offsets, align 4
  %35 = call i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch* %33, i32 %34)
  %36 = load i32, i32* @nto_relocate_section_addresses, align 4
  store i32 %36, i32* @TARGET_SO_RELOCATE_SECTION_ADDRESSES, align 4
  %37 = load i32, i32* @nto_find_and_open_solib, align 4
  store i32 %37, i32* @TARGET_SO_FIND_AND_OPEN_SOLIB, align 4
  %38 = call i32 (...) @init_i386nto_ops()
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @i386_elf_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_decr_pc_after_break(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_solib_svr4_fetch_link_map_offsets(%struct.gdbarch*, i32) #1

declare dso_local i32 @init_i386nto_ops(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
