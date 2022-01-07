; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_cursor_append.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_callchain_cursor_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { %struct.callchain_cursor_node**, i32 }
%struct.callchain_cursor_node = type { %struct.callchain_cursor_node*, %struct.symbol*, %struct.map*, i32 }
%struct.map = type { i32 }
%struct.symbol = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @callchain_cursor_append(%struct.callchain_cursor* %0, i32 %1, %struct.map* %2, %struct.symbol* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.callchain_cursor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.callchain_cursor_node*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.map* %2, %struct.map** %8, align 8
  store %struct.symbol* %3, %struct.symbol** %9, align 8
  %11 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %12 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %11, i32 0, i32 0
  %13 = load %struct.callchain_cursor_node**, %struct.callchain_cursor_node*** %12, align 8
  %14 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %13, align 8
  store %struct.callchain_cursor_node* %14, %struct.callchain_cursor_node** %10, align 8
  %15 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %16 = icmp ne %struct.callchain_cursor_node* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = call %struct.callchain_cursor_node* @calloc(i32 32, i32 1)
  store %struct.callchain_cursor_node* %18, %struct.callchain_cursor_node** %10, align 8
  %19 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %20 = icmp ne %struct.callchain_cursor_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %17
  %25 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %26 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %27 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %26, i32 0, i32 0
  %28 = load %struct.callchain_cursor_node**, %struct.callchain_cursor_node*** %27, align 8
  store %struct.callchain_cursor_node* %25, %struct.callchain_cursor_node** %28, align 8
  br label %29

29:                                               ; preds = %24, %4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %32 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.map*, %struct.map** %8, align 8
  %34 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %35 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %34, i32 0, i32 2
  store %struct.map* %33, %struct.map** %35, align 8
  %36 = load %struct.symbol*, %struct.symbol** %9, align 8
  %37 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %38 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %37, i32 0, i32 1
  store %struct.symbol* %36, %struct.symbol** %38, align 8
  %39 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %40 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %10, align 8
  %44 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %43, i32 0, i32 0
  %45 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %46 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %45, i32 0, i32 0
  store %struct.callchain_cursor_node** %44, %struct.callchain_cursor_node*** %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %29, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.callchain_cursor_node* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
