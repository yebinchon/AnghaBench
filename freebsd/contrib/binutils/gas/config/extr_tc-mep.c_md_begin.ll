; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optbits = common dso_local global i32 0, align 4
@mep_config_index = common dso_local global i64 0, align 8
@MEP_OMASK = common dso_local global i32 0, align 4
@optbitset = common dso_local global i32 0, align 4
@CGEN_CPU_OPEN_MACHS = common dso_local global i32 0, align 4
@CGEN_CPU_OPEN_ENDIAN = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i64 0, align 8
@CGEN_ENDIAN_BIG = common dso_local global i32 0, align 4
@CGEN_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@CGEN_CPU_OPEN_ISAS = common dso_local global i32 0, align 4
@CGEN_CPU_OPEN_END = common dso_local global i32 0, align 4
@gas_cgen_cpu_desc = common dso_local global i32 0, align 4
@mep_parse_operand = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@bfd_arch_mep = common dso_local global i32 0, align 4
@MEP_CPU = common dso_local global i32 0, align 4
@MEP_CONFIG = common dso_local global i32 0, align 4
@library_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = load i32, i32* @optbits, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i64, i64* @mep_config_index, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load i32, i32* @optbits, align 4
  store i32 %7, i32* @MEP_OMASK, align 4
  br label %15

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @MEP_OMASK, align 4
  %10 = load i32, i32* @optbitset, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load i32, i32* @optbits, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* @MEP_OMASK, align 4
  br label %15

15:                                               ; preds = %8, %6
  %16 = load i32, i32* @CGEN_CPU_OPEN_MACHS, align 4
  %17 = load i32, i32* @CGEN_CPU_OPEN_ENDIAN, align 4
  %18 = load i64, i64* @target_big_endian, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @CGEN_ENDIAN_BIG, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @CGEN_ENDIAN_LITTLE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i32, i32* @CGEN_CPU_OPEN_ISAS, align 4
  %27 = load i32, i32* @CGEN_CPU_OPEN_END, align 4
  %28 = call i32 @mep_cgen_cpu_open(i32 %16, i32 0, i32 %17, i32 %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* @gas_cgen_cpu_desc, align 4
  %29 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %30 = call i32 @mep_cgen_init_asm(i32 %29)
  %31 = load i32, i32* @gas_cgen_cpu_desc, align 4
  %32 = load i32, i32* @mep_parse_operand, align 4
  %33 = call i32 @cgen_set_parse_operand_fn(i32 %31, i32 %32)
  %34 = load i32, i32* @stdoutput, align 4
  %35 = load i32, i32* @bfd_arch_mep, align 4
  %36 = call i32 (...) @mep_machine()
  %37 = call i32 @bfd_default_set_arch_mach(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @stdoutput, align 4
  %39 = load i32, i32* @MEP_CPU, align 4
  %40 = load i32, i32* @MEP_CONFIG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @library_flag, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bfd_set_private_flags(i32 %38, i32 %43)
  %45 = call i32 (...) @gas_cgen_initialize_saved_fixups_array()
  ret void
}

declare dso_local i32 @mep_cgen_cpu_open(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mep_cgen_init_asm(i32) #1

declare dso_local i32 @cgen_set_parse_operand_fn(i32, i32) #1

declare dso_local i32 @bfd_default_set_arch_mach(i32, i32, i32) #1

declare dso_local i32 @mep_machine(...) #1

declare dso_local i32 @bfd_set_private_flags(i32, i32) #1

declare dso_local i32 @gas_cgen_initialize_saved_fixups_array(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
