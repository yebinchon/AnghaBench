; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_start_machine_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_start_machine_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.reada_extent = type { i32, i32, i32, i32, %struct.btrfs_device*, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { %struct.btrfs_device* }
%struct.extent_buffer = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_device*)* @reada_start_machine_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_start_machine_dev(%struct.btrfs_fs_info* %0, %struct.btrfs_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca %struct.reada_extent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_device* %1, %struct.btrfs_device** %5, align 8
  store %struct.reada_extent* null, %struct.reada_extent** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.extent_buffer* null, %struct.extent_buffer** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %23 = call i32 @reada_pick_zone(%struct.btrfs_device* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock(i32* %28)
  store i32 0, i32* %3, align 4
  br label %189

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %32, i32 0, i32 2
  %34 = bitcast %struct.reada_extent** %6 to i8**
  %35 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %36 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  %40 = call i32 @radix_tree_gang_lookup(i32* %33, i8** %34, i32 %39, i32 1)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %31
  %44 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %45 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %46, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %43, %31
  %54 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %55 = call i32 @reada_pick_zone(%struct.btrfs_device* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock(i32* %60)
  store i32 0, i32* %3, align 4
  br label %189

62:                                               ; preds = %53
  store %struct.reada_extent* null, %struct.reada_extent** %6, align 8
  %63 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %63, i32 0, i32 2
  %65 = bitcast %struct.reada_extent** %6 to i8**
  %66 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %67 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = call i32 @radix_tree_gang_lookup(i32* %64, i8** %65, i32 %70, i32 1)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %62, %43
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock(i32* %77)
  store i32 0, i32* %3, align 4
  br label %189

79:                                               ; preds = %72
  %80 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %81 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %84 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %88 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %90 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %89, i32 0, i32 6
  %91 = call i32 @kref_get(i32* %90)
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %93 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock(i32* %93)
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %117, %79
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %98 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %103 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.btrfs_device*, %struct.btrfs_device** %109, align 8
  %111 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %112 = icmp eq %struct.btrfs_device* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %120

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %95

120:                                              ; preds = %113, %95
  %121 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %122 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %9, align 4
  %124 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %125 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %10, align 4
  %127 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %128 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %127, i32 0, i32 3
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %131 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %130, i32 0, i32 4
  %132 = load %struct.btrfs_device*, %struct.btrfs_device** %131, align 8
  %133 = icmp eq %struct.btrfs_device* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %120
  %135 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %136 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %137 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %136, i32 0, i32 4
  store %struct.btrfs_device* %135, %struct.btrfs_device** %137, align 8
  store i32 1, i32* %13, align 4
  br label %138

138:                                              ; preds = %134, %120
  %139 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %140 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %139, i32 0, i32 3
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %143 = load %struct.reada_extent*, %struct.reada_extent** %6, align 8
  %144 = call i32 @reada_extent_put(%struct.btrfs_fs_info* %142, %struct.reada_extent* %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %189

148:                                              ; preds = %138
  %149 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %150 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %149, i32 0, i32 1
  %151 = call i32 @atomic_inc(i32* %150)
  %152 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %153 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @reada_tree_block_flagged(i32 %154, i32 %155, i32 %156, i32 %157, %struct.extent_buffer** %8)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %148
  %162 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %163 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @__readahead_hook(i32 %164, %struct.extent_buffer* null, i32 %165, i32 %166)
  br label %182

168:                                              ; preds = %148
  %169 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %170 = icmp ne %struct.extent_buffer* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %173 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %176 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %177 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @__readahead_hook(i32 %174, %struct.extent_buffer* %175, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %171, %168
  br label %182

182:                                              ; preds = %181, %161
  %183 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %184 = icmp ne %struct.extent_buffer* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %187 = call i32 @free_extent_buffer(%struct.extent_buffer* %186)
  br label %188

188:                                              ; preds = %185, %182
  store i32 1, i32* %3, align 4
  br label %189

189:                                              ; preds = %188, %147, %75, %58, %26
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reada_pick_zone(%struct.btrfs_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup(i32*, i8**, i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @reada_extent_put(%struct.btrfs_fs_info*, %struct.reada_extent*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reada_tree_block_flagged(i32, i32, i32, i32, %struct.extent_buffer**) #1

declare dso_local i32 @__readahead_hook(i32, %struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
