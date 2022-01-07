; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ssv_dnp.c_dnp_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PADR = common dso_local global i32 0, align 4
@CSCIR = common dso_local global i32 0, align 4
@CSCDR = common dso_local global i32 0, align 4
@PBDR = common dso_local global i32 0, align 4
@PCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dnp_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnp_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %11 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %110

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %17
  %23 = load i32, i32* @PADR, align 4
  %24 = load i32, i32* @CSCIR, align 4
  %25 = call i32 @outb(i32 %23, i32 %24)
  %26 = load i32, i32* @CSCDR, align 4
  %27 = call i32 @inb(i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = xor i32 %31, -1
  %33 = and i32 %27, %32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = or i32 %33, %37
  %39 = load i32, i32* @CSCDR, align 4
  %40 = call i32 @outb(i32 %38, i32 %39)
  %41 = load i32, i32* @PBDR, align 4
  %42 = load i32, i32* @CSCIR, align 4
  %43 = call i32 @outb(i32 %41, i32 %42)
  %44 = load i32, i32* @CSCDR, align 4
  %45 = call i32 @inb(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65280
  %50 = lshr i32 %49, 8
  %51 = xor i32 %50, -1
  %52 = and i32 %45, %51
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65280
  %57 = lshr i32 %56, 8
  %58 = or i32 %52, %57
  %59 = load i32, i32* @CSCDR, align 4
  %60 = call i32 @outb(i32 %58, i32 %59)
  %61 = load i32, i32* @PCDR, align 4
  %62 = load i32, i32* @CSCIR, align 4
  %63 = call i32 @outb(i32 %61, i32 %62)
  %64 = load i32, i32* @CSCDR, align 4
  %65 = call i32 @inb(i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 983040
  %70 = lshr i32 %69, 12
  %71 = xor i32 %70, -1
  %72 = and i32 %65, %71
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 983040
  %77 = lshr i32 %76, 12
  %78 = or i32 %72, %77
  %79 = load i32, i32* @CSCDR, align 4
  %80 = call i32 @outb(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %22, %17
  %82 = load i32, i32* @PADR, align 4
  %83 = load i32, i32* @CSCIR, align 4
  %84 = call i32 @outb(i32 %82, i32 %83)
  %85 = load i32, i32* @CSCDR, align 4
  %86 = call i32 @inb(i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @PBDR, align 4
  %90 = load i32, i32* @CSCIR, align 4
  %91 = call i32 @outb(i32 %89, i32 %90)
  %92 = load i32, i32* @CSCDR, align 4
  %93 = call i32 @inb(i32 %92)
  %94 = shl i32 %93, 8
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @PCDR, align 4
  %100 = load i32, i32* @CSCIR, align 4
  %101 = call i32 @outb(i32 %99, i32 %100)
  %102 = load i32, i32* @CSCDR, align 4
  %103 = call i32 @inb(i32 %102)
  %104 = and i32 %103, 240
  %105 = shl i32 %104, 12
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, %105
  store i32 %109, i32* %107, align 4
  store i32 2, i32* %5, align 4
  br label %110

110:                                              ; preds = %81, %14
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
