; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c__initialize_go32_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c__initialize_go32_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@go32_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dos\00", align 1
@class_info = common dso_local global i32 0, align 4
@go32_info_dos_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Print information specific to DJGPP (aka MS-DOS) debugging.\00", align 1
@info_dos_cmdlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"info dos \00", align 1
@infolist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sysinfo\00", align 1
@go32_sysinfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c"Display information about the target system, including CPU, OS, DPMI, etc.\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ldt\00", align 1
@go32_sldt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [128 x i8] c"Display entries in the LDT (Local Descriptor Table).\0AEntry number (an expression) as an argument means display only that entry.\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"gdt\00", align 1
@go32_sgdt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [129 x i8] c"Display entries in the GDT (Global Descriptor Table).\0AEntry number (an expression) as an argument means display only that entry.\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"idt\00", align 1
@go32_sidt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [132 x i8] c"Display entries in the IDT (Interrupt Descriptor Table).\0AEntry number (an expression) as an argument means display only that entry.\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"pde\00", align 1
@go32_pde = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [114 x i8] c"Display entries in the Page Directory.\0AEntry number (an expression) as an argument means display only that entry.\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"pte\00", align 1
@go32_pte = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [173 x i8] c"Display entries in Page Tables.\0AEntry number (an expression) as an argument means display only entries\0Afrom the Page Table pointed to by the specified Page Directory entry.\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"address-pte\00", align 1
@go32_pte_for_address = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [445 x i8] c"Display a Page Table entry for a linear address.\0AThe address argument must be a linear address, after adding to\0Ait the base address of the appropriate segment.\0AThe base address of variables and functions in the debuggee's data\0Aor code segment is stored in the variable __djgpp_base_address,\0Aso use `__djgpp_base_address + (char *)&var' as the argument.\0AFor other segments, look up their base address in the output of\0Athe `info dos ldt' command.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_go32_nat() #0 {
  %1 = call i32 (...) @init_go32_ops()
  %2 = call i32 @add_target(i32* @go32_ops)
  %3 = load i32, i32* @class_info, align 4
  %4 = load i32, i32* @go32_info_dos_command, align 4
  %5 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* @info_dos_cmdlist, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* @infolist)
  %6 = load i32, i32* @class_info, align 4
  %7 = load i32, i32* @go32_sysinfo, align 4
  %8 = call i32 @add_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32* @info_dos_cmdlist)
  %9 = load i32, i32* @class_info, align 4
  %10 = load i32, i32* @go32_sldt, align 4
  %11 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %9, i32 %10, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.6, i64 0, i64 0), i32* @info_dos_cmdlist)
  %12 = load i32, i32* @class_info, align 4
  %13 = load i32, i32* @go32_sgdt, align 4
  %14 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %12, i32 %13, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.8, i64 0, i64 0), i32* @info_dos_cmdlist)
  %15 = load i32, i32* @class_info, align 4
  %16 = load i32, i32* @go32_sidt, align 4
  %17 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.10, i64 0, i64 0), i32* @info_dos_cmdlist)
  %18 = load i32, i32* @class_info, align 4
  %19 = load i32, i32* @go32_pde, align 4
  %20 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.12, i64 0, i64 0), i32* @info_dos_cmdlist)
  %21 = load i32, i32* @class_info, align 4
  %22 = load i32, i32* @go32_pte, align 4
  %23 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.14, i64 0, i64 0), i32* @info_dos_cmdlist)
  %24 = load i32, i32* @class_info, align 4
  %25 = load i32, i32* @go32_pte_for_address, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([445 x i8], [445 x i8]* @.str.16, i64 0, i64 0), i32* @info_dos_cmdlist)
  ret void
}

declare dso_local i32 @init_go32_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
