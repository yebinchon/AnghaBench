; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_read_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_bt_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.buffer_head = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"---> befs_btree_read_super()\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't read index header.\00", align 1
@BEFS_BTREE_MAGIC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Index header has bad magic.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"<--- befs_btree_read_super()\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"<--- befs_btree_read_super() ERROR\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, %struct.TYPE_6__*)* @befs_bt_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_bt_read_super(%struct.super_block* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call i32 @befs_debug(%struct.super_block* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.buffer_head* @befs_read_datastream(%struct.super_block* %12, i32* %13, i32 0, i32* null)
  store %struct.buffer_head* %14, %struct.buffer_head** %8, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %16 = icmp ne %struct.buffer_head* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call i32 @befs_error(%struct.super_block* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %91

20:                                               ; preds = %3
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %9, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = call i32 @befs_dump_index_entry(%struct.super_block* %25, %struct.TYPE_5__* %26)
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @fs32_to_cpu(%struct.super_block* %28, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @fs32_to_cpu(%struct.super_block* %35, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @fs32_to_cpu(%struct.super_block* %42, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @fs32_to_cpu(%struct.super_block* %49, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @fs64_to_cpu(%struct.super_block* %56, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @fs64_to_cpu(%struct.super_block* %63, i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @fs64_to_cpu(%struct.super_block* %70, i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** @BEFS_BTREE_MAGIC, align 8
  %83 = icmp ne i8* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %20
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = call i32 @befs_error(%struct.super_block* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %91

87:                                               ; preds = %20
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = call i32 @befs_debug(%struct.super_block* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @BEFS_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %95

91:                                               ; preds = %84, %17
  %92 = load %struct.super_block*, %struct.super_block** %5, align 8
  %93 = call i32 @befs_debug(%struct.super_block* %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @BEFS_ERR, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*) #1

declare dso_local %struct.buffer_head* @befs_read_datastream(%struct.super_block*, i32*, i32, i32*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @befs_dump_index_entry(%struct.super_block*, %struct.TYPE_5__*) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
