; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_queue_and_dump_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_queue_and_dump_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%-4s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_and_dump_index(%struct.TYPE_11__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %50

14:                                               ; preds = %4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_9__* @splay_tree_lookup(i32 %17, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %14
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @queue(%struct.TYPE_11__* %31, i64 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = call i32 @dump_maybe_newline(%struct.TYPE_11__* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 6
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dump_index(%struct.TYPE_11__* %47, i32 %48)
  br label %50

50:                                               ; preds = %35, %13
  ret void
}

declare dso_local %struct.TYPE_9__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @queue(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @dump_maybe_newline(%struct.TYPE_11__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @dump_index(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
