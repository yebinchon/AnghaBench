; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_mem_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_mem_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.proto* }
%struct.proto = type { i64*, i64*, i32 }

@SK_MEM_QUANTUM_SHIFT = common dso_local global i32 0, align 4
@SK_MEM_QUANTUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sk_mem_reclaim(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.proto*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 1
  %6 = load %struct.proto*, %struct.proto** %5, align 8
  store %struct.proto* %6, %struct.proto** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SK_MEM_QUANTUM_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = load %struct.proto*, %struct.proto** %3, align 8
  %13 = getelementptr inbounds %struct.proto, %struct.proto* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @atomic_sub(i32 %11, i32 %14)
  %16 = load i32, i32* @SK_MEM_QUANTUM, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.proto*, %struct.proto** %3, align 8
  %23 = getelementptr inbounds %struct.proto, %struct.proto* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %1
  %27 = load %struct.proto*, %struct.proto** %3, align 8
  %28 = getelementptr inbounds %struct.proto, %struct.proto* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.proto*, %struct.proto** %3, align 8
  %34 = getelementptr inbounds %struct.proto, %struct.proto* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @atomic_read(i32 %35)
  %37 = load %struct.proto*, %struct.proto** %3, align 8
  %38 = getelementptr inbounds %struct.proto, %struct.proto* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %36, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.proto*, %struct.proto** %3, align 8
  %45 = getelementptr inbounds %struct.proto, %struct.proto* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %32, %26, %1
  ret void
}

declare dso_local i32 @atomic_sub(i32, i32) #1

declare dso_local i64 @atomic_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
