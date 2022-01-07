; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"---> befs_btree_find() Key: %s\00", align 1
@BEFS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"befs_btree_find() failed to read index superblock\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"befs_btree_find() failed to allocate %u bytes of memory\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"befs_btree_find() failed to read node at %Lu\00", align 1
@BEFS_BT_NOT_FOUND = common dso_local global i32 0, align 4
@BEFS_BT_MATCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"<--- befs_btree_find() Key %s not found\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"<--- befs_btree_find() Found key %s, value %Lu\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"<--- befs_btree_find() ERROR\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @befs_btree_find(%struct.super_block* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @befs_bt_read_super(%struct.super_block* %17, i32* %18, %struct.TYPE_11__* %11)
  %20 = load i64, i64* @BEFS_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %113

25:                                               ; preds = %4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.TYPE_12__* @kmalloc(i32 16, i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 16)
  br label %113

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @befs_bt_read_node(%struct.super_block* %38, i32* %39, %struct.TYPE_12__* %40, i32 %41)
  %43 = load i64, i64* @BEFS_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %110

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %80, %49
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = call i32 @befs_leafnode(%struct.TYPE_12__* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @befs_find_key(%struct.super_block* %56, %struct.TYPE_12__* %57, i8* %58, i32* %12)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @BEFS_BT_NOT_FOUND, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %63, %55
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @befs_bt_read_node(%struct.super_block* %69, i32* %70, %struct.TYPE_12__* %71, i32 %72)
  %74 = load i64, i64* @BEFS_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %110

80:                                               ; preds = %68
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.super_block*, %struct.super_block** %6, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @befs_find_key(%struct.super_block* %82, %struct.TYPE_12__* %83, i8* %84, i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @brelse(i32* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = call i32 @kfree(%struct.TYPE_12__* %91)
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @BEFS_BT_MATCH, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %81
  %97 = load %struct.super_block*, %struct.super_block** %6, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = load i32*, i32** %9, align 8
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @BEFS_BT_NOT_FOUND, align 4
  store i32 %101, i32* %5, align 4
  br label %118

102:                                              ; preds = %81
  %103 = load %struct.super_block*, %struct.super_block** %6, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %104, i32 %106)
  %108 = load i64, i64* @BEFS_OK, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %118

110:                                              ; preds = %76, %45
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = call i32 @kfree(%struct.TYPE_12__* %111)
  br label %113

113:                                              ; preds = %110, %30, %22
  %114 = load i32*, i32** %9, align 8
  store i32 0, i32* %114, align 4
  %115 = load %struct.super_block*, %struct.super_block** %6, align 8
  %116 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* @BEFS_ERR, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %113, %102, %96
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @befs_bt_read_super(%struct.super_block*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @kmalloc(i32, i32) #1

declare dso_local i64 @befs_bt_read_node(%struct.super_block*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @befs_leafnode(%struct.TYPE_12__*) #1

declare dso_local i32 @befs_find_key(%struct.super_block*, %struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
