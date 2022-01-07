; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dink32-rom.c__initialize_dink32_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dink32-rom.c__initialize_dink32_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }

@MO_HEX_PREFIX = common dso_local global i32 0, align 4
@MO_GETMEM_NEEDS_RANGE = common dso_local global i32 0, align 4
@MO_FILL_USES_ADDR = common dso_local global i32 0, align 4
@MO_HANDLE_NL = common dso_local global i32 0, align 4
@MO_32_REGS_PAIRED = common dso_local global i32 0, align 4
@MO_SETREG_INTERACTIVE = common dso_local global i32 0, align 4
@MO_SETMEM_INTERACTIVE = common dso_local global i32 0, align 4
@MO_GETMEM_16_BOUNDARY = common dso_local global i32 0, align 4
@MO_CLR_BREAK_1_BASED = common dso_local global i32 0, align 4
@MO_SREC_ACK = common dso_local global i32 0, align 4
@MO_SREC_ACK_ROTATE = common dso_local global i32 0, align 4
@dink32_cmds = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dink32_inits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"go +\0D\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"tr +\0D\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bp 0x%x\0D\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bp %d\0D\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mm -b %x\0D\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mm -w %x\0D\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"mm %x\0D\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" ?  \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"md %x\0D\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rm %s\0D\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rd %s\0D\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"rd r\0D\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)\00", align 1
@dink32_supply_register = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"dl -k\0D\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Set Input Port : set to Keyboard Port\0D\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"DINK32_603 >>\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@dink32_ops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SERIAL_1_STOPBITS = common dso_local global i32 0, align 4
@dink32_regnames = common dso_local global i32 0, align 4
@MONITOR_OPS_MAGIC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"dink32\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"DINK32 monitor\00", align 1
@.str.21 = private unnamed_addr constant [95 x i8] c"Debug using the DINK32 monitor.\0ASpecify the serial device it is connected to (e.g. /dev/ttya).\00", align 1
@dink32_open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_dink32_rom() #0 {
  %1 = load i32, i32* @MO_HEX_PREFIX, align 4
  %2 = load i32, i32* @MO_GETMEM_NEEDS_RANGE, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @MO_FILL_USES_ADDR, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MO_HANDLE_NL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MO_32_REGS_PAIRED, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MO_SETREG_INTERACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MO_SETMEM_INTERACTIVE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MO_GETMEM_16_BOUNDARY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MO_CLR_BREAK_1_BASED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MO_SREC_ACK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MO_SREC_ACK_ROTATE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 0), align 8
  %22 = load i32, i32* @dink32_inits, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 21), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 4), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 20, i32 0), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 20, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 20, i32 2), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 20, i32 3), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 19, i32 0), align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 19, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 18, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 18, i32 1), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 17, i32 0), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 17, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 6), align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 7), align 8
  %23 = load i32, i32* @dink32_supply_register, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 16), align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 9), align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 10), align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 11), align 8
  store %struct.TYPE_13__* @dink32_ops, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 15), align 8
  %24 = load i32, i32* @SERIAL_1_STOPBITS, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 14), align 8
  %25 = load i32, i32* @dink32_regnames, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 13), align 4
  %26 = load i32, i32* @MONITOR_OPS_MAGIC, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dink32_cmds, i32 0, i32 12), align 8
  %27 = call i32 @init_monitor_ops(%struct.TYPE_13__* @dink32_ops)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dink32_ops, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dink32_ops, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.21, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dink32_ops, i32 0, i32 2), align 8
  %28 = load i32, i32* @dink32_open, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dink32_ops, i32 0, i32 3), align 8
  %29 = call i32 @add_target(%struct.TYPE_13__* @dink32_ops)
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
