; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_sendbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_l3.c_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_pins = type { i32, i32 (i32)*, i32, i32 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_pins*, i32)* @sendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendbyte(%struct.l3_pins* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_pins*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.l3_pins* %0, %struct.l3_pins** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %38, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %11 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = call i32 %12(i32 0)
  %14 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %15 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @udelay(i32 %16)
  %18 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %19 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %18, i32 0, i32 3
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 1
  %23 = call i32 %20(i32 %22)
  %24 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %25 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @udelay(i32 %26)
  %28 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %29 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = call i32 %30(i32 1)
  %32 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %33 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @udelay(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = lshr i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %9
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %6

41:                                               ; preds = %6
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
