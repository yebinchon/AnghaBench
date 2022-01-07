; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@CSCDR = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAMR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@PBMR = common dso_local global i32 0, align 4
@PCMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dnp_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %38 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %4, %4
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* @CSCDR, align 4
  %22 = call i32 @inb(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @COMEDI_INPUT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %36 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %105

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %105

41:                                               ; preds = %19
  %42 = load i32, i32* %11, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp sle i32 %45, 7
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @PAMR, align 4
  %49 = load i32, i32* @CSCIR, align 4
  %50 = call i32 @outb(i32 %48, i32 %49)
  br label %82

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp sle i32 %55, 15
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 8
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @PBMR, align 4
  %61 = load i32, i32* @CSCIR, align 4
  %62 = call i32 @outb(i32 %60, i32 %61)
  br label %81

63:                                               ; preds = %54, %51
  %64 = load i32, i32* %11, align 4
  %65 = icmp sge i32 %64, 16
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp sle i32 %67, 19
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 16
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %72, 2
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @PCMR, align 4
  %75 = load i32, i32* @CSCIR, align 4
  %76 = call i32 @outb(i32 %74, i32 %75)
  br label %80

77:                                               ; preds = %66, %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %105

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* @CSCDR, align 4
  %84 = call i32 @inb(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @COMEDI_OUTPUT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %101

95:                                               ; preds = %82
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 1, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @CSCDR, align 4
  %104 = call i32 @outb(i32 %102, i32 %103)
  store i32 1, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %77, %38, %31
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
