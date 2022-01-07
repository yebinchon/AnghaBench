; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_info = type { i32, i32, %struct.TYPE_3__*, i64, i32, i64, i64, i64, i32* }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@splay_tree_compare_pointers = common dso_local global i32 0, align 4
@DUMP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_node(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dump_info, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 8
  store i32* %10, i32** %11, align 8
  %12 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @splay_tree_compare_pointers, align 4
  %22 = call i32 @splay_tree_new(i32 %21, i32 0, i32 ptrtoint (i32 (%struct.TYPE_3__*)* @free to i32))
  %23 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DUMP_NONE, align 4
  %26 = call i32 @queue(%struct.dump_info* %7, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %31, %3
  %28 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @dequeue_and_dump(%struct.dump_info* %7)
  br label %27

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %8, align 8
  br label %36

36:                                               ; preds = %45, %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = call i32 @free(%struct.TYPE_3__* %43)
  br label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %8, align 8
  br label %36

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.dump_info, %struct.dump_info* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @splay_tree_delete(i32 %49)
  ret void
}

declare dso_local i32 @splay_tree_new(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

declare dso_local i32 @queue(%struct.dump_info*, i32, i32) #1

declare dso_local i32 @dequeue_and_dump(%struct.dump_info*) #1

declare dso_local i32 @splay_tree_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
