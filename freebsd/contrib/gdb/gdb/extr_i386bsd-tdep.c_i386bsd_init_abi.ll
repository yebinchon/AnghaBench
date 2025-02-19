; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-tdep.c_i386bsd_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386bsd-tdep.c_i386bsd_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i64 }

@i386bsd_pc_in_sigtramp = common dso_local global i32 0, align 4
@i386bsd_sigtramp_start = common dso_local global i32 0, align 4
@i386bsd_sigtramp_end = common dso_local global i32 0, align 4
@i386bsd_aout_in_solib_call_trampoline = common dso_local global i32 0, align 4
@i386bsd_sigcontext_addr = common dso_local global i32 0, align 4
@i386bsd_sc_reg_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386bsd_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
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
  %10 = load i32, i32* @i386bsd_pc_in_sigtramp, align 4
  %11 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %9, i32 %10)
  %12 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %13 = load i32, i32* @i386bsd_sigtramp_start, align 4
  %14 = call i32 @set_gdbarch_sigtramp_start(%struct.gdbarch* %12, i32 %13)
  %15 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %16 = load i32, i32* @i386bsd_sigtramp_end, align 4
  %17 = call i32 @set_gdbarch_sigtramp_end(%struct.gdbarch* %15, i32 %16)
  %18 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %19 = load i32, i32* @i386bsd_aout_in_solib_call_trampoline, align 4
  %20 = call i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch* %18, i32 %19)
  %21 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %22 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %24 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %23, i32 0, i32 0
  store i32 -37756992, i32* %24, align 8
  %25 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %26 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %25, i32 0, i32 1
  store i32 -37756928, i32* %26, align 4
  %27 = load i32, i32* @i386bsd_sigcontext_addr, align 4
  %28 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %29 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @i386bsd_sc_reg_offset, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @i386bsd_sc_reg_offset, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %36 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_sigtramp_start(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_sigtramp_end(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_in_solib_call_trampoline(%struct.gdbarch*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
