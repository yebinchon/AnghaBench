; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_seekleaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_seekleaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"---> befs_btree_seekleaf()\00", align 1
@BEFS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"befs_btree_seekleaf() failed to read node at %Lu\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Seekleaf to root node %Lu\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"<--- befs_btree_seekleaf() Tree is EMPTY\00", align 1
@BEFS_BT_EMPTY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"befs_btree_seekleaf() encountered an empty interior node: %Lu. Using Overflow node: %Lu\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Seekleaf to child node %Lu\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Node %Lu is a leaf node\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"<--- befs_btree_seekleaf() ERROR\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i32*, %struct.TYPE_8__*, i32*)* @befs_btree_seekleaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_btree_seekleaf(%struct.super_block* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.super_block*, %struct.super_block** %7, align 8
  %14 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @befs_bt_read_node(%struct.super_block* %15, i32* %16, %struct.TYPE_8__* %17, i32 %19)
  %21 = load i64, i64* @BEFS_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.super_block*, %struct.super_block** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @befs_error(%struct.super_block* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %107

28:                                               ; preds = %5
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = call i64 @befs_leafnode(%struct.TYPE_8__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.super_block*, %struct.super_block** %7, align 8
  %44 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @BEFS_BT_EMPTY, align 4
  store i32 %45, i32* %6, align 4
  br label %111

46:                                               ; preds = %38, %28
  br label %47

47:                                               ; preds = %95, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = call i64 @befs_leafnode(%struct.TYPE_8__* %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %100

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.super_block*, %struct.super_block** %7, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %59, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %81

72:                                               ; preds = %52
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = call i32* @befs_bt_valarray(%struct.TYPE_8__* %73)
  store i32* %74, i32** %12, align 8
  %75 = load %struct.super_block*, %struct.super_block** %7, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fs64_to_cpu(%struct.super_block* %75, i32 %78)
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %58
  %82 = load %struct.super_block*, %struct.super_block** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @befs_bt_read_node(%struct.super_block* %82, i32* %83, %struct.TYPE_8__* %84, i32 %86)
  %88 = load i64, i64* @BEFS_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.super_block*, %struct.super_block** %7, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @befs_error(%struct.super_block* %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %107

95:                                               ; preds = %81
  %96 = load %struct.super_block*, %struct.super_block** %7, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %47

100:                                              ; preds = %47
  %101 = load %struct.super_block*, %struct.super_block** %7, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* @BEFS_OK, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %90, %23
  %108 = load %struct.super_block*, %struct.super_block** %7, align 8
  %109 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i32, i32* @BEFS_ERR, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %100, %42
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @befs_bt_read_node(%struct.super_block*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i64 @befs_leafnode(%struct.TYPE_8__*) #1

declare dso_local i32* @befs_bt_valarray(%struct.TYPE_8__*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
