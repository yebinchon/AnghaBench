; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_gdbarch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_gdbarch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_list = type { %struct.gdbarch* }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32*, i32 }

@ia64_generic_find_global_pointer = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"builtin_type_ia64_ext\00", align 1
@builtin_type_ia64_ext = common dso_local global i32* null, align 8
@floatformat_ia64_ext = common dso_local global i32 0, align 4
@floatformat_i387_ext = common dso_local global i32 0, align 4
@NUM_IA64_RAW_REGS = common dso_local global i32 0, align 4
@LAST_PSEUDO_REGNUM = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGNUM = common dso_local global i64 0, align 8
@sp_regnum = common dso_local global i32 0, align 4
@IA64_FR0_REGNUM = common dso_local global i32 0, align 4
@ia64_register_name = common dso_local global i32 0, align 4
@ia64_register_type = common dso_local global i32 0, align 4
@ia64_pseudo_register_read = common dso_local global i32 0, align 4
@ia64_pseudo_register_write = common dso_local global i32 0, align 4
@ia64_dwarf_reg_to_regnum = common dso_local global i32 0, align 4
@ia64_register_reggroup_p = common dso_local global i32 0, align 4
@ia64_convert_register_p = common dso_local global i32 0, align 4
@ia64_register_to_value = common dso_local global i32 0, align 4
@ia64_value_to_register = common dso_local global i32 0, align 4
@ia64_skip_prologue = common dso_local global i32 0, align 4
@ia64_use_struct_convention = common dso_local global i32 0, align 4
@ia64_extract_return_value = common dso_local global i32 0, align 4
@ia64_store_return_value = common dso_local global i32 0, align 4
@ia64_extract_struct_value_address = common dso_local global i32 0, align 4
@ia64_memory_insert_breakpoint = common dso_local global i32 0, align 4
@ia64_memory_remove_breakpoint = common dso_local global i32 0, align 4
@ia64_breakpoint_from_pc = common dso_local global i32 0, align 4
@ia64_read_pc = common dso_local global i32 0, align 4
@ia64_write_pc = common dso_local global i32 0, align 4
@ia64_push_dummy_call = common dso_local global i32 0, align 4
@ia64_frame_align = common dso_local global i32 0, align 4
@ia64_unwind_dummy_id = common dso_local global i32 0, align 4
@ia64_unwind_pc = common dso_local global i32 0, align 4
@ia64_sigtramp_frame_sniffer = common dso_local global i32 0, align 4
@ia64_frame_sniffer = common dso_local global i32 0, align 4
@ia64_frame_base = common dso_local global i32 0, align 4
@core_addr_lessthan = common dso_local global i32 0, align 4
@ia64_remote_translate_xfer_address = common dso_local global i32 0, align 4
@ia64_print_insn = common dso_local global i32 0, align 4
@ia64_convert_from_func_ptr_addr = common dso_local global i32 0, align 4
@ia64_libunwind_descr = common dso_local global i32 0, align 4
@ia64_libunwind_frame_sniffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdbarch* (i32, %struct.gdbarch_list*)* @ia64_gdbarch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdbarch* @ia64_gdbarch_init(i32 %0, %struct.gdbarch_list* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.gdbarch_info, align 4
  %5 = alloca %struct.gdbarch_list*, align 8
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca i32*, align 8
  %9 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store %struct.gdbarch_list* %1, %struct.gdbarch_list** %5, align 8
  %10 = load %struct.gdbarch_list*, %struct.gdbarch_list** %5, align 8
  %11 = call %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list* %10, %struct.gdbarch_info* %4)
  store %struct.gdbarch_list* %11, %struct.gdbarch_list** %5, align 8
  %12 = load %struct.gdbarch_list*, %struct.gdbarch_list** %5, align 8
  %13 = icmp ne %struct.gdbarch_list* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.gdbarch_list*, %struct.gdbarch_list** %5, align 8
  %16 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %15, i32 0, i32 0
  %17 = load %struct.gdbarch*, %struct.gdbarch** %16, align 8
  store %struct.gdbarch* %17, %struct.gdbarch** %3, align 8
  br label %163

