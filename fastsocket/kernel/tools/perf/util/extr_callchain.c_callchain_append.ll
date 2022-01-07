; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_root = type { i64, i32 }
%struct.callchain_cursor = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_append(%struct.callchain_root* %0, %struct.callchain_cursor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.callchain_root*, align 8
  %6 = alloca %struct.callchain_cursor*, align 8
  %7 = alloca i32, align 4
  store %struct.callchain_root* %0, %struct.callchain_root** %5, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %9 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %15 = call i32 @callchain_cursor_commit(%struct.callchain_cursor* %14)
  %16 = load %struct.callchain_root*, %struct.callchain_root** %5, align 8
  %17 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %16, i32 0, i32 1
  %18 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @append_chain_children(i32* %17, %struct.callchain_cursor* %18, i32 %19)
  %21 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %22 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.callchain_root*, %struct.callchain_root** %5, align 8
  %25 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %30 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.callchain_root*, %struct.callchain_root** %5, align 8
  %33 = getelementptr inbounds %struct.callchain_root, %struct.callchain_root* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %13
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @callchain_cursor_commit(%struct.callchain_cursor*) #1

declare dso_local i32 @append_chain_children(i32*, %struct.callchain_cursor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
