; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c__initialize_i386_tdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c__initialize_i386_tdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@bfd_arch_i386 = common dso_local global i32 0, align 4
@i386_gdbarch_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"disassembly-flavor\00", align 1
@no_class = common dso_local global i32 0, align 4
@valid_flavors = common dso_local global i32 0, align 4
@disassembly_flavor = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [100 x i8] c"Set the disassembly flavor, the valid values are \22att\22 and \22intel\22, and the default value is \22att\22.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"struct-convention\00", align 1
@valid_conventions = common dso_local global i32 0, align 4
@struct_convention = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [129 x i8] c"Set the convention for returning small structs, valid values are \22default\22, \22pcc\22 and \22reg\22, and the default value is \22default\22.\00", align 1
@bfd_target_coff_flavour = common dso_local global i32 0, align 4
@i386_coff_osabi_sniffer = common dso_local global i32 0, align 4
@bfd_target_nlm_flavour = common dso_local global i32 0, align 4
@i386_nlm_osabi_sniffer = common dso_local global i32 0, align 4
@GDB_OSABI_SVR4 = common dso_local global i32 0, align 4
@i386_svr4_init_abi = common dso_local global i32 0, align 4
@GDB_OSABI_GO32 = common dso_local global i32 0, align 4
@i386_go32_init_abi = common dso_local global i32 0, align 4
@GDB_OSABI_NETWARE = common dso_local global i32 0, align 4
@i386_nw_init_abi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_i386_tdep() #0 {
  %1 = alloca %struct.cmd_list_element*, align 8
  %2 = alloca %struct.cmd_list_element*, align 8
  %3 = load i32, i32* @bfd_arch_i386, align 4
  %4 = load i32, i32* @i386_gdbarch_init, align 4
  %5 = call i32 @register_gdbarch_init(i32 %3, i32 %4)
  %6 = load i32, i32* @no_class, align 4
  %7 = load i32, i32* @valid_flavors, align 4
  %8 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32* @disassembly_flavor, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %8, %struct.cmd_list_element** %1, align 8
  %9 = load %struct.cmd_list_element*, %struct.cmd_list_element** %1, align 8
  %10 = call i32 @add_show_from_set(%struct.cmd_list_element* %9, i32* @showlist)
  %11 = load i32, i32* @no_class, align 4
  %12 = load i32, i32* @valid_conventions, align 4
  %13 = call %struct.cmd_list_element* @add_set_enum_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12, i32* @struct_convention, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  store %struct.cmd_list_element* %13, %struct.cmd_list_element** %2, align 8
  %14 = load %struct.cmd_list_element*, %struct.cmd_list_element** %2, align 8
  %15 = call i32 @add_show_from_set(%struct.cmd_list_element* %14, i32* @showlist)
  %16 = load i32, i32* @bfd_arch_i386, align 4
  %17 = load i32, i32* @bfd_target_coff_flavour, align 4
  %18 = load i32, i32* @i386_coff_osabi_sniffer, align 4
  %19 = call i32 @gdbarch_register_osabi_sniffer(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @bfd_arch_i386, align 4
  %21 = load i32, i32* @bfd_target_nlm_flavour, align 4
  %22 = load i32, i32* @i386_nlm_osabi_sniffer, align 4
  %23 = call i32 @gdbarch_register_osabi_sniffer(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @bfd_arch_i386, align 4
  %25 = load i32, i32* @GDB_OSABI_SVR4, align 4
  %26 = load i32, i32* @i386_svr4_init_abi, align 4
  %27 = call i32 @gdbarch_register_osabi(i32 %24, i32 0, i32 %25, i32 %26)
  %28 = load i32, i32* @bfd_arch_i386, align 4
  %29 = load i32, i32* @GDB_OSABI_GO32, align 4
  %30 = load i32, i32* @i386_go32_init_abi, align 4
  %31 = call i32 @gdbarch_register_osabi(i32 %28, i32 0, i32 %29, i32 %30)
  %32 = load i32, i32* @bfd_arch_i386, align 4
  %33 = load i32, i32* @GDB_OSABI_NETWARE, align 4
  %34 = load i32, i32* @i386_nw_init_abi, align 4
  %35 = call i32 @gdbarch_register_osabi(i32 %32, i32 0, i32 %33, i32 %34)
  %36 = call i32 (...) @i386_init_reggroups()
  ret void
}

declare dso_local i32 @register_gdbarch_init(i32, i32) #1

declare dso_local %struct.cmd_list_element* @add_set_enum_cmd(i8*, i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @add_show_from_set(%struct.cmd_list_element*, i32*) #1

declare dso_local i32 @gdbarch_register_osabi_sniffer(i32, i32, i32) #1

declare dso_local i32 @gdbarch_register_osabi(i32, i32, i32, i32) #1

declare dso_local i32 @i386_init_reggroups(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
