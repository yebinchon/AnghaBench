; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_i_setbit16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_i_setbit16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hal2 = type { %struct.hal2_ctl_regs* }
%struct.hal2_ctl_regs = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_hal2*, i32, i32)* @hal2_i_setbit16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal2_i_setbit16(%struct.snd_hal2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_hal2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal2_ctl_regs*, align 8
  store %struct.snd_hal2* %0, %struct.snd_hal2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_hal2*, %struct.snd_hal2** %4, align 8
  %9 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %8, i32 0, i32 0
  %10 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %9, align 8
  store %struct.hal2_ctl_regs* %10, %struct.hal2_ctl_regs** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @H2_READ_ADDR(i32 %11)
  %13 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %14 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %13, i32 0, i32 0
  %15 = call i32 @hal2_write(i32 %12, i32* %14)
  %16 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %17 = call i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs* %16)
  %18 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %19 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %18, i32 0, i32 4
  %20 = call i32 @hal2_read(i32* %19)
  %21 = and i32 %20, 65535
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %25 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %24, i32 0, i32 4
  %26 = call i32 @hal2_write(i32 %23, i32* %25)
  %27 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %28 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %27, i32 0, i32 3
  %29 = call i32 @hal2_write(i32 0, i32* %28)
  %30 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %31 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %30, i32 0, i32 2
  %32 = call i32 @hal2_write(i32 0, i32* %31)
  %33 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %34 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %33, i32 0, i32 1
  %35 = call i32 @hal2_write(i32 0, i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @H2_WRITE_ADDR(i32 %36)
  %38 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %39 = getelementptr inbounds %struct.hal2_ctl_regs, %struct.hal2_ctl_regs* %38, i32 0, i32 0
  %40 = call i32 @hal2_write(i32 %37, i32* %39)
  %41 = load %struct.hal2_ctl_regs*, %struct.hal2_ctl_regs** %7, align 8
  %42 = call i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs* %41)
  ret void
}

declare dso_local i32 @hal2_write(i32, i32*) #1

declare dso_local i32 @H2_READ_ADDR(i32) #1

declare dso_local i32 @H2_INDIRECT_WAIT(%struct.hal2_ctl_regs*) #1

declare dso_local i32 @hal2_read(i32*) #1

declare dso_local i32 @H2_WRITE_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
