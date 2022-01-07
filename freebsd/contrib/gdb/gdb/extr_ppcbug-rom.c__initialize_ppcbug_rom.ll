; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c__initialize_ppcbug_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c__initialize_ppcbug_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"lo 0\0D\00", align 1
@ppcbug_cmds0 = common dso_local global i32 0, align 4
@ppcbug_ops0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"lo 1\0D\00", align 1
@ppcbug_cmds1 = common dso_local global i32 0, align 4
@ppcbug_ops1 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ppcbug\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"PowerPC PPCBug monitor on port 0\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"Debug via the PowerPC PPCBug monitor using port 0.\0ASpecify the serial device it is connected to (e.g. /dev/ttya).\00", align 1
@ppcbug_open0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ppcbug1\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"PowerPC PPCBug monitor on port 1\00", align 1
@.str.7 = private unnamed_addr constant [114 x i8] c"Debug via the PowerPC PPCBug monitor using port 1.\0ASpecify the serial device it is connected to (e.g. /dev/ttya).\00", align 1
@ppcbug_open1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_ppcbug_rom() #0 {
  %1 = call i32 @init_ppc_cmds(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @ppcbug_cmds0, %struct.TYPE_6__* @ppcbug_ops0)
  %2 = call i32 @init_ppc_cmds(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @ppcbug_cmds1, %struct.TYPE_6__* @ppcbug_ops1)
  %3 = call i32 @init_monitor_ops(%struct.TYPE_6__* @ppcbug_ops0)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops0, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops0, i32 0, i32 2), align 8
  %4 = load i32, i32* @ppcbug_open0, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops0, i32 0, i32 3), align 8
  %5 = call i32 @add_target(%struct.TYPE_6__* @ppcbug_ops0)
  %6 = call i32 @init_monitor_ops(%struct.TYPE_6__* @ppcbug_ops1)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops1, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops1, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops1, i32 0, i32 2), align 8
  %7 = load i32, i32* @ppcbug_open1, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ppcbug_ops1, i32 0, i32 3), align 8
  %8 = call i32 @add_target(%struct.TYPE_6__* @ppcbug_ops1)
  ret void
}

declare dso_local i32 @init_ppc_cmds(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @init_monitor_ops(%struct.TYPE_6__*) #1

declare dso_local i32 @add_target(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
