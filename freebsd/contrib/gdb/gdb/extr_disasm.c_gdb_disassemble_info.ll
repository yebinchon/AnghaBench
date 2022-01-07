; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_gdb_disassemble_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_gdb_disassemble_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@fprintf_disasm = common dso_local global i32 0, align 4
@bfd_target_unknown_flavour = common dso_local global i32 0, align 4
@dis_asm_memory_error = common dso_local global i32 0, align 4
@dis_asm_print_address = common dso_local global i32 0, align 4
@dis_asm_read_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disassemble_info*, %struct.gdbarch*, %struct.ui_file*)* @gdb_disassemble_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_disassemble_info(%struct.disassemble_info* noalias sret %0, %struct.gdbarch* %1, %struct.ui_file* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.ui_file*, align 8
  store %struct.gdbarch* %1, %struct.gdbarch** %4, align 8
  store %struct.ui_file* %2, %struct.ui_file** %5, align 8
  %6 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %7 = load i32, i32* @fprintf_disasm, align 4
  %8 = call i32 @init_disassemble_info(%struct.disassemble_info* %0, %struct.ui_file* %6, i32 %7)
  %9 = load i32, i32* @bfd_target_unknown_flavour, align 4
  %10 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 6
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @dis_asm_memory_error, align 4
  %12 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @dis_asm_print_address, align 4
  %14 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @dis_asm_read_memory, align 4
  %16 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %18 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %23 = call %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %28 = call i32 @gdbarch_byte_order(%struct.gdbarch* %27)
  %29 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %0, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  ret void
}

declare dso_local i32 @init_disassemble_info(%struct.disassemble_info*, %struct.ui_file*, i32) #1

declare dso_local %struct.TYPE_2__* @gdbarch_bfd_arch_info(%struct.gdbarch*) #1

declare dso_local i32 @gdbarch_byte_order(%struct.gdbarch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
