; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_gdbarch_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_gdbarch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_list = type { %struct.gdbarch* }
%struct.gdbarch_info = type { i64, i32* }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32*, i32*, i64 }

@GDB_OSABI_UNKNOWN = common dso_local global i64 0, align 8
@bfd_target_ecoff_flavour = common dso_local global i64 0, align 8
@GDB_OSABI_OSF1 = common dso_local global i64 0, align 8
@ALPHA_NUM_REGS = common dso_local global i32 0, align 4
@ALPHA_SP_REGNUM = common dso_local global i32 0, align 4
@ALPHA_PC_REGNUM = common dso_local global i32 0, align 4
@ALPHA_FP0_REGNUM = common dso_local global i32 0, align 4
@alpha_register_name = common dso_local global i32 0, align 4
@alpha_register_byte = common dso_local global i32 0, align 4
@alpha_register_raw_size = common dso_local global i32 0, align 4
@alpha_register_virtual_size = common dso_local global i32 0, align 4
@alpha_register_type = common dso_local global i32 0, align 4
@alpha_cannot_fetch_register = common dso_local global i32 0, align 4
@alpha_cannot_store_register = common dso_local global i32 0, align 4
@alpha_convert_register_p = common dso_local global i32 0, align 4
@alpha_register_to_value = common dso_local global i32 0, align 4
@alpha_value_to_register = common dso_local global i32 0, align 4
@alpha_register_reggroup_p = common dso_local global i32 0, align 4
@alpha_skip_prologue = common dso_local global i32 0, align 4
@print_insn_alpha = common dso_local global i32 0, align 4
@always_use_struct_convention = common dso_local global i32 0, align 4
@alpha_extract_return_value = common dso_local global i32 0, align 4
@alpha_store_return_value = common dso_local global i32 0, align 4
@alpha_extract_struct_value_address = common dso_local global i32 0, align 4
@alpha_push_dummy_call = common dso_local global i32 0, align 4
@alpha_unwind_dummy_id = common dso_local global i32 0, align 4
@alpha_unwind_pc = common dso_local global i32 0, align 4
@core_addr_lessthan = common dso_local global i32 0, align 4
@find_solib_trampoline_target = common dso_local global i32 0, align 4
@alpha_breakpoint_from_pc = common dso_local global i32 0, align 4
@alpha_get_longjmp_target = common dso_local global i32 0, align 4
@alpha_sigtramp_frame_sniffer = common dso_local global i32 0, align 4
@alpha_heuristic_frame_sniffer = common dso_local global i32 0, align 4
@alpha_heuristic_frame_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdbarch* (i64, i32*, %struct.gdbarch_list*)* @alpha_gdbarch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdbarch* @alpha_gdbarch_init(i64 %0, i32* %1, %struct.gdbarch_list* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_info, align 8
  %6 = alloca %struct.gdbarch_list*, align 8
  %7 = alloca %struct.gdbarch_tdep*, align 8
  %8 = alloca %struct.gdbarch*, align 8
  %9 = bitcast %struct.gdbarch_info* %5 to { i64, i32* }*
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %9, i32 0, i32 1
  store i32* %1, i32** %11, align 8
  store %struct.gdbarch_list* %2, %struct.gdbarch_list** %6, align 8
  %12 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GDB_OSABI_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @bfd_get_flavour(i32* %22)
  %24 = load i64, i64* @bfd_target_ecoff_flavour, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* @GDB_OSABI_OSF1, align 8
  %28 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %5, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %15, %3
  %31 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %32 = call %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list* %31, %struct.gdbarch_info* %5)
  store %struct.gdbarch_list* %32, %struct.gdbarch_list** %6, align 8
  %33 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %34 = icmp ne %struct.gdbarch_list* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.gdbarch_list*, %struct.gdbarch_list** %6, align 8
  %37 = getelementptr inbounds %struct.gdbarch_list, %struct.gdbarch_list* %36, i32 0, i32 0
  %38 = load %struct.gdbarch*, %struct.gdbarch** %37, align 8
  store %struct.gdbarch* %38, %struct.gdbarch** %4, align 8
  br label %186

