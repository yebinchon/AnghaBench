; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i64, i32, i32 }

@I387_SIZEOF_FXSAVE = common dso_local global i32 0, align 4
@AMD64_ST0_REGNUM = common dso_local global i32 0, align 4
@AMD64_NUM_REGS = common dso_local global i32 0, align 4
@amd64_register_name = common dso_local global i32 0, align 4
@amd64_register_type = common dso_local global i32 0, align 4
@AMD64_RSP_REGNUM = common dso_local global i32 0, align 4
@AMD64_RIP_REGNUM = common dso_local global i32 0, align 4
@AMD64_EFLAGS_REGNUM = common dso_local global i32 0, align 4
@amd64_dwarf_reg_to_regnum = common dso_local global i32 0, align 4
@amd64_push_dummy_call = common dso_local global i32 0, align 4
@amd64_frame_align = common dso_local global i32 0, align 4
@amd64_convert_register_p = common dso_local global i32 0, align 4
@i387_register_to_value = common dso_local global i32 0, align 4
@i387_value_to_register = common dso_local global i32 0, align 4
@amd64_return_value = common dso_local global i32 0, align 4
@amd64_skip_prologue = common dso_local global i32 0, align 4
@amd64_unwind_dummy_id = common dso_local global i32 0, align 4
@in_plt_section = common dso_local global i32 0, align 4
@amd64_sigtramp_frame_sniffer = common dso_local global i32 0, align 4
@amd64_frame_sniffer = common dso_local global i32 0, align 4
@amd64_frame_base = common dso_local global i32 0, align 4
@amd64_regset_from_core_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
  %3 = alloca %struct.gdbarch_info, align 4
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_tdep*, align 8
  %6 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  %7 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %8 = call %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch* %7)
  store %struct.gdbarch_tdep* %8, %struct.gdbarch_tdep** %5, align 8
  %9 = load i32, i32* @I387_SIZEOF_FXSAVE, align 4
  %10 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %11 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @AMD64_ST0_REGNUM, align 4
  %13 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %16 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %15, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %18 = call i32 @set_gdbarch_long_bit(%struct.gdbarch* %17, i32 64)
  %19 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %20 = call i32 @set_gdbarch_long_long_bit(%struct.gdbarch* %19, i32 64)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %22 = call i32 @set_gdbarch_ptr_bit(%struct.gdbarch* %21, i32 64)
  %23 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %24 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %23, i32 128)
  %25 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %26 = load i32, i32* @AMD64_NUM_REGS, align 4
  %27 = call i32 @set_gdbarch_num_regs(%struct.gdbarch* %25, i32 %26)
  %28 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %29 = load i32, i32* @amd64_register_name, align 4
  %30 = call i32 @set_gdbarch_register_name(%struct.gdbarch* %28, i32 %29)
  %31 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %32 = load i32, i32* @amd64_register_type, align 4
  %33 = call i32 @set_gdbarch_register_type(%struct.gdbarch* %31, i32 %32)
  %34 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %35 = load i32, i32* @AMD64_RSP_REGNUM, align 4
  %36 = call i32 @set_gdbarch_sp_regnum(%struct.gdbarch* %34, i32 %35)
  %37 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %38 = load i32, i32* @AMD64_RIP_REGNUM, align 4
  %39 = call i32 @set_gdbarch_pc_regnum(%struct.gdbarch* %37, i32 %38)
  %40 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %41 = load i32, i32* @AMD64_EFLAGS_REGNUM, align 4
  %42 = call i32 @set_gdbarch_ps_regnum(%struct.gdbarch* %40, i32 %41)
  %43 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %44 = load i32, i32* @AMD64_ST0_REGNUM, align 4
  %45 = call i32 @set_gdbarch_fp0_regnum(%struct.gdbarch* %43, i32 %44)
  %46 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %47 = load i32, i32* @amd64_dwarf_reg_to_regnum, align 4
  %48 = call i32 @set_gdbarch_stab_reg_to_regnum(%struct.gdbarch* %46, i32 %47)
  %49 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %50 = load i32, i32* @amd64_dwarf_reg_to_regnum, align 4
  %51 = call i32 @set_gdbarch_dwarf_reg_to_regnum(%struct.gdbarch* %49, i32 %50)
  %52 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %53 = load i32, i32* @amd64_dwarf_reg_to_regnum, align 4
  %54 = call i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch* %52, i32 %53)
  %55 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %56 = load i32, i32* @amd64_push_dummy_call, align 4
  %57 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %55, i32 %56)
  %58 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %59 = load i32, i32* @amd64_frame_align, align 4
  %60 = call i32 @set_gdbarch_frame_align(%struct.gdbarch* %58, i32 %59)
  %61 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %62 = call i32 @set_gdbarch_frame_red_zone_size(%struct.gdbarch* %61, i32 128)
  %63 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %64 = load i32, i32* @amd64_convert_register_p, align 4
  %65 = call i32 @set_gdbarch_convert_register_p(%struct.gdbarch* %63, i32 %64)
  %66 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %67 = load i32, i32* @i387_register_to_value, align 4
  %68 = call i32 @set_gdbarch_register_to_value(%struct.gdbarch* %66, i32 %67)
  %69 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %70 = load i32, i32* @i387_value_to_register, align 4
  %71 = call i32 @set_gdbarch_value_to_register(%struct.gdbarch* %69, i32 %70)
  %72 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %73 = load i32, i32* @amd64_return_value, align 4
  %74 = call i32 @set_gdbarch_return_value(%struct.gdbarch* %72, i32 %73)
  %75 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %76 = load i32, i32* @amd64_skip_prologue, align 4
  %77 = call i32 @set_gdbarch_skip_prologue(%struct.gdbarch* %75, i32 %76)
  %78 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %79 = call i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch* %78, i32 0)
  %80 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %81 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  %82 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %83 = load i32, i32* @amd64_unwind_dummy_id, align 4
  %84 = call i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch* %82, i32 %83)
  %85 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %86 = load i32, i32* @in_plt_section, align 4
  %87 = call i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch* %85, i32 %86)
  %88 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %89 = load i32, i32* @amd64_sigtramp_frame_sniffer, align 4
  %90 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %88, i32 %89)
  %91 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %92 = load i32, i32* @amd64_frame_sniffer, align 4
  %93 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %91, i32 %92)
  %94 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %95 = call i32 @frame_base_set_default(%struct.gdbarch* %94, i32* @amd64_frame_base)
  %96 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %97 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %2
  %101 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %102 = load i32, i32* @amd64_regset_from_core_section, align 4
  %103 = call i32 @set_gdbarch_regset_from_core_section(%struct.gdbarch* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %2
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ptr_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_sp_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ps_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_fp0_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_stab_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_dwarf_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_push_dummy_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_align(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_red_zone_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_register_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_to_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_value_to_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_prologue(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_append_sniffer(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_base_set_default(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_regset_from_core_section(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
