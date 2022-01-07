; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_handle.c___do_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_handle.c___do_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.irqaction = type { i32 }

@IRQ_DISABLED = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4
@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__do_IRQ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.irq_desc* @irq_to_desc(i32 %9)
  store %struct.irq_desc* %10, %struct.irq_desc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %13 = call i32 @kstat_incr_irqs_this_cpu(i32 %11, %struct.irq_desc* %12)
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @CHECK_IRQ_PER_CPU(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %1
  %20 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 %31(i32 %32)
  br label %34

34:                                               ; preds = %26, %19
  %35 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IRQ_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %48 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %47, i32 0, i32 3
  %49 = load %struct.irqaction*, %struct.irqaction** %48, align 8
  %50 = call i32 @handle_IRQ_event(i32 %46, %struct.irqaction* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @noirqdebug, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @note_interrupt(i32 %54, %struct.irq_desc* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 %64(i32 %65)
  store i32 1, i32* %2, align 4
  br label %184

67:                                               ; preds = %1
  %68 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 1
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (i32)*, i32 (i32)** %74, align 8
  %76 = icmp ne i32 (i32)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 %82(i32 %83)
  br label %85

85:                                               ; preds = %77, %67
  %86 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %87 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IRQ_REPLAY, align 4
  %90 = load i32, i32* @IRQ_WAITING, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %88, %92
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @IRQ_PENDING, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  store %struct.irqaction* null, %struct.irqaction** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @IRQ_DISABLED, align 4
  %99 = load i32, i32* @IRQ_INPROGRESS, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %85
  %108 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %109 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %108, i32 0, i32 3
  %110 = load %struct.irqaction*, %struct.irqaction** %109, align 8
  store %struct.irqaction* %110, %struct.irqaction** %5, align 8
  %111 = load i32, i32* @IRQ_PENDING, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* @IRQ_INPROGRESS, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %107, %85
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %121 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %123 = icmp ne %struct.irqaction* %122, null
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %173

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %159, %129
  %131 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %132 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %131, i32 0, i32 1
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %136 = call i32 @handle_IRQ_event(i32 %134, %struct.irqaction* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* @noirqdebug, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %3, align 4
  %141 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @note_interrupt(i32 %140, %struct.irq_desc* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %130
  %145 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %146 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %145, i32 0, i32 1
  %147 = call i32 @spin_lock(i32* %146)
  %148 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %149 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IRQ_PENDING, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @likely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %144
  br label %166

159:                                              ; preds = %144
  %160 = load i32, i32* @IRQ_PENDING, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %163 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %130

166:                                              ; preds = %158
  %167 = load i32, i32* @IRQ_INPROGRESS, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %170 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %166, %128
  %174 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %175 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %174, i32 0, i32 2
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32 (i32)*, i32 (i32)** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = call i32 %178(i32 %179)
  %181 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %182 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  store i32 1, i32* %2, align 4
  br label %184

184:                                              ; preds = %173, %59
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i64 @CHECK_IRQ_PER_CPU(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @handle_IRQ_event(i32, %struct.irqaction*) #1

declare dso_local i32 @note_interrupt(i32, %struct.irq_desc*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