39:                                               ; preds = %30
  %40 = call %struct.gdbarch_tdep* @xmalloc(i32 40)
  store %struct.gdbarch_tdep* %40, %struct.gdbarch_tdep** %7, align 8
  %41 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %42 = call %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info* %5, %struct.gdbarch_tdep* %41)
  store %struct.gdbarch* %42, %struct.gdbarch** %8, align 8
  %43 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %44 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %43, i32 0, i32 6
  store i64 4831838208, i64* %44, align 8
  %45 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %46 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %48 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %50 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %49, i32 0, i32 0
  store i32 16, i32* %50, align 8
  %51 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %52 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %51, i32 0, i32 1
  store i32 32, i32* %52, align 4
  %53 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %54 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 256
  %57 = add nsw i32 %56, 8
  %58 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %59 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %61 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %60, i32 0, i32 3
  store i32 -1, i32* %61, align 4
  %62 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %63 = call i32 @set_gdbarch_short_bit(%struct.gdbarch* %62, i32 16)
  %64 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %65 = call i32 @set_gdbarch_int_bit(%struct.gdbarch* %64, i32 32)
  %66 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %67 = call i32 @set_gdbarch_long_bit(%struct.gdbarch* %66, i32 64)
  %68 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %69 = call i32 @set_gdbarch_long_long_bit(%struct.gdbarch* %68, i32 64)
  %70 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %71 = call i32 @set_gdbarch_float_bit(%struct.gdbarch* %70, i32 32)
  %72 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %73 = call i32 @set_gdbarch_double_bit(%struct.gdbarch* %72, i32 64)
  %74 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %75 = call i32 @set_gdbarch_long_double_bit(%struct.gdbarch* %74, i32 64)
  %76 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %77 = call i32 @set_gdbarch_ptr_bit(%struct.gdbarch* %76, i32 64)
  %78 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %79 = load i32, i32* @ALPHA_NUM_REGS, align 4
  %80 = call i32 @set_gdbarch_num_regs(%struct.gdbarch* %78, i32 %79)
  %81 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %82 = load i32, i32* @ALPHA_SP_REGNUM, align 4
  %83 = call i32 @set_gdbarch_sp_regnum(%struct.gdbarch* %81, i32 %82)
  %84 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %85 = load i32, i32* @ALPHA_PC_REGNUM, align 4
  %86 = call i32 @set_gdbarch_pc_regnum(%struct.gdbarch* %84, i32 %85)
  %87 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %88 = load i32, i32* @ALPHA_FP0_REGNUM, align 4
  %89 = call i32 @set_gdbarch_fp0_regnum(%struct.gdbarch* %87, i32 %88)
  %90 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %91 = load i32, i32* @alpha_register_name, align 4
  %92 = call i32 @set_gdbarch_register_name(%struct.gdbarch* %90, i32 %91)
  %93 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %94 = load i32, i32* @alpha_register_byte, align 4
  %95 = call i32 @set_gdbarch_deprecated_register_byte(%struct.gdbarch* %93, i32 %94)
  %96 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %97 = load i32, i32* @alpha_register_raw_size, align 4
  %98 = call i32 @set_gdbarch_deprecated_register_raw_size(%struct.gdbarch* %96, i32 %97)
  %99 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %100 = load i32, i32* @alpha_register_virtual_size, align 4
  %101 = call i32 @set_gdbarch_deprecated_register_virtual_size(%struct.gdbarch* %99, i32 %100)
  %102 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %103 = load i32, i32* @alpha_register_type, align 4
  %104 = call i32 @set_gdbarch_register_type(%struct.gdbarch* %102, i32 %103)
  %105 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %106 = load i32, i32* @alpha_cannot_fetch_register, align 4
  %107 = call i32 @set_gdbarch_cannot_fetch_register(%struct.gdbarch* %105, i32 %106)
  %108 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %109 = load i32, i32* @alpha_cannot_store_register, align 4
  %110 = call i32 @set_gdbarch_cannot_store_register(%struct.gdbarch* %108, i32 %109)
  %111 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %112 = load i32, i32* @alpha_convert_register_p, align 4
  %113 = call i32 @set_gdbarch_convert_register_p(%struct.gdbarch* %111, i32 %112)
  %114 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %115 = load i32, i32* @alpha_register_to_value, align 4
  %116 = call i32 @set_gdbarch_register_to_value(%struct.gdbarch* %114, i32 %115)
  %117 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %118 = load i32, i32* @alpha_value_to_register, align 4
  %119 = call i32 @set_gdbarch_value_to_register(%struct.gdbarch* %117, i32 %118)
  %120 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %121 = load i32, i32* @alpha_register_reggroup_p, align 4
  %122 = call i32 @set_gdbarch_register_reggroup_p(%struct.gdbarch* %120, i32 %121)
  %123 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %124 = load i32, i32* @alpha_skip_prologue, align 4
  %125 = call i32 @set_gdbarch_skip_prologue(%struct.gdbarch* %123, i32 %124)
  %126 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %127 = load i32, i32* @print_insn_alpha, align 4
  %128 = call i32 @set_gdbarch_print_insn(%struct.gdbarch* %126, i32 %127)
  %129 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %130 = load i32, i32* @always_use_struct_convention, align 4
  %131 = call i32 @set_gdbarch_use_struct_convention(%struct.gdbarch* %129, i32 %130)
  %132 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %133 = load i32, i32* @alpha_extract_return_value, align 4
  %134 = call i32 @set_gdbarch_extract_return_value(%struct.gdbarch* %132, i32 %133)
  %135 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %136 = load i32, i32* @alpha_store_return_value, align 4
  %137 = call i32 @set_gdbarch_store_return_value(%struct.gdbarch* %135, i32 %136)
  %138 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %139 = load i32, i32* @alpha_extract_struct_value_address, align 4
  %140 = call i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch* %138, i32 %139)
  %141 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %142 = load i32, i32* @alpha_push_dummy_call, align 4
  %143 = call i32 @set_gdbarch_push_dummy_call(%struct.gdbarch* %141, i32 %142)
  %144 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %145 = load i32, i32* @alpha_unwind_dummy_id, align 4
  %146 = call i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch* %144, i32 %145)
  %147 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %148 = load i32, i32* @alpha_unwind_pc, align 4
  %149 = call i32 @set_gdbarch_unwind_pc(%struct.gdbarch* %147, i32 %148)
  %150 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %151 = load i32, i32* @core_addr_lessthan, align 4
  %152 = call i32 @set_gdbarch_inner_than(%struct.gdbarch* %150, i32 %151)
  %153 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %154 = load i32, i32* @find_solib_trampoline_target, align 4
  %155 = call i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch* %153, i32 %154)
  %156 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %157 = load i32, i32* @alpha_breakpoint_from_pc, align 4
  %158 = call i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch* %156, i32 %157)
  %159 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %160 = call i32 @set_gdbarch_decr_pc_after_break(%struct.gdbarch* %159, i32 4)
  %161 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %162 = bitcast %struct.gdbarch_info* %5 to { i64, i32* }*
  %163 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %162, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @gdbarch_init_osabi(i64 %164, i32* %166, %struct.gdbarch* %161)
  %168 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %7, align 8
  %169 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %39
  %173 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %174 = load i32, i32* @alpha_get_longjmp_target, align 4
  %175 = call i32 @set_gdbarch_get_longjmp_target(%struct.gdbarch* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %39
  %177 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %178 = load i32, i32* @alpha_sigtramp_frame_sniffer, align 4
  %179 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %177, i32 %178)
  %180 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %181 = load i32, i32* @alpha_heuristic_frame_sniffer, align 4
  %182 = call i32 @frame_unwind_append_sniffer(%struct.gdbarch* %180, i32 %181)
  %183 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %184 = call i32 @frame_base_set_default(%struct.gdbarch* %183, i32* @alpha_heuristic_frame_base)
  %185 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  store %struct.gdbarch* %185, %struct.gdbarch** %4, align 8
  br label %186

