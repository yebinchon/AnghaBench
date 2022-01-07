; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_lcdc_sys_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_lcdc_sys_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i32 }

@_LDDRDR = common dso_local global i32 0, align 4
@_LDSR = common dso_local global i32 0, align 4
@_LDDRAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @lcdc_sys_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcdc_sys_read_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sh_mobile_lcdc_chan*
  store %struct.sh_mobile_lcdc_chan* %5, %struct.sh_mobile_lcdc_chan** %3, align 8
  %6 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @_LDDRDR, align 4
  %10 = call i32 @lcdc_write(i32 %8, i32 %9, i32 16777216)
  %11 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @_LDSR, align 4
  %15 = call i32 @lcdc_wait_bit(i32 %13, i32 %14, i32 2, i32 0)
  %16 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @_LDDRAR, align 4
  %20 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %21 = call i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 0
  %25 = or i32 1, %24
  %26 = call i32 @lcdc_write(i32 %18, i32 %19, i32 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @_LDSR, align 4
  %32 = call i32 @lcdc_wait_bit(i32 %30, i32 %31, i32 2, i32 0)
  %33 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %3, align 8
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @_LDDRDR, align 4
  %37 = call i32 @lcdc_read(i32 %35, i32 %36)
  %38 = and i32 %37, 262143
  %39 = sext i32 %38 to i64
  ret i64 %39
}

declare dso_local i32 @lcdc_write(i32, i32, i32) #1

declare dso_local i32 @lcdc_wait_bit(i32, i32, i32, i32) #1

declare dso_local i64 @lcdc_chan_is_sublcd(%struct.sh_mobile_lcdc_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lcdc_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
