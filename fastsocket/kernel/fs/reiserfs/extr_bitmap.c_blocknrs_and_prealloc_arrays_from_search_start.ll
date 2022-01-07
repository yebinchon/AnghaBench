; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_blocknrs_and_prealloc_arrays_from_search_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_blocknrs_and_prealloc_arrays_from_search_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_12__ = type { i32 }

@QUOTA_EXCEEDED = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64*, i32)* @blocknrs_and_prealloc_arrays_from_search_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blocknrs_and_prealloc_arrays_from_search_start(%struct.TYPE_13__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %22)
  %24 = sub nsw i64 %23, 1
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = call i32 @determine_prealloc_size(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %68, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @vfs_dq_alloc_block_nodirty(%struct.TYPE_14__* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @QUOTA_EXCEEDED, align 4
  store i32 %40, i32* %4, align 4
  br label %194

41:                                               ; preds = %31
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vfs_dq_prealloc_block_nodirty(%struct.TYPE_14__* %54, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %51
  br label %67

67:                                               ; preds = %66, %46, %41
  br label %68

68:                                               ; preds = %67, %3
  br label %69

69:                                               ; preds = %134, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  switch i32 %70, label %90 [
    i32 0, label %72
    i32 1, label %79
    i32 2, label %86
  ]

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %9, align 8
  %76 = load %struct.super_block*, %struct.super_block** %8, align 8
  %77 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %76)
  %78 = sub nsw i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %133

79:                                               ; preds = %69
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  br label %133

86:                                               ; preds = %69
  store i64 0, i64* %9, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  br label %133

90:                                               ; preds = %69
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @vfs_dq_free_block_nodirty(%struct.TYPE_14__* %98, i32 %105)
  br label %107

107:                                              ; preds = %95, %90
  br label %108

108:                                              ; preds = %112, %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %12, align 4
  %111 = icmp ne i32 %109, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i64*, i64** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @reiserfs_free_block(%struct.TYPE_15__* %115, %struct.TYPE_14__* %118, i64 %123, i32 %129)
  br label %108

131:                                              ; preds = %108
  %132 = load i32, i32* @NO_DISK_SPACE, align 4
  store i32 %132, i32* %4, align 4
  br label %194

133:                                              ; preds = %86, %79, %72
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = load i64*, i64** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %12, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @allocate_without_wrapping_disk(%struct.TYPE_13__* %135, i64* %139, i64 %140, i64 %141, i32 1, i32 %144, i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %69, label %153

153:                                              ; preds = %134
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %192, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = call %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_14__* %167)
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %164, %170
  %172 = icmp sgt i32 %163, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %158
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = load i32, i32* %12, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = call %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_14__* %186)
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %183, %189
  %191 = call i32 @vfs_dq_free_block_nodirty(%struct.TYPE_14__* %176, i32 %190)
  br label %192

192:                                              ; preds = %173, %158, %153
  %193 = load i32, i32* @CARRY_ON, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %131, %39
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i32 @determine_prealloc_size(%struct.TYPE_13__*) #1

declare dso_local i32 @vfs_dq_alloc_block_nodirty(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vfs_dq_prealloc_block_nodirty(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vfs_dq_free_block_nodirty(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @reiserfs_free_block(%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @allocate_without_wrapping_disk(%struct.TYPE_13__*, i64*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @REISERFS_I(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