186:                                              ; preds = %176, %35
  %187 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  ret %struct.gdbarch* %187
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.gdbarch_list* @gdbarch_list_lookup_by_info(%struct.gdbarch_list*, %struct.gdbarch_info*) #1

declare dso_local %struct.gdbarch_tdep* @xmalloc(i32) #1

declare dso_local %struct.gdbarch* @gdbarch_alloc(%struct.gdbarch_info*, %struct.gdbarch_tdep*) #1

declare dso_local i32 @set_gdbarch_short_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_int_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_long_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_float_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_long_double_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_ptr_bit(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_num_regs(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_sp_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_fp0_regnum(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_byte(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_raw_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_register_virtual_size(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_cannot_fetch_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_cannot_store_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_convert_register_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_to_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_value_to_register(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_register_reggroup_p(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_prologue(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_print_insn(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_use_struct_convention(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_extract_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_store_return_value(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_deprecated_extract_struct_value_address(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_push_dummy_call(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_unwind_dummy_id(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_unwind_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_inner_than(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_skip_trampoline_code(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_breakpoint_from_pc(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_decr_pc_after_break(%struct.gdbarch*, i32) #1

declare dso_local i32 @gdbarch_init_osabi(i64, i32*, %struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_get_longjmp_target(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_unwind_append_sniffer(%struct.gdbarch*, i32) #1

declare dso_local i32 @frame_base_set_default(%struct.gdbarch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
