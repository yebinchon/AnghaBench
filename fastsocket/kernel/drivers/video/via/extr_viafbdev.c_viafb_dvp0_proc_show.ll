; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_dvp0_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_viafb_dvp0_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@VIASR = common dso_local global i32 0, align 4
@SR2A = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@SR1B = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@SR1E = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@CR96 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @viafb_dvp0_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viafb_dvp0_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @VIASR, align 4
  %9 = load i32, i32* @SR2A, align 4
  %10 = call i32 @viafb_read_reg(i32 %8, i32 %9)
  %11 = load i32, i32* @BIT5, align 4
  %12 = and i32 %10, %11
  %13 = ashr i32 %12, 4
  %14 = load i32, i32* @VIASR, align 4
  %15 = load i32, i32* @SR1B, align 4
  %16 = call i32 @viafb_read_reg(i32 %14, i32 %15)
  %17 = load i32, i32* @BIT1, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 1
  %20 = or i32 %13, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @VIASR, align 4
  %22 = load i32, i32* @SR2A, align 4
  %23 = call i32 @viafb_read_reg(i32 %21, i32 %22)
  %24 = load i32, i32* @BIT4, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 3
  %27 = load i32, i32* @VIASR, align 4
  %28 = load i32, i32* @SR1E, align 4
  %29 = call i32 @viafb_read_reg(i32 %27, i32 %28)
  %30 = load i32, i32* @BIT2, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 2
  %33 = or i32 %26, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @VIACR, align 4
  %35 = load i32, i32* @CR96, align 4
  %36 = call i32 @viafb_read_reg(i32 %34, i32 %35)
  %37 = and i32 %36, 15
  store i32 %37, i32* %7, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  ret i32 0
}

declare dso_local i32 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
