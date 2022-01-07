; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_set_color.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_set_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm3_par = type { i32 }

@PM3RD_PaletteWriteAddress = common dso_local global i32 0, align 4
@PM3RD_PaletteData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm3_par*, i8, i8, i8, i8)* @pm3fb_set_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_set_color(%struct.pm3_par* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.pm3_par*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.pm3_par* %0, %struct.pm3_par** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %11 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %12 = call i32 @PM3_WAIT(%struct.pm3_par* %11, i32 4)
  %13 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %14 = load i32, i32* @PM3RD_PaletteWriteAddress, align 4
  %15 = load i8, i8* %7, align 1
  %16 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %13, i32 %14, i8 zeroext %15)
  %17 = call i32 (...) @wmb()
  %18 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %19 = load i32, i32* @PM3RD_PaletteData, align 4
  %20 = load i8, i8* %8, align 1
  %21 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %18, i32 %19, i8 zeroext %20)
  %22 = call i32 (...) @wmb()
  %23 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %24 = load i32, i32* @PM3RD_PaletteData, align 4
  %25 = load i8, i8* %9, align 1
  %26 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %23, i32 %24, i8 zeroext %25)
  %27 = call i32 (...) @wmb()
  %28 = load %struct.pm3_par*, %struct.pm3_par** %6, align 8
  %29 = load i32, i32* @PM3RD_PaletteData, align 4
  %30 = load i8, i8* %10, align 1
  %31 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %28, i32 %29, i8 zeroext %30)
  %32 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i8 zeroext) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
