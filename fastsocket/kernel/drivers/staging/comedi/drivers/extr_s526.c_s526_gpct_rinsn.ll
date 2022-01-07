; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"s526: INSN_READ: n should be > 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_C0L = common dso_local global i32 0, align 4
@REG_C0H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_gpct_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_gpct_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  %34 = load i32, i32* @REG_C0L, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ADDR_CHAN_REG(i32 %34, i32 %35)
  %37 = call zeroext i16 @inw(i32 %36)
  store i16 %37, i16* %12, align 2
  %38 = load i32, i32* @REG_C0H, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ADDR_CHAN_REG(i32 %38, i32 %39)
  %41 = call zeroext i16 @inw(i32 %40)
  store i16 %41, i16* %13, align 2
  %42 = load i16, i16* %13, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load i16, i16* %12, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 65535
  %58 = or i32 %54, %57
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %33
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %27

66:                                               ; preds = %27
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local zeroext i16 @inw(i32) #1

declare dso_local i32 @ADDR_CHAN_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
