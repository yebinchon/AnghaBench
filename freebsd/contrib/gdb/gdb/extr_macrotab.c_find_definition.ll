; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_find_definition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_find_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.macro_source_file = type { %struct.macro_table* }
%struct.macro_table = type { i32 }
%struct.macro_key = type { i8*, i32, i32, i32*, %struct.macro_source_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, %struct.macro_source_file*, i32)* @find_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_definition(i8* %0, %struct.macro_source_file* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.macro_source_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.macro_table*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.macro_key, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.macro_key*, align 8
  %13 = alloca %struct.macro_key*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.macro_source_file* %1, %struct.macro_source_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %15 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %14, i32 0, i32 0
  %16 = load %struct.macro_table*, %struct.macro_table** %15, align 8
  store %struct.macro_table* %16, %struct.macro_table** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %10, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %20 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %10, i32 0, i32 4
  store %struct.macro_source_file* %19, %struct.macro_source_file** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %10, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.macro_table*, %struct.macro_table** %8, align 8
  %25 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ptrtoint %struct.macro_key* %10 to i32
  %28 = call %struct.TYPE_5__* @splay_tree_lookup(i32 %26, i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %3
  %32 = load %struct.macro_table*, %struct.macro_table** %8, align 8
  %33 = getelementptr inbounds %struct.macro_table, %struct.macro_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ptrtoint %struct.macro_key* %10 to i32
  %36 = call %struct.TYPE_5__* @splay_tree_predecessor(i32 %34, i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %11, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.macro_key*
  store %struct.macro_key* %43, %struct.macro_key** %12, align 8
  %44 = load %struct.macro_key*, %struct.macro_key** %12, align 8
  %45 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %9, align 8
  br label %52

52:                                               ; preds = %50, %39
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.macro_key*
  store %struct.macro_key* %61, %struct.macro_key** %13, align 8
  %62 = load %struct.macro_source_file*, %struct.macro_source_file** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.macro_key*, %struct.macro_key** %13, align 8
  %65 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.macro_key*, %struct.macro_key** %13, align 8
  %68 = getelementptr inbounds %struct.macro_key, %struct.macro_key* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @compare_locations(%struct.macro_source_file* %62, i32 %63, i32* %66, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %4, align 8
  br label %76

74:                                               ; preds = %57
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %76

75:                                               ; preds = %54
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %76

76:                                               ; preds = %75, %74, %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %77
}

declare dso_local %struct.TYPE_5__* @splay_tree_lookup(i32, i32) #1

declare dso_local %struct.TYPE_5__* @splay_tree_predecessor(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @compare_locations(%struct.macro_source_file*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
