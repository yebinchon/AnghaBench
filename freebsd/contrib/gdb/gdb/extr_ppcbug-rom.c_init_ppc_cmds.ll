; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c_init_ppc_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppcbug-rom.c_init_ppc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.monitor_ops = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.target_ops*, i32*, i32*, i32*, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32*, i32* }
%struct.TYPE_7__ = type { i8*, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i32*, i32*, i32*, i32* }
%struct.target_ops = type { i32 }

@MO_CLR_BREAK_USES_ADDR = common dso_local global i32 0, align 4
@MO_HANDLE_NL = common dso_local global i32 0, align 4
@ppcbug_inits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"g\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"t\0D\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"br %x\0D\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"nobr %x\0D\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nobr\0D\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bf %x:%x %x;b\0D\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ms %x %02x\0D\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ms %x %04x\0D\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ms %x %08x\0D\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"md %x:%x;b\0D\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"rs %s %x\0D\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rs %s\0D\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\\(\\w+\\) +=\\([0-9a-fA-F]+\\b\\)\00", align 1
@ppcbug_supply_register = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"rd\0D\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"PPC1-Bug>\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@SERIAL_1_STOPBITS = common dso_local global i32 0, align 4
@ppcbug_regnames = common dso_local global i32 0, align 4
@MONITOR_OPS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.monitor_ops*, %struct.target_ops*)* @init_ppc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ppc_cmds(i8* %0, %struct.monitor_ops* %1, %struct.target_ops* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.monitor_ops*, align 8
  %6 = alloca %struct.target_ops*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.monitor_ops* %1, %struct.monitor_ops** %5, align 8
  store %struct.target_ops* %2, %struct.target_ops** %6, align 8
  %7 = load i32, i32* @MO_CLR_BREAK_USES_ADDR, align 4
  %8 = load i32, i32* @MO_HANDLE_NL, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %11 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ppcbug_inits, align 4
  %13 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %14 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %13, i32 0, i32 25
  store i32 %12, i32* %14, align 8
  %15 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %16 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %18 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %20 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %19, i32 0, i32 24
  store i32* null, i32** %20, align 8
  %21 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %22 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %21, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %24 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %23, i32 0, i32 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %26 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %25, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %28 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %27, i32 0, i32 6
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %30 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %29, i32 0, i32 23
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %33 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %32, i32 0, i32 23
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %36 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %35, i32 0, i32 23
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %39 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %38, i32 0, i32 23
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %42 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %41, i32 0, i32 23
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %45 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %44, i32 0, i32 23
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %48 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %47, i32 0, i32 23
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %51 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %50, i32 0, i32 22
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %54 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %53, i32 0, i32 22
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %57 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %56, i32 0, i32 22
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %60 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %59, i32 0, i32 22
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  store i32* null, i32** %61, align 8
  %62 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %63 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %62, i32 0, i32 22
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %66 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %65, i32 0, i32 22
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  store i32* null, i32** %67, align 8
  %68 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %69 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %68, i32 0, i32 22
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  %71 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %72 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %71, i32 0, i32 21
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %73, align 8
  %74 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %75 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %74, i32 0, i32 21
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %78 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %77, i32 0, i32 21
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %81 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %80, i32 0, i32 21
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %84 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %83, i32 0, i32 20
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %85, align 8
  %86 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %87 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %86, i32 0, i32 20
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %90 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %89, i32 0, i32 20
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  %92 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %93 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %92, i32 0, i32 20
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %96 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %95, i32 0, i32 7
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8** %96, align 8
  %97 = load i32, i32* @ppcbug_supply_register, align 4
  %98 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %99 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %98, i32 0, i32 19
  store i32 %97, i32* %99, align 8
  %100 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %101 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %100, i32 0, i32 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %101, align 8
  %102 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %103 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %102, i32 0, i32 18
  store i32* null, i32** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %106 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  %107 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %108 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %107, i32 0, i32 17
  store i32* null, i32** %108, align 8
  %109 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %110 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %109, i32 0, i32 10
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %112 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %111, i32 0, i32 11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %112, align 8
  %113 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %114 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %113, i32 0, i32 16
  store i32* null, i32** %114, align 8
  %115 = load %struct.target_ops*, %struct.target_ops** %6, align 8
  %116 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %117 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %116, i32 0, i32 15
  store %struct.target_ops* %115, %struct.target_ops** %117, align 8
  %118 = load i32, i32* @SERIAL_1_STOPBITS, align 4
  %119 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %120 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @ppcbug_regnames, align 4
  %122 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %123 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %122, i32 0, i32 13
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @MONITOR_OPS_MAGIC, align 4
  %125 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %126 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
