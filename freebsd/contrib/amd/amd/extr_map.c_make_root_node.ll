; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_make_root_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_make_root_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }

@ROOT_MAP = common dso_local global i8* null, align 8
@root_node = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@amfs_root_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_root_node() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @ROOT_MAP, align 8
  store i8* %3, i8** %2, align 8
  %4 = call %struct.TYPE_15__* (...) @exported_ap_alloc()
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** @root_node, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root_node, align 8
  %6 = call i32 @init_map(%struct.TYPE_15__* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.TYPE_14__* @find_mntfs(i32* @amfs_root_ops, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %1, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root_node, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = call i32 @free_mntfs(%struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root_node, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_14__*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %33 = call i32 %31(%struct.TYPE_14__* %32)
  br label %34

34:                                               ; preds = %26, %0
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @root_node, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %42 = call i32 %39(%struct.TYPE_15__* %40, %struct.TYPE_14__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local %struct.TYPE_15__* @exported_ap_alloc(...) #1

declare dso_local i32 @init_map(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_14__* @find_mntfs(i32*, i32*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free_mntfs(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
