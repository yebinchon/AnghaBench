; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_get_reader_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_get_reader_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_page = type { i64, %struct.TYPE_6__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.ring_buffer_per_cpu = type { i32, %struct.buffer_page*, i32, i32, %struct.buffer_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_page* (%struct.ring_buffer_per_cpu*)* @rb_get_reader_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca %struct.buffer_page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %10 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %9, i32 0, i32 0
  %11 = call i32 @__raw_spin_lock(i32* %10)
  br label %12

12:                                               ; preds = %116, %1
  %13 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = icmp sgt i32 %15, 3
  %17 = zext i1 %16 to i32
  %18 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %13, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  br label %135

21:                                               ; preds = %12
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %22, i32 0, i32 1
  %24 = load %struct.buffer_page*, %struct.buffer_page** %23, align 8
  store %struct.buffer_page* %24, %struct.buffer_page** %3, align 8
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 1
  %27 = load %struct.buffer_page*, %struct.buffer_page** %26, align 8
  %28 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %31 = call i64 @rb_page_size(%struct.buffer_page* %30)
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %135

34:                                               ; preds = %21
  %35 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %36, i32 0, i32 1
  %38 = load %struct.buffer_page*, %struct.buffer_page** %37, align 8
  %39 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %42 = call i64 @rb_page_size(%struct.buffer_page* %41)
  %43 = icmp sgt i64 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %35, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %135

48:                                               ; preds = %34
  store %struct.buffer_page* null, %struct.buffer_page** %3, align 8
  %49 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %50 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %49, i32 0, i32 4
  %51 = load %struct.buffer_page*, %struct.buffer_page** %50, align 8
  %52 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %52, i32 0, i32 1
  %54 = load %struct.buffer_page*, %struct.buffer_page** %53, align 8
  %55 = icmp eq %struct.buffer_page* %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %135

57:                                               ; preds = %48
  %58 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %59 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %58, i32 0, i32 1
  %60 = load %struct.buffer_page*, %struct.buffer_page** %59, align 8
  %61 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %60, i32 0, i32 4
  %62 = call i32 @local_set(i32* %61, i32 0)
  %63 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %64 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %63, i32 0, i32 1
  %65 = load %struct.buffer_page*, %struct.buffer_page** %64, align 8
  %66 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %65, i32 0, i32 3
  %67 = call i32 @local_set(i32* %66, i32 0)
  %68 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %69 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %68, i32 0, i32 1
  %70 = load %struct.buffer_page*, %struct.buffer_page** %69, align 8
  %71 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @local_set(i32* %73, i32 0)
  br label %75

75:                                               ; preds = %115, %57
  %76 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %77 = call %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu* %76)
  store %struct.buffer_page* %77, %struct.buffer_page** %3, align 8
  %78 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %79 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %83 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %82, i32 0, i32 1
  %84 = load %struct.buffer_page*, %struct.buffer_page** %83, align 8
  %85 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %86, align 8
  %87 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %88 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %92 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %91, i32 0, i32 1
  %93 = load %struct.buffer_page*, %struct.buffer_page** %92, align 8
  %94 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 8
  %96 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %97 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %101 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %103 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %104 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %103, i32 0, i32 1
  %105 = load %struct.buffer_page*, %struct.buffer_page** %104, align 8
  %106 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %105, i32 0, i32 1
  %107 = call i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu* %102, %struct.TYPE_6__* %106)
  %108 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %109 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %110 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %109, i32 0, i32 1
  %111 = load %struct.buffer_page*, %struct.buffer_page** %110, align 8
  %112 = call i32 @rb_head_page_replace(%struct.buffer_page* %108, %struct.buffer_page* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %75
  br label %75

116:                                              ; preds = %75
  %117 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %118 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %117, i32 0, i32 1
  %119 = load %struct.buffer_page*, %struct.buffer_page** %118, align 8
  %120 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %119, i32 0, i32 1
  %121 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %122 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store %struct.TYPE_6__* %120, %struct.TYPE_6__** %125, align 8
  %126 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %127 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %128 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %127, i32 0, i32 2
  %129 = call i32 @rb_inc_page(%struct.ring_buffer_per_cpu* %126, i32* %128)
  %130 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %131 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %132 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %131, i32 0, i32 1
  store %struct.buffer_page* %130, %struct.buffer_page** %132, align 8
  %133 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %134 = call i32 @rb_reset_reader_page(%struct.ring_buffer_per_cpu* %133)
  br label %12

135:                                              ; preds = %56, %47, %33, %20
  %136 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %137 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %136, i32 0, i32 0
  %138 = call i32 @__raw_spin_unlock(i32* %137)
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @local_irq_restore(i64 %139)
  %141 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  ret %struct.buffer_page* %141
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_page_size(%struct.buffer_page*) #1

declare dso_local i32 @local_set(i32*, i32) #1

declare dso_local %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu*, %struct.TYPE_6__*) #1

declare dso_local i32 @rb_head_page_replace(%struct.buffer_page*, %struct.buffer_page*) #1

declare dso_local i32 @rb_inc_page(%struct.ring_buffer_per_cpu*, i32*) #1

declare dso_local i32 @rb_reset_reader_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
