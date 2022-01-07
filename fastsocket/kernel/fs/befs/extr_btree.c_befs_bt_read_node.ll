; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"---> befs_bt_read_node()\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"befs_bt_read_node() failed to read node at %Lu\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"<--- befs_bt_read_node() ERROR\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"<--- befs_btree_read_node()\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, %struct.TYPE_10__*, i32)* @befs_bt_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_bt_read_node(%struct.super_block* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call i32 @befs_debug(%struct.super_block* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = call i32 @brelse(%struct.TYPE_11__* %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.TYPE_11__* @befs_read_datastream(%struct.super_block* %23, i32* %24, i32 %25, i32* %10)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @befs_error(%struct.super_block* %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %6, align 8
  %38 = call i32 @befs_debug(%struct.super_block* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @BEFS_ERR, align 4
  store i32 %39, i32* %5, align 4
  br label %111

40:                                               ; preds = %22
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to %struct.TYPE_9__*
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.super_block*, %struct.super_block** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 @befs_dump_index_node(%struct.super_block* %53, %struct.TYPE_9__* %56)
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @fs64_to_cpu(%struct.super_block* %58, i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i8* %64, i8** %67, align 8
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @fs64_to_cpu(%struct.super_block* %68, i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load %struct.super_block*, %struct.super_block** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @fs64_to_cpu(%struct.super_block* %78, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %6, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @fs16_to_cpu(%struct.super_block* %88, i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  %98 = load %struct.super_block*, %struct.super_block** %6, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @fs16_to_cpu(%struct.super_block* %98, i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %6, align 8
  %109 = call i32 @befs_debug(%struct.super_block* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @BEFS_OK, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %40, %33
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*) #1

declare dso_local i32 @brelse(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @befs_read_datastream(%struct.super_block*, i32*, i32, i32*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @befs_dump_index_node(%struct.super_block*, %struct.TYPE_9__*) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs16_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
