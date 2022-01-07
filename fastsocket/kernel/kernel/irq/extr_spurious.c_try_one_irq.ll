; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_spurious.c_try_one_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_spurious.c_try_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.irqaction = type { i32, i64 (i32, i32)*, %struct.irqaction*, i32 }

@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irq_desc*)* @try_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_one_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca %struct.irqaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IRQ_INPROGRESS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 3
  %21 = load %struct.irqaction*, %struct.irqaction** %20, align 8
  %22 = icmp ne %struct.irqaction* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 3
  %26 = load %struct.irqaction*, %struct.irqaction** %25, align 8
  %27 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IRQF_SHARED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i32, i32* @IRQ_PENDING, align 4
  %34 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %23, %18
  %39 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %152

43:                                               ; preds = %2
  %44 = load i32, i32* @IRQ_INPROGRESS, align 4
  %45 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 3
  %51 = load %struct.irqaction*, %struct.irqaction** %50, align 8
  store %struct.irqaction* %51, %struct.irqaction** %6, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  br label %55

55:                                               ; preds = %78, %43
  %56 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %57 = icmp ne %struct.irqaction* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %60 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %67 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %66, i32 0, i32 1
  %68 = load i64 (i32, i32)*, i64 (i32, i32)** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %71 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 %68(i32 %69, i32 %72)
  %74 = load i64, i64* @IRQ_HANDLED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %80 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %79, i32 0, i32 2
  %81 = load %struct.irqaction*, %struct.irqaction** %80, align 8
  store %struct.irqaction* %81, %struct.irqaction** %6, align 8
  br label %55

82:                                               ; preds = %55
  %83 = call i32 (...) @local_irq_disable()
  %84 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %85 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %84, i32 0, i32 1
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %88 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %87, i32 0, i32 3
  %89 = load %struct.irqaction*, %struct.irqaction** %88, align 8
  store %struct.irqaction* %89, %struct.irqaction** %6, align 8
  br label %90

90:                                               ; preds = %102, %82
  %91 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %92 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IRQ_PENDING, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %99 = icmp ne %struct.irqaction* %98, null
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi i1 [ false, %90 ], [ %99, %97 ]
  br i1 %101, label %102, label %118

102:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  %103 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %104 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %108 = call i32 @handle_IRQ_event(i32 %106, %struct.irqaction* %107)
  %109 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %110 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %109, i32 0, i32 1
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load i32, i32* @IRQ_PENDING, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %115 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %90

118:                                              ; preds = %100
  %119 = load i32, i32* @IRQ_INPROGRESS, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %122 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %118
  %128 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %129 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = icmp ne %struct.TYPE_2__* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %134 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (i32)*, i32 (i32)** %136, align 8
  %138 = icmp ne i32 (i32)* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %141 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32 (i32)*, i32 (i32)** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 %144(i32 %145)
  br label %147

147:                                              ; preds = %139, %132, %127, %118
  %148 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %149 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %147, %38
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @handle_IRQ_event(i32, %struct.irqaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
