; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppc_obj64 = common dso_local global i64 0, align 8
@ppc_cie_data_alignment = common dso_local global i32 0, align 4
@set_target_endian = common dso_local global i32 0, align 4
@PPC_BIG_ENDIAN = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i32 0, align 4
@N_DEBUG = common dso_local global i32 0, align 4
@msolaris = common dso_local global i32 0, align 4
@ppc_coff_debug_section = common dso_local global i32 0, align 4
@ppc_current_section = common dso_local global i32 0, align 4
@ppc_data_csects = common dso_local global i8* null, align 8
@ppc_flags = common dso_local global i64 0, align 8
@ppc_previous_section = common dso_local global i64 0, align 8
@ppc_text_csects = common dso_local global i8* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@text_section = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = call i32 (...) @ppc_set_cpu()
  %2 = load i64, i64* @ppc_obj64, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 -8, i32 -4
  store i32 %5, i32* @ppc_cie_data_alignment, align 4
  %6 = call i32 (...) @ppc_setup_opcodes()
  %7 = load i32, i32* @set_target_endian, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  store i32 1, i32* @set_target_endian, align 4
  %10 = load i32, i32* @PPC_BIG_ENDIAN, align 4
  store i32 %10, i32* @target_big_endian, align 4
  br label %11

11:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @ppc_set_cpu(...) #1

declare dso_local i32 @ppc_setup_opcodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
