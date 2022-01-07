; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_iter_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_iter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { %struct.TYPE_4__*, i32, i32, %struct.ring_buffer_per_cpu* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ring_buffer_per_cpu = type { i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_iter*)* @rb_iter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_iter_reset(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %4 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %4, i32 0, i32 3
  %6 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.ring_buffer_per_cpu* %6, %struct.ring_buffer_per_cpu** %3, align 8
  %7 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %15 = call %struct.TYPE_4__* @rb_set_head_page(%struct.ring_buffer_per_cpu* %14)
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %17 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %16, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %69

27:                                               ; preds = %13
  %28 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %34 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %48

35:                                               ; preds = %1
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %40 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %27
  %49 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %50 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %58 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %69

59:                                               ; preds = %48
  %60 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %61 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %68 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %26, %59, %53
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @rb_set_head_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