18:                                               ; preds = %2
  %19 = call %struct.gdbarch_tdep* @xmalloc(i32 24)
  store %struct.gdbarch_tdep* %19, %struct.gdbarch_tdep** %7, align 8
  %20 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %21 = call %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info* %4, %struct.gdbarch_tdep* %20)
  store %struct.gdbarch* %21, %struct.gdbarch** %6, align 8
  %22 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %25 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %27 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @ia64_generic_find_global_pointer, align 4
  %29 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %30 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @TYPE_CODE_FLT, align 4
  %32 = call i32 @init_type(i32 %31, i32 16, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** @builtin_type_ia64_ext, align 8
  store i32* @floatformat_ia64_ext, i32** %8, align 8
  %35 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %36 = call i32 @set_gdbarch_long_double_format(%struct.gdbarch* %35, i32* @floatformat_i387_ext)
  %37 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %38 = call i32 @set_gdbarch_short_bit(%struct.gdbarch* %37, i32 16)
  %39 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %40 = call i32 @set_gdbarch_int_bit(%struct.gdbarch* %39, i32 32)
  %41 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %42 = call i32 @set_gdbarch_long_bit(%struct.gdbarch* %41, i32 64)
  %43 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %44 = call i32 @set_gdbarch_long_long_bit(%struct.gdbarch* %43, i32 64)
  %45 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %46 = call i32 @set_gdbarch_float_bit(%struct.gdbarch* %45, i32 32)
  %47 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %48 = call i32 @set_gdbarch_double_bit(%struct.gdbarch* %47, i32 64)
  %49 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %50 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %49, i32 128)
  %51 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %52 = call i32 @set_gdbarch_ptr_bit(%struct.gdbarch* %51, i32 64)
  %53 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %54 = load i32, i32* @NUM_IA64_RAW_REGS, align 4
  %55 = call i32 @set_gdbarch_num_regs(%struct.gdbarch* %53, i32 %54)
  %56 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %57 = load i64, i64* @LAST_PSEUDO_REGNUM, align 8
  %58 = load i64, i64* @FIRST_PSEUDO_REGNUM, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch* %56, i64 %59)
  %61 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %62 = load i32, i32* @sp_regnum, align 4
  %63 = call i32 @set_gdbarch_sp_regnum(%struct.gdbarch* %61, i32 %62)
  %64 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %65 = load i32, i32* @IA64_FR0_REGNUM, align 4
  %66 = call i32 @set_gdbarch_fp0_regnum(%struct.gdbarch* %64, i32 %65)
  %67 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %68 = load i32, i32* @ia64_register_name, align 4
  %69 = call i32 @set_gdbarch_register_name(%struct.gdbarch* %67, i32 %68)
  %70 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %71 = call i32 @set_gdbarch_deprecated_register_size(%struct.gdbarch* %70, i32 8)
  %72 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %73 = load i32, i32* @ia64_register_type, align 4
  %74 = call i32 @set_gdbarch_register_type(%struct.gdbarch* %72, i32 %73)
  %75 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %76 = load i32, i32* @ia64_pseudo_register_read, align 4
  %77 = call i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch* %75, i32 %76)
  %78 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %79 = load i32, i32* @ia64_pseudo_register_write, align 4
  %80 = call i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch* %78, i32 %79)
  %81 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %82 = load i32, i32* @ia64_dwarf_reg_to_regnum, align 4
  %83 = call i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch* %81, i32 %82)
  %84 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %85 = load i32, i32* @ia64_register_reggroup_p, align 4
  %86 = call i32 @set_gdbarch_register_reggroup_p(%struct.gdbarch* %84, i32 %85)
  %87 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %88 = load i32, i32* @ia64_convert_register_p, align 4
  %89 = call i32 @set_gdbarch_convert_register_p(%struct.gdbarch* %87, i32 %88)
  %90 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %91 = load i32, i32* @ia64_register_to_value, align 4
  %92 = call i32 @set_gdbarch_register_to_value(%struct.gdbarch* %90, i32 %91)
  %93 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %94 = load i32, i32* @ia64_value_to_register, align 4
  %95 = call i32 @set_gdbarch_value_to_register(%struct.gdbarch* %93, i32 %94)
  %96 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %97 = load i32, i32* @ia64_skip_prologue, align 4
  %98 = call i32 @set_gdbarch_skip_prologue(%struct.gdbarch* %96, i32 %97)
  %99 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %100 = load i32, i32* @ia64_use_struct_convention, align 4
  %101 = call i32 @set_gdbarch_use_struct_convention(%struct.gdbarch* %99, i32 %100)
  %102 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %103 = load i32, i32* @ia64_extract_return_value, align 4
  %104 = call i32 @set_gdbarch_extract_return_value(%struct.gdbarch* %102, i32 %103)
  %105 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %106 = load i32, i32* @ia64_store_return_value, align 4
  %107 = call i32 @set_gdbarch_store_return_value(%struct.gdbarch* %105, i32 %106)
  %108 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %109 = load i32, i32* @ia64_extract_struct_value_address, align 4
  %110 = call i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch* %108, i32 %109)
  %111 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %112 = load i32, i32* @ia64_memory_insert_breakpoint, align 4
  %113 = call i32 @set_gdbarch_memory_insert_breakpoint(%struct.gdbarch* %111, i32 %112)
  %114 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %115 = load i32, i32* @ia64_memory_remove_breakpoint, align 4
  %116 = call i32 @set_gdbarch_memory_remove_breakpoint(%struct.gdbarch* %114, i32 %115)
  %117 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %118 = load i32, i32* @ia64_breakpoint_from_pc, align 4
  %119 = call i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch* %117, i32 %118)
  %120 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %121 = load i32, i32* @ia64_read_pc, align 4
  %122 = call i32 @set_gdbarch_read_pc(%struct.gdbarch* %120, i32 %121)
  %123 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %124 = load i32, i32* @ia64_write_pc, align 4
  %125 = call i32 @set_gdbarch_write_pc(%struct.gdbarch* %123, i32 %124)
  %126 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %127 = load i32, i32* @ia64_push_dummy_call, align 4
  %128 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %126, i32 %127)
  %129 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %130 = load i32, i32* @ia64_frame_align, align 4
  %131 = call i32 @set_gdbarch_frame_align(%struct.gdbarch* %129, i32 %130)
  %132 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %133 = load i32, i32* @ia64_unwind_dummy_id, align 4
  %134 = call i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch* %132, i32 %133)
  %135 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %136 = load i32, i32* @ia64_unwind_pc, align 4
  %137 = call i32 @set_gdbarch_unwind_pc(%struct.gdbarch* %135, i32 %136)
  %138 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %139 = load i32, i32* @ia64_sigtramp_frame_sniffer, align 4
  %140 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %138, i32 %139)
  %141 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %142 = load i32, i32* @ia64_frame_sniffer, align 4
  %143 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %141, i32 %142)
  %144 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %145 = call i32 @frame_base_set_default(%struct.gdbarch* %144, i32* @ia64_frame_base)
  %146 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %147 = load i32, i32* @core_addr_lessthan, align 4
  %148 = call i32 @set_gdbarch_inner_than(%struct.gdbarch* %146, i32 %147)
  %149 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %150 = load i32, i32* @ia64_remote_translate_xfer_address, align 4
  %151 = call i32 @set_gdbarch_remote_translate_xfer_address(%struct.gdbarch* %149, i32 %150)
  %152 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %153 = load i32, i32* @ia64_print_insn, align 4
  %154 = call i32 @set_gdbarch_print_insn(%struct.gdbarch* %152, i32 %153)
  %155 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %156 = load i32, i32* @ia64_convert_from_func_ptr_addr, align 4
  %157 = call i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch* %155, i32 %156)
  %158 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %159 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %4, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @gdbarch_init_osabi(i32 %160, %struct.gdbarch* %158)
  %162 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  store %struct.gdbarch* %162, %struct.gdbarch** %3, align 8
  br label %163

163:                                              ; preds = %18, %14
  %164 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  ret %struct.gdbarch* %164
}

declare dso_local %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list*, %struct.gdbarch_info*) #1

declare dso_local %struct.gdbarch_tdep* @xmalloc(i32) #1

declare dso_local %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info*, %struct.gdbarch_tdep*) #1

declare dso_local i32 @init_type(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @set_gdbarch_long_double_format(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_short_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_int_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_float_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ptr_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_pseudo_regs(%struct.gdbarch*, i64) #1

declare dso_local i32 @set_gdbarch_sp_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_fp0_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_read(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pseudo_register_write(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_dwarf2_reg_to_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_reggroup_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_register_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_to_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_value_to_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_prologue(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_use_struct_convention(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_extract_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_store_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_memory_insert_breakpoint(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_memory_remove_breakpoint(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_read_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_write_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_push_dummy_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_frame_align(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_unwind_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_append_sniffer(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_base_set_default(%struct.gdbarch*, i32*) #1

declare dso_local i32 @set_gdbarch_inner_than(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_remote_translate_xfer_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_print_insn(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_from_func_ptr_addr(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdbarch_init_osabi(i32, %struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
