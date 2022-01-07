; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_sossi_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_sossi.c_sossi_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@sossi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RD_ACCESS = common dso_local global i32 0, align 4
@SOSSI_INIT1_REG = common dso_local global i32 0, align 4
@SOSSI_FIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sossi_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sossi_read_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 4
  %6 = call i32 @clk_enable(i32 %5)
  %7 = load i32, i32* @RD_ACCESS, align 4
  %8 = call i32 @set_timing(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 1), align 4
  %11 = call i32 @_set_bits_per_cycle(i32 %9, i32 %10)
  %12 = load i32, i32* @SOSSI_INIT1_REG, align 4
  %13 = call i32 @sossi_set_bits(i32 %12, i32 262144)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @set_cycles(i32 %14)
  %16 = call i32 (...) @sossi_start_transfer()
  br label %17

17:                                               ; preds = %20, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 4
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %22 = call i32 @sossi_read_reg(i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, 4
  store i32 %26, i32* %4, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr i8, i8* %27, i64 4
  store i8* %28, i8** %3, align 8
  br label %17

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp uge i32 %31, 2
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %35 = call i32 @sossi_read_reg16(i32 %34)
  %36 = load i8*, i8** %3, align 8
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub i32 %38, 2
  store i32 %39, i32* %4, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr i8, i8* %40, i64 2
  store i8* %41, i8** %3, align 8
  br label %30

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @SOSSI_FIFO_REG, align 4
  %48 = call i32 @sossi_read_reg8(i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = bitcast i8* %49 to i32*
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  br label %43

55:                                               ; preds = %43
  %56 = call i32 (...) @sossi_stop_transfer()
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sossi, i32 0, i32 0), align 4
  %58 = call i32 @clk_disable(i32 %57)
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @set_timing(i32) #1

declare dso_local i32 @_set_bits_per_cycle(i32, i32) #1

declare dso_local i32 @sossi_set_bits(i32, i32) #1

declare dso_local i32 @set_cycles(i32) #1

declare dso_local i32 @sossi_start_transfer(...) #1

declare dso_local i32 @sossi_read_reg(i32) #1

declare dso_local i32 @sossi_read_reg16(i32) #1

declare dso_local i32 @sossi_read_reg8(i32) #1

declare dso_local i32 @sossi_stop_transfer(...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
