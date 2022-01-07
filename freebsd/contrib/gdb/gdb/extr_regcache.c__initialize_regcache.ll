; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c__initialize_regcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c__initialize_regcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_regcache_descr = common dso_local global i32 0, align 4
@regcache_descr_handle = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32 0, align 4
@deprecated_register_valid = common dso_local global i32 0, align 4
@build_regcache = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"flushregs\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@reg_flush_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Force gdb to flush its register cache (maintainer command)\00", align 1
@registers_ptid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@maintenance_print_registers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Print the internal register configuration.Takes an optional file parameter.\00", align 1
@maintenanceprintlist = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"raw-registers\00", align 1
@maintenance_print_raw_registers = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [97 x i8] c"Print the internal register configuration including raw values.Takes an optional file parameter.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"cooked-registers\00", align 1
@maintenance_print_cooked_registers = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [100 x i8] c"Print the internal register configuration including cooked values.Takes an optional file parameter.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"register-groups\00", align 1
@maintenance_print_register_groups = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [108 x i8] c"Print the internal register configuration including each register's group.Takes an optional file parameter.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_regcache() #0 {
  %1 = load i32, i32* @init_regcache_descr, align 4
  %2 = call i32 @register_gdbarch_data(i32 %1)
  store i32 %2, i32* @regcache_descr_handle, align 4
  %3 = load i32, i32* @current_regcache, align 4
  %4 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %3)
  %5 = load i32, i32* @deprecated_registers, align 4
  %6 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %5)
  %7 = load i32, i32* @deprecated_register_valid, align 4
  %8 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %7)
  %9 = load i32, i32* @build_regcache, align 4
  %10 = call i32 @deprecated_register_gdbarch_swap(i32* null, i32 0, i32 %9)
  %11 = load i32, i32* @class_maintenance, align 4
  %12 = load i32, i32* @reg_flush_command, align 4
  %13 = call i32 @add_com(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @pid_to_ptid(i32 -1)
  store i32 %14, i32* @registers_ptid, align 4
  %15 = load i32, i32* @class_maintenance, align 4
  %16 = load i32, i32* @maintenance_print_registers, align 4
  %17 = call i32 @add_cmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32* @maintenanceprintlist)
  %18 = load i32, i32* @class_maintenance, align 4
  %19 = load i32, i32* @maintenance_print_raw_registers, align 4
  %20 = call i32 @add_cmd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32* @maintenanceprintlist)
  %21 = load i32, i32* @class_maintenance, align 4
  %22 = load i32, i32* @maintenance_print_cooked_registers, align 4
  %23 = call i32 @add_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %21, i32 %22, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.7, i64 0, i64 0), i32* @maintenanceprintlist)
  %24 = load i32, i32* @class_maintenance, align 4
  %25 = load i32, i32* @maintenance_print_register_groups, align 4
  %26 = call i32 @add_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %24, i32 %25, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0), i32* @maintenanceprintlist)
  ret void
}

declare dso_local i32 @register_gdbarch_data(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32) #1

declare dso_local i32 @deprecated_register_gdbarch_swap(i32*, i32, i32) #1

declare dso_local i32 @add_com(i8*, i32, i32, i8*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
