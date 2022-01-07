; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_init_varasm_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_init_varasm_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@section_entry_hash = common dso_local global i32 0, align 4
@section_entry_eq = common dso_local global i32 0, align 4
@section_htab = common dso_local global i8* null, align 8
@object_block_entry_hash = common dso_local global i32 0, align 4
@object_block_entry_eq = common dso_local global i32 0, align 4
@object_block_htab = common dso_local global i8* null, align 8
@const_desc_hash = common dso_local global i32 0, align 4
@const_desc_eq = common dso_local global i32 0, align 4
@const_desc_htab = common dso_local global i8* null, align 8
@const_alias_set = common dso_local global i32 0, align 4
@shared_constant_pool = common dso_local global i32 0, align 4
@SECTION_WRITE = common dso_local global i32 0, align 4
@SECTION_BSS = common dso_local global i32 0, align 4
@SECTION_COMMON = common dso_local global i32 0, align 4
@emit_tls_common = common dso_local global i32 0, align 4
@tls_comm_section = common dso_local global i8* null, align 8
@emit_local = common dso_local global i32 0, align 4
@lcomm_section = common dso_local global i8* null, align 8
@emit_common = common dso_local global i32 0, align 4
@comm_section = common dso_local global i8* null, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@readonly_data_section = common dso_local global i32* null, align 8
@text_section = common dso_local global i32* null, align 8
@BSS_SECTION_ASM_OP = common dso_local global i32 0, align 4
@CTORS_SECTION_ASM_OP = common dso_local global i32 0, align 4
@DATA_SECTION_ASM_OP = common dso_local global i32 0, align 4
@DTORS_SECTION_ASM_OP = common dso_local global i32 0, align 4
@READONLY_DATA_SECTION_ASM_OP = common dso_local global i32 0, align 4
@SBSS_SECTION_ASM_OP = common dso_local global i32 0, align 4
@SDATA_SECTION_ASM_OP = common dso_local global i32 0, align 4
@SECTION_CODE = common dso_local global i32 0, align 4
@TEXT_SECTION_ASM_OP = common dso_local global i32 0, align 4
@bss_noswitch_section = common dso_local global i8* null, align 8
@bss_section = common dso_local global i8* null, align 8
@ctors_section = common dso_local global i8* null, align 8
@data_section = common dso_local global i8* null, align 8
@dtors_section = common dso_local global i8* null, align 8
@emit_bss = common dso_local global i32 0, align 4
@output_section_asm_op = common dso_local global i32 0, align 4
@sbss_section = common dso_local global i8* null, align 8
@sdata_section = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_varasm_once() #0 {
  %1 = load i32, i32* @section_entry_hash, align 4
  %2 = load i32, i32* @section_entry_eq, align 4
  %3 = call i8* @htab_create_ggc(i32 31, i32 %1, i32 %2, i32* null)
  store i8* %3, i8** @section_htab, align 8
  %4 = load i32, i32* @object_block_entry_hash, align 4
  %5 = load i32, i32* @object_block_entry_eq, align 4
  %6 = call i8* @htab_create_ggc(i32 31, i32 %4, i32 %5, i32* null)
  store i8* %6, i8** @object_block_htab, align 8
  %7 = load i32, i32* @const_desc_hash, align 4
  %8 = load i32, i32* @const_desc_eq, align 4
  %9 = call i8* @htab_create_ggc(i32 1009, i32 %7, i32 %8, i32* null)
  store i8* %9, i8** @const_desc_htab, align 8
  %10 = call i32 (...) @new_alias_set()
  store i32 %10, i32* @const_alias_set, align 4
  %11 = call i32 (...) @create_constant_pool()
  store i32 %11, i32* @shared_constant_pool, align 4
  %12 = load i32, i32* @SECTION_WRITE, align 4
  %13 = load i32, i32* @SECTION_BSS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SECTION_COMMON, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @emit_tls_common, align 4
  %18 = call i8* @get_noswitch_section(i32 %16, i32 %17)
  store i8* %18, i8** @tls_comm_section, align 8
  %19 = load i32, i32* @SECTION_WRITE, align 4
  %20 = load i32, i32* @SECTION_BSS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SECTION_COMMON, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @emit_local, align 4
  %25 = call i8* @get_noswitch_section(i32 %23, i32 %24)
  store i8* %25, i8** @lcomm_section, align 8
  %26 = load i32, i32* @SECTION_WRITE, align 4
  %27 = load i32, i32* @SECTION_BSS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SECTION_COMMON, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @emit_common, align 4
  %32 = call i8* @get_noswitch_section(i32 %30, i32 %31)
  store i8* %32, i8** @comm_section, align 8
  %33 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %34 = call i32 (...) %33()
  %35 = load i32*, i32** @readonly_data_section, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %0
  %38 = load i32*, i32** @text_section, align 8
  store i32* %38, i32** @readonly_data_section, align 8
  br label %39

39:                                               ; preds = %37, %0
  ret void
}

declare dso_local i8* @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local i32 @new_alias_set(...) #1

declare dso_local i32 @create_constant_pool(...) #1

declare dso_local i8* @get_noswitch_section(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
