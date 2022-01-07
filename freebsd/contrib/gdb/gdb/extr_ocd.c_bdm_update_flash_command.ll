; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_bdm_update_flash_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_bdm_update_flash_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i32)* }
%struct.cleanup = type { i32 }

@ocd_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not connected to OCD device.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Must specify file containing new OCD code.\00", align 1
@OCD_ENTER_MON = common dso_local global i32 0, align 4
@OCD_ERASE_FLASH = common dso_local global i32 0, align 4
@OCD_PROGRAM_FLASH = common dso_local global i32 0, align 4
@write_mem_command = common dso_local global i32 0, align 4
@current_target = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OCD_WRITE_MEM = common dso_local global i32 0, align 4
@OCD_EXIT_MON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bdm_update_flash_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdm_update_flash_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca void (i32)*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ocd_desc, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @OCD_ENTER_MON, align 4
  %20 = call i32 @ocd_do_command(i32 %19, i32* %5, i32* %6)
  %21 = load i32, i32* @OCD_ERASE_FLASH, align 4
  %22 = call i32 @ocd_do_command(i32 %21, i32* %5, i32* %6)
  %23 = load i32, i32* @OCD_PROGRAM_FLASH, align 4
  store i32 %23, i32* @write_mem_command, align 4
  %24 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 0), align 8
  store void (i32)* %24, void (i32)** %8, align 8
  store void (i32)* @noop_store_registers, void (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 0), align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @generic_load(i8* %25, i32 %26)
  %28 = load void (i32)*, void (i32)** %8, align 8
  store void (i32)* %28, void (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_target, i32 0, i32 0), align 8
  %29 = load i32, i32* @OCD_WRITE_MEM, align 4
  store i32 %29, i32* @write_mem_command, align 4
  %30 = load i32, i32* @OCD_EXIT_MON, align 4
  %31 = call i32 @ocd_do_command(i32 %30, i32* %5, i32* %6)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ocd_do_command(i32, i32*, i32*) #1

declare dso_local void @noop_store_registers(i32) #1

declare dso_local i32 @generic_load(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
