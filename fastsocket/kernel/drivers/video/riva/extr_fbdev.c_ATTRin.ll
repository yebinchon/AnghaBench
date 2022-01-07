; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_ATTRin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_fbdev.c_ATTRin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.riva_par*, i8)* @ATTRin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ATTRin(%struct.riva_par* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.riva_par*, align 8
  %4 = alloca i8, align 1
  store %struct.riva_par* %0, %struct.riva_par** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %6 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @VGA_WR08(i32 %8, i32 960, i8 zeroext %9)
  %11 = load %struct.riva_par*, %struct.riva_par** %3, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call zeroext i8 @VGA_RD08(i32 %14, i32 961)
  ret i8 %15
}

declare dso_local i32 @VGA_WR08(i32, i32, i8 zeroext) #1

declare dso_local zeroext i8 @VGA_RD08(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
