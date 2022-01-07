; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_l3_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_l3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_pins = type { i32 (i32)*, i32 (i32)*, i32 (i32)*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l3_write(%struct.l3_pins* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.l3_pins*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.l3_pins* %0, %struct.l3_pins** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %10 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %9, i32 0, i32 2
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = call i32 %11(i32 1)
  %13 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %14 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = call i32 %15(i32 1)
  %17 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %18 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = call i32 %19(i32 1)
  %21 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %22 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @udelay(i32 %23)
  %25 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %26 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = call i32 %27(i32 0)
  %29 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %30 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @udelay(i32 %31)
  %33 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @sendbyte(%struct.l3_pins* %33, i32 %34)
  %36 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %37 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @udelay(i32 %38)
  %40 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @sendbytes(%struct.l3_pins* %40, i32* %41, i32 %42)
  %44 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %45 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %44, i32 0, i32 2
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = call i32 %46(i32 1)
  %48 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %49 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %48, i32 0, i32 1
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = call i32 %50(i32 1)
  %52 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %53 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %52, i32 0, i32 0
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = call i32 %54(i32 0)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sendbyte(%struct.l3_pins*, i32) #1

declare dso_local i32 @sendbytes(%struct.l3_pins*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
