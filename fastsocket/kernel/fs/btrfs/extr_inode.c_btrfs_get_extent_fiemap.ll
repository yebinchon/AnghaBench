; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_get_extent_fiemap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_get_extent_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i64, i64, i64, i64, i64, i32* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXTENT_MAP_HOLE = common dso_local global i64 0, align 8
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_MAP_DELALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.extent_map* @btrfs_get_extent_fiemap(%struct.inode* %0, %struct.page* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.extent_map*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_map*, align 8
  %15 = alloca %struct.extent_map*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.extent_map* null, %struct.extent_map** %15, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %16, align 8
  store i32 0, i32* %20, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.extent_map* @btrfs_get_extent(%struct.inode* %25, %struct.page* %26, i64 %27, i64 %28, i64 %29, i32 %30)
  store %struct.extent_map* %31, %struct.extent_map** %14, align 8
  %32 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %33 = call i64 @IS_ERR(%struct.extent_map* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  store %struct.extent_map* %36, %struct.extent_map** %7, align 8
  br label %200

37:                                               ; preds = %6
  %38 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %39 = icmp ne %struct.extent_map* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %42 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EXTENT_MAP_HOLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  store %struct.extent_map* %47, %struct.extent_map** %7, align 8
  br label %200

48:                                               ; preds = %40
  %49 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  store %struct.extent_map* %49, %struct.extent_map** %15, align 8
  br label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i64 -1, i64* %17, align 8
  br label %62

59:                                               ; preds = %51
  %60 = load i64, i64* %17, align 8
  %61 = sub nsw i64 %60, 1
  store i64 %61, i64* %17, align 8
  br label %62

62:                                               ; preds = %59, %58
  store %struct.extent_map* null, %struct.extent_map** %14, align 8
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* @EXTENT_DELALLOC, align 4
  %69 = call i64 @count_range_bits(i32* %65, i64* %16, i64 %66, i64 %67, i32 %68, i32 1)
  store i64 %69, i64* %18, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %18, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %19, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i64 -1, i64* %19, align 8
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77
  %86 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  store %struct.extent_map* %86, %struct.extent_map** %14, align 8
  store %struct.extent_map* null, %struct.extent_map** %15, align 8
  br label %188

87:                                               ; preds = %81
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @max(i64 %88, i64 %89)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %16, align 8
  %93 = sub nsw i64 %91, %92
  store i64 %93, i64* %18, align 8
  %94 = load i64, i64* %18, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %181

96:                                               ; preds = %87
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %21, align 8
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %22, align 8
  %99 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %99, %struct.extent_map** %14, align 8
  %100 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %101 = icmp ne %struct.extent_map* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %20, align 4
  br label %188

105:                                              ; preds = %96
  %106 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %107 = icmp ne %struct.extent_map* %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %110 = call i64 @extent_map_end(%struct.extent_map* %109)
  store i64 %110, i64* %23, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %116 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %17, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108
  %121 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %122 = call i32 @free_extent_map(%struct.extent_map* %121)
  store %struct.extent_map* null, %struct.extent_map** %15, align 8
  br label %132

123:                                              ; preds = %114
  %124 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %125 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @max(i64 %126, i64 %127)
  store i64 %128, i64* %21, align 8
  %129 = load i64, i64* %23, align 8
  %130 = load i64, i64* %21, align 8
  %131 = sub nsw i64 %129, %130
  store i64 %131, i64* %22, align 8
  br label %132

132:                                              ; preds = %123, %120
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %135 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %134, i32 0, i32 5
  store i32* null, i32** %135, align 8
  %136 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %137 = icmp ne %struct.extent_map* %136, null
  br i1 %137, label %138, label %164

138:                                              ; preds = %133
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %21, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %21, align 8
  %146 = sub nsw i64 %144, %145
  %147 = call i64 @min(i64 %143, i64 %146)
  %148 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %149 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %152 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %21, align 8
  %154 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %155 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %157 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %160 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %22, align 8
  %162 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %163 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  br label %180

164:                                              ; preds = %138, %133
  %165 = load i64, i64* %16, align 8
  %166 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %167 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %170 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %173 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = load i64, i64* @EXTENT_MAP_DELALLOC, align 8
  %175 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %176 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %18, align 8
  %178 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %179 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %164, %142
  br label %187

181:                                              ; preds = %87
  %182 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %183 = icmp ne %struct.extent_map* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  store %struct.extent_map* %185, %struct.extent_map** %7, align 8
  br label %200

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186, %180
  br label %188

188:                                              ; preds = %187, %102, %85
  %189 = load %struct.extent_map*, %struct.extent_map** %15, align 8
  %190 = call i32 @free_extent_map(%struct.extent_map* %189)
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  %195 = call i32 @free_extent_map(%struct.extent_map* %194)
  %196 = load i32, i32* %20, align 4
  %197 = call %struct.extent_map* @ERR_PTR(i32 %196)
  store %struct.extent_map* %197, %struct.extent_map** %7, align 8
  br label %200

198:                                              ; preds = %188
  %199 = load %struct.extent_map*, %struct.extent_map** %14, align 8
  store %struct.extent_map* %199, %struct.extent_map** %7, align 8
  br label %200

200:                                              ; preds = %198, %193, %184, %46, %35
  %201 = load %struct.extent_map*, %struct.extent_map** %7, align 8
  ret %struct.extent_map* %201
}

declare dso_local %struct.extent_map* @btrfs_get_extent(%struct.inode*, %struct.page*, i64, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i64 @count_range_bits(i32*, i64*, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
