; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_dev_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.atm_dev = type { i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%3d %-8s\00", align 1
@ESI_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.atm_dev*)* @atm_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_dev_info(%struct.seq_file* %0, %struct.atm_dev* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.atm_dev* %1, %struct.atm_dev** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %8 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %11 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ESI_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %36 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @add_stats(%struct.seq_file* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %43 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @add_stats(%struct.seq_file* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %48 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = call i32 @seq_putc(%struct.seq_file* %51, i8 signext 10)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @add_stats(%struct.seq_file*, i8*, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
