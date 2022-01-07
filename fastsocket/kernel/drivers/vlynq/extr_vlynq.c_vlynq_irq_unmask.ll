; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@VINT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vlynq_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlynq_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlynq_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.vlynq_device* @get_irq_chip_data(i32 %6)
  store %struct.vlynq_device* %7, %struct.vlynq_device** %4, align 8
  %8 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %9 = icmp ne %struct.vlynq_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %15 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %19 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call i32 @readl(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @VINT_ENABLE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VINT_OFFSET(i32 %31)
  %33 = shl i32 %30, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.vlynq_device*, %struct.vlynq_device** %4, align 8
  %38 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = call i32 @writel(i32 %36, i32* %45)
  ret void
}

declare dso_local %struct.vlynq_device* @get_irq_chip_data(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @VINT_OFFSET(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
