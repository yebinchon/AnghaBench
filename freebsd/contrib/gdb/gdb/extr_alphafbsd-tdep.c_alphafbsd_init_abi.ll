; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphafbsd-tdep.c_alphafbsd_init_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphafbsd-tdep.c_alphafbsd_init_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.gdbarch_info = type { i32 }
%struct.gdbarch_tdep = type { i32, i32, i32, i32, i32, i32, i32 }

@alphafbsd_use_struct_convention = common dso_local global i32 0, align 4
@alphafbsd_pc_in_sigtramp = common dso_local global i32 0, align 4
@alphafbsd_sigtramp_offset = common dso_local global i32 0, align 4
@alphafbsd_sigcontext_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gdbarch*)* @alphafbsd_init_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alphafbsd_init_abi(i32 %0, %struct.gdbarch* %1) #0 {
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
  %12 = call i32 @alpha_dwarf2_init_abi(i32 %11, %struct.gdbarch* %9)
  %13 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %14 = getelementptr inbounds %struct.gdbarch_info, %struct.gdbarch_info* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @alpha_mdebug_init_abi(i32 %15, %struct.gdbarch* %13)
  %17 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %18 = load i32, i32* @alphafbsd_use_struct_convention, align 4
  %19 = call i32 @set_gdbarch_use_struct_convention(%struct.gdbarch* %17, i32 %18)
  %20 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %21 = load i32, i32* @alphafbsd_pc_in_sigtramp, align 4
  %22 = call i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch* %20, i32 %21)
  %23 = load i32, i32* @alphafbsd_sigtramp_offset, align 4
  %24 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %25 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @alphafbsd_sigcontext_addr, align 4
  %27 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %28 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %30 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %29, i32 0, i32 0
  store i32 288, i32* %30, align 4
  %31 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %32 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %31, i32 0, i32 1
  store i32 24, i32* %32, align 4
  %33 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %34 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %33, i32 0, i32 2
  store i32 320, i32* %34, align 4
  %35 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %36 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %35, i32 0, i32 3
  store i32 2, i32* %36, align 4
  %37 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %5, align 8
  %38 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %37, i32 0, i32 4
  store i32 8, i32* %38, align 4
  ret void
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(%struct.gdbarch*) #1

declare dso_local i32 @alpha_dwarf2_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i32 @alpha_mdebug_init_abi(i32, %struct.gdbarch*) #1

declare dso_local i32 @set_gdbarch_use_struct_convention(%struct.gdbarch*, i32) #1

declare dso_local i32 @set_gdbarch_pc_in_sigtramp(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
