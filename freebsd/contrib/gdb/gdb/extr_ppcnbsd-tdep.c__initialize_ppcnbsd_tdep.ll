; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c__initialize_ppcnbsd_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcnbsd-tdep.c__initialize_ppcnbsd_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_arch_powerpc = common dso_local global i32 0, align 4
@GDB_OSABI_NETBSD_ELF = common dso_local global i32 0, align 4
@ppcnbsd_init_abi = common dso_local global i32 0, align 4
@ppcnbsd_core_fns = common dso_local global i32 0, align 4
@ppcnbsd_elfcore_fns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_ppcnbsd_tdep() #0 {
  %1 = load i32, i32* @bfd_arch_powerpc, align 4
  %2 = load i32, i32* @GDB_OSABI_NETBSD_ELF, align 4
  %3 = load i32, i32* @ppcnbsd_init_abi, align 4
  %4 = call i32 @gdbarch_register_osabi(i32 %1, i32 0, i32 %2, i32 %3)
  %5 = call i32 @add_core_fns(i32* @ppcnbsd_core_fns)
  %6 = call i32 @add_core_fns(i32* @ppcnbsd_elfcore_fns)
  ret void
}

declare dso_local i32 @gdbarch_register_osabi(i32, i32, i32, i32) #1

declare dso_local i32 @add_core_fns(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
