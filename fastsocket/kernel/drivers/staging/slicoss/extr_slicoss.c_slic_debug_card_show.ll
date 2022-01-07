; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_debug_card_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_debug_card_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.sliccard* }
%struct.sliccard = type { i32, i32, i32, i32, %struct.adapter**, i32, i32, i32, %struct.slic_config }
%struct.adapter = type { i64, i32, i32, i32, i32, i32 }
%struct.slic_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"driver_version           : %s\0A\00", align 1
@slic_proc_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Microcode versions:           \0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"    Gigabit (gb)         : %s %s\0A\00", align 1
@MOJAVE_UCODE_VERS_STRING = common dso_local global i32 0, align 4
@MOJAVE_UCODE_VERS_DATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"    Gigabit Receiver     : %s %s\0A\00", align 1
@GB_RCVUCODE_VERS_STRING = common dso_local global i32 0, align 4
@GB_RCVUCODE_VERS_DATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Vendor                   : %s\0A\00", align 1
@slic_vendor = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Product Name             : %s\0A\00", align 1
@slic_product_name = common dso_local global i32 0, align 4
@SLIC_NBR_MACS = common dso_local global i32 0, align 4
@SLIC_RCVQ_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @slic_debug_card_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_debug_card_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load i32, i32* @slic_proc_version, align 4
  %7 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load i32, i32* @MOJAVE_UCODE_VERS_STRING, align 4
  %12 = load i32, i32* @MOJAVE_UCODE_VERS_DATE, align 4
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load i32, i32* @GB_RCVUCODE_VERS_STRING, align 4
  %16 = load i32, i32* @GB_RCVUCODE_VERS_DATE, align 4
  %17 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* @slic_vendor, align 4
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load i32, i32* @slic_product_name, align 4
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
