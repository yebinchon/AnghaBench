; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_fill_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_callchain.c_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_node = type { i32, i64 }
%struct.callchain_cursor = type { i64, i64 }
%struct.callchain_cursor_node = type { i32, i32, i32 }
%struct.callchain_list = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Warning: empty node in callchain tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"not enough memory for the code path tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callchain_node*, %struct.callchain_cursor*)* @fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_node(%struct.callchain_node* %0, %struct.callchain_cursor* %1) #0 {
  %3 = alloca %struct.callchain_node*, align 8
  %4 = alloca %struct.callchain_cursor*, align 8
  %5 = alloca %struct.callchain_cursor_node*, align 8
  %6 = alloca %struct.callchain_list*, align 8
  store %struct.callchain_node* %0, %struct.callchain_node** %3, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %4, align 8
  %7 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %8 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %11 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.callchain_node*, %struct.callchain_node** %3, align 8
  %15 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.callchain_node*, %struct.callchain_node** %3, align 8
  %17 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %24 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %23)
  store %struct.callchain_cursor_node* %24, %struct.callchain_cursor_node** %5, align 8
  br label %25

25:                                               ; preds = %34, %22
  %26 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %5, align 8
  %27 = icmp ne %struct.callchain_cursor_node* %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = call %struct.callchain_list* @zalloc(i32 16)
  store %struct.callchain_list* %29, %struct.callchain_list** %6, align 8
  %30 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %31 = icmp ne %struct.callchain_list* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %61

34:                                               ; preds = %28
  %35 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %5, align 8
  %36 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %39 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %5, align 8
  %41 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %44 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %5, align 8
  %47 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %50 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.callchain_list*, %struct.callchain_list** %6, align 8
  %53 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %52, i32 0, i32 0
  %54 = load %struct.callchain_node*, %struct.callchain_node** %3, align 8
  %55 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %58 = call i32 @callchain_cursor_advance(%struct.callchain_cursor* %57)
  %59 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %60 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %59)
  store %struct.callchain_cursor_node* %60, %struct.callchain_cursor_node** %5, align 8
  br label %25

61:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor*) #1

declare dso_local %struct.callchain_list* @zalloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @callchain_cursor_advance(%struct.callchain_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
