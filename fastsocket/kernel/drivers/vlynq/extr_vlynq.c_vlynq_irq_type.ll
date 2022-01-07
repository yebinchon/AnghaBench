; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vlynq/extr_vlynq.c_vlynq_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@VINT_TYPE_EDGE = common dso_local global i32 0, align 4
@VINT_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vlynq_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlynq_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlynq_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vlynq_device* @get_irq_chip_data(i32 %9)
  store %struct.vlynq_device* %10, %struct.vlynq_device** %7, align 8
  %11 = load %struct.vlynq_device*, %struct.vlynq_device** %7, align 8
  %12 = icmp ne %struct.vlynq_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.vlynq_device*, %struct.vlynq_device** %7, align 8
  %18 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.vlynq_device*, %struct.vlynq_device** %7, align 8
  %22 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @readl(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %77 [
    i32 130, label %34
    i32 131, label %34
    i32 132, label %34
    i32 129, label %48
    i32 128, label %63
  ]

34:                                               ; preds = %2, %2, %2
  %35 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @VINT_OFFSET(i32 %36)
  %38 = shl i32 %35, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @VINT_OFFSET(i32 %42)
  %44 = shl i32 %41, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %80

48:                                               ; preds = %2
  %49 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @VINT_OFFSET(i32 %50)
  %52 = shl i32 %49, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @VINT_OFFSET(i32 %57)
  %59 = shl i32 %56, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %80

63:                                               ; preds = %2
  %64 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @VINT_OFFSET(i32 %65)
  %67 = shl i32 %64, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @VINT_OFFSET(i32 %72)
  %74 = shl i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %80

77:                                               ; preds = %2
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %63, %48, %34
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.vlynq_device*, %struct.vlynq_device** %7, align 8
  %83 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @writel(i32 %81, i32* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %77
  %93 = load i32, i32* %3, align 4
  ret i32 %93
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
