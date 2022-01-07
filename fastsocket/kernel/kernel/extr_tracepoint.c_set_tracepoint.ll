; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_set_tracepoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tracepoint.c_set_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_entry = type { i32, i32 }
%struct.tracepoint = type { i32, i32, i32 (...)*, i32 (...)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint_entry**, %struct.tracepoint*, i32)* @set_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tracepoint(%struct.tracepoint_entry** %0, %struct.tracepoint* %1, i32 %2) #0 {
  %4 = alloca %struct.tracepoint_entry**, align 8
  %5 = alloca %struct.tracepoint*, align 8
  %6 = alloca i32, align 4
  store %struct.tracepoint_entry** %0, %struct.tracepoint_entry*** %4, align 8
  store %struct.tracepoint* %1, %struct.tracepoint** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tracepoint_entry**, %struct.tracepoint_entry*** %4, align 8
  %8 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %7, align 8
  %9 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %12 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %19 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %18, i32 0, i32 3
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = icmp ne i32 (...)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %24 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %32 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %31, i32 0, i32 3
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  br label %54

35:                                               ; preds = %27, %22, %3
  %36 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %37 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %36, i32 0, i32 2
  %38 = load i32 (...)*, i32 (...)** %37, align 8
  %39 = icmp ne i32 (...)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %42 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %50 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %49, i32 0, i32 2
  %51 = load i32 (...)*, i32 (...)** %50, align 8
  %52 = call i32 (...) %51()
  br label %53

53:                                               ; preds = %48, %45, %40, %35
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %56 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tracepoint_entry**, %struct.tracepoint_entry*** %4, align 8
  %59 = load %struct.tracepoint_entry*, %struct.tracepoint_entry** %58, align 8
  %60 = getelementptr inbounds %struct.tracepoint_entry, %struct.tracepoint_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rcu_assign_pointer(i32 %57, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.tracepoint*, %struct.tracepoint** %5, align 8
  %65 = getelementptr inbounds %struct.tracepoint, %struct.tracepoint* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
