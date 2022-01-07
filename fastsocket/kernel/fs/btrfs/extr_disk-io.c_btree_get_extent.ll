; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_get_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_get_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i8*, i8*, i32, i64, i8* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.extent_map_tree }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, %struct.page*, i64, i8*, i8*, i32)* @btree_get_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @btree_get_extent(%struct.inode* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_map_tree*, align 8
  %14 = alloca %struct.extent_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store %struct.extent_map_tree* %20, %struct.extent_map_tree** %13, align 8
  %21 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %22 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %21, i32 0, i32 0
  %23 = call i32 @read_lock(i32* %22)
  %24 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %24, i8* %25, i8* %26)
  store %struct.extent_map* %27, %struct.extent_map** %14, align 8
  %28 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %29 = icmp ne %struct.extent_map* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %6
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %42 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %44 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %43, i32 0, i32 0
  %45 = call i32 @read_unlock(i32* %44)
  br label %129

46:                                               ; preds = %6
  %47 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %48 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %47, i32 0, i32 0
  %49 = call i32 @read_unlock(i32* %48)
  %50 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %50, %struct.extent_map** %14, align 8
  %51 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %52 = icmp ne %struct.extent_map* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.extent_map* @ERR_PTR(i32 %55)
  store %struct.extent_map* %56, %struct.extent_map** %14, align 8
  br label %129

57:                                               ; preds = %46
  %58 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %59 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %58, i32 0, i32 1
  store i8* null, i8** %59, align 8
  %60 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %61 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %60, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %61, align 8
  %62 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %63 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %62, i32 0, i32 4
  store i8* inttoptr (i64 -1 to i8*), i8** %63, align 8
  %64 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %65 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %77 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %79 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %78, i32 0, i32 0
  %80 = call i32 @write_lock(i32* %79)
  %81 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %82 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %83 = call i32 @add_extent_mapping(%struct.extent_map_tree* %81, %struct.extent_map* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @EEXIST, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %57
  %89 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %90 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %16, align 8
  %92 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %93 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %17, align 8
  %95 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %96 = call i32 @free_extent_map(%struct.extent_map* %95)
  %97 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %97, i8* %98, i8* %99)
  store %struct.extent_map* %100, %struct.extent_map** %14, align 8
  %101 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %102 = icmp ne %struct.extent_map* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  store i32 0, i32* %15, align 4
  br label %111

104:                                              ; preds = %88
  %105 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %105, i8* %106, i8* %107)
  store %struct.extent_map* %108, %struct.extent_map** %14, align 8
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %104, %103
  br label %119

112:                                              ; preds = %57
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %117 = call i32 @free_extent_map(%struct.extent_map* %116)
  store %struct.extent_map* null, %struct.extent_map** %14, align 8
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %111
  %120 = load %struct.extent_map_tree*, %struct.extent_map_tree** %13, align 8
  %121 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %120, i32 0, i32 0
  %122 = call i32 @write_unlock(i32* %121)
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %15, align 4
  %127 = call %struct.extent_map* @ERR_PTR(i32 %126)
  store %struct.extent_map* %127, %struct.extent_map** %14, align 8
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %128, %53, %30
  %130 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  ret %struct.extent_map* %130
}

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i8*, i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
