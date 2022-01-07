; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c__initialize_r3900_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c__initialize_r3900_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8* }

@MO_NO_ECHO_ON_OPEN = common dso_local global i32 0, align 4
@MO_ADDR_BITS_REMOVE = common dso_local global i32 0, align 4
@MO_CLR_BREAK_USES_ADDR = common dso_local global i32 0, align 4
@MO_GETMEM_READ_SINGLE = common dso_local global i32 0, align 4
@MO_PRINT_PROGRAM_OUTPUT = common dso_local global i32 0, align 4
@r3900_cmds = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dummy_inits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"g\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"t\0D\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"b %A\0D\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"b %A,0\0D\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fx %A s %x %x\0D\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sx %A %x\0D\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sh %A %x\0D\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sw %A %x\0D\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sx %A\0D\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"sh %A\0D\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"sw %A\0D\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c".\0D\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"x%s %x\0D\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"x%s\0D\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"x\0D\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"\\([a-zA-Z0-9_]+\\) *=\\([0-9a-f]+ [0-9a-f]+\\b\\)\00", align 1
@r3900_supply_register = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"r0\0D\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@r3900_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SERIAL_1_STOPBITS = common dso_local global i32 0, align 4
@r3900_regnames = common dso_local global i32 0, align 4
@MONITOR_OPS_MAGIC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"r3900\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"R3900 monitor\00", align 1
@.str.24 = private unnamed_addr constant [98 x i8] c"Debug using the DVE R3900 monitor.\0ASpecify the serial device it is connected to (e.g. /dev/ttya).\00", align 1
@r3900_open = common dso_local global i32 0, align 4
@orig_monitor_fetch_registers = common dso_local global i32 0, align 4
@orig_monitor_store_registers = common dso_local global i32 0, align 4
@r3900_fetch_registers = common dso_local global i32 0, align 4
@r3900_store_registers = common dso_local global i32 0, align 4
@orig_monitor_load = common dso_local global i32 0, align 4
@r3900_load = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_r3900_rom() #0 {
  %1 = load i32, i32* @MO_NO_ECHO_ON_OPEN, align 4
  %2 = load i32, i32* @MO_ADDR_BITS_REMOVE, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @MO_CLR_BREAK_USES_ADDR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MO_GETMEM_READ_SINGLE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MO_PRINT_PROGRAM_OUTPUT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 0), align 8
  %10 = load i32, i32* @dummy_inits, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 20), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 5), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 19, i32 0), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 19, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 19, i32 2), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 0), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 2), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 3), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 4), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 18, i32 5), align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 17, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 16, i32 0), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 16, i32 1), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 16, i32 2), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 16, i32 3), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 7), align 8
  %11 = load i32, i32* @r3900_supply_register, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 15), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 10), align 8
  store %struct.TYPE_13__* @r3900_ops, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 14), align 8
  %12 = load i32, i32* @SERIAL_1_STOPBITS, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 13), align 8
  %13 = load i32, i32* @r3900_regnames, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 12), align 4
  %14 = load i32, i32* @MONITOR_OPS_MAGIC, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @r3900_cmds, i32 0, i32 11), align 8
  %15 = call i32 @init_monitor_ops(%struct.TYPE_13__* @r3900_ops)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.24, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 2), align 8
  %16 = load i32, i32* @r3900_open, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 6), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 5), align 8
  store i32 %17, i32* @orig_monitor_fetch_registers, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 4), align 4
  store i32 %18, i32* @orig_monitor_store_registers, align 4
  %19 = load i32, i32* @r3900_fetch_registers, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 5), align 8
  %20 = load i32, i32* @r3900_store_registers, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 4), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 3), align 8
  store i32 %21, i32* @orig_monitor_load, align 4
  %22 = load i32, i32* @r3900_load, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @r3900_ops, i32 0, i32 3), align 8
  %23 = call i32 @add_target(%struct.TYPE_13__* @r3900_ops)
  ret void
}

declare dso_local i32 @init_monitor_ops(%struct.TYPE_13__*) #1

declare dso_local i32 @add_target(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
