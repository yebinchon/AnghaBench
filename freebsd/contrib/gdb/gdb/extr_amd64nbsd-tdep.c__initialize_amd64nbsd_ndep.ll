; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64nbsd-tdep.c__initialize_amd64nbsd_ndep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64nbsd-tdep.c__initialize_amd64nbsd_ndep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amd64nbsd_r_reg_offset = common dso_local global i32 0, align 4
@AMD64_NUM_GREGS = common dso_local global i64 0, align 8
@bfd_arch_i386 = common dso_local global i32 0, align 4
@bfd_mach_x86_64 = common dso_local global i32 0, align 4
@GDB_OSABI_NETBSD_ELF = common dso_local global i32 0, align 4
@amd64nbsd_init_abi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_amd64nbsd_ndep() #0 {
  %1 = load i32, i32* @amd64nbsd_r_reg_offset, align 4
  %2 = call i64 @ARRAY_SIZE(i32 %1)
  %3 = load i64, i64* @AMD64_NUM_GREGS, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @gdb_assert(i32 %5)
  %7 = load i32, i32* @bfd_arch_i386, align 4
  %8 = load i32, i32* @bfd_mach_x86_64, align 4
  %9 = load i32, i32* @GDB_OSABI_NETBSD_ELF, align 4
  %10 = load i32, i32* @amd64nbsd_init_abi, align 4
  %11 = call i32 @gdbarch_register_osabi(i32 %7, i32 %8, i32 %9, i32 %10)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @gdbarch_register_osabi(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
