; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_end_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_end_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*)* @rb_end_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_end_commit(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  %4 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %5 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %6 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %5, i32 0, i32 0
  %7 = call i64 @local_read(i32* %6)
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %4, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %49

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %45, %14
  %16 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %16, i32 0, i32 1
  %18 = call i64 @local_read(i32* %17)
  store i64 %18, i64* %3, align 8
  %19 = call i32 (...) @barrier()
  %20 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %21 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %20, i32 0, i32 0
  %22 = call i64 @local_read(i32* %21)
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %26 = call i32 @rb_set_commit_to_write(%struct.ring_buffer_per_cpu* %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %28, i32 0, i32 0
  %30 = call i32 @local_dec(i32* %29)
  %31 = call i32 (...) @barrier()
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 1
  %34 = call i64 @local_read(i32* %33)
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 0
  %43 = call i64 @local_read(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %46, i32 0, i32 0
  %48 = call i32 @local_inc(i32* %47)
  br label %15

49:                                               ; preds = %13, %40, %27
  ret void
}

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @rb_set_commit_to_write(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @local_dec(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
