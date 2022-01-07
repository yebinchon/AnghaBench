; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c__xfs_filestream_pick_ag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c__xfs_filestream_pick_ag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.xfs_perag = type { i32, i32, i32, i32 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@XFS_ALLOC_FLAG_TRYLOCK = common dso_local global i32 0, align 4
@XFS_PICK_USERDATA = common dso_local global i32 0, align 4
@XFS_PICK_LOWSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i64*, i32, i32)* @_xfs_filestream_pick_ag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_xfs_filestream_pick_ag(%struct.TYPE_13__* %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.xfs_perag*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %20, align 4
  %24 = load i64, i64* @NULLAGNUMBER, align 8
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 50
  store i32 %29, i32* %19, align 4
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %21, align 8
  %31 = load i64, i64* @NULLAGNUMBER, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  store i32 %33, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %193, %5
  br i1 true, label %35, label %196

35:                                               ; preds = %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = load i64, i64* %21, align 8
  %38 = call %struct.xfs_perag* @xfs_perag_get(%struct.TYPE_13__* %36, i64 %37)
  store %struct.xfs_perag* %38, %struct.xfs_perag** %23, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = load i64, i64* %21, align 8
  %41 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %42 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %41, i32 0, i32 1
  %43 = call i32 @atomic_read(i32* %42)
  %44 = call i32 @TRACE_AG_SCAN(%struct.TYPE_13__* %39, i64 %40, i32 %43)
  %45 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %46 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %35
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = load i64, i64* %21, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @xfs_alloc_pagf_init(%struct.TYPE_13__* %50, i32* null, i64 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %61 = call i32 @xfs_perag_put(%struct.xfs_perag* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %206

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %66 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %142

70:                                               ; preds = %64
  %71 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %72 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %78 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %20, align 4
  %80 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %81 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %80, i32 0, i32 1
  %82 = call i32 @atomic_read(i32* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i64, i64* %21, align 8
  store i64 %83, i64* %22, align 8
  br label %84

84:                                               ; preds = %76, %70
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = load i64, i64* %21, align 8
  %87 = call i32 @xfs_filestream_get_ag(%struct.TYPE_13__* %85, i64 %86)
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = load i64, i64* %21, align 8
  %92 = call i32 @xfs_filestream_put_ag(%struct.TYPE_13__* %90, i64 %91)
  br label %142

93:                                               ; preds = %84
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %96 = call i32 @xfs_alloc_longest_free_extent(%struct.TYPE_13__* %94, %struct.xfs_perag* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %138, label %106

106:                                              ; preds = %103
  %107 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %108 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106, %99
  %113 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %114 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @XFS_PICK_USERDATA, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122, %117, %112
  %128 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %129 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  %131 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %132 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %131, i32 0, i32 1
  %133 = call i32 @atomic_read(i32* %132)
  store i32 %133, i32* %12, align 4
  %134 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %135 = call i32 @xfs_perag_put(%struct.xfs_perag* %134)
  %136 = load i64, i64* %21, align 8
  %137 = load i64*, i64** %9, align 8
  store i64 %136, i64* %137, align 8
  br label %196

138:                                              ; preds = %122, %106, %103
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %140 = load i64, i64* %21, align 8
  %141 = call i32 @xfs_filestream_put_ag(%struct.TYPE_13__* %139, i64 %140)
  br label %142

142:                                              ; preds = %138, %89, %69
  %143 = load %struct.xfs_perag*, %struct.xfs_perag** %23, align 8
  %144 = call i32 @xfs_perag_put(%struct.xfs_perag* %143)
  %145 = load i64, i64* %21, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %21, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %146, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i64 0, i64* %21, align 8
  br label %153

153:                                              ; preds = %152, %142
  %154 = load i64, i64* %21, align 8
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %193

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %15, align 4
  br label %193

162:                                              ; preds = %158
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @XFS_PICK_LOWSPACE, align 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %193

171:                                              ; preds = %162
  %172 = load i64, i64* %22, align 8
  %173 = load i64, i64* @NULLAGNUMBER, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = load i64, i64* %22, align 8
  %178 = call i32 @xfs_filestream_get_ag(%struct.TYPE_13__* %176, i64 %177)
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = load i64, i64* %22, align 8
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @TRACE_AG_PICK1(%struct.TYPE_13__* %179, i64 %180, i32 %181)
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %20, align 4
  store i32 %184, i32* %18, align 4
  %185 = load i64, i64* %22, align 8
  %186 = load i64*, i64** %9, align 8
  store i64 %185, i64* %186, align 8
  br label %196

187:                                              ; preds = %171
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %189 = load i64, i64* %22, align 8
  %190 = load i32, i32* %20, align 4
  %191 = call i32 @TRACE_AG_PICK1(%struct.TYPE_13__* %188, i64 %189, i32 %190)
  %192 = load i64*, i64** %9, align 8
  store i64 0, i64* %192, align 8
  store i32 0, i32* %6, align 4
  br label %206

193:                                              ; preds = %167, %161, %157
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %34

196:                                              ; preds = %175, %127, %34
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = load i64*, i64** %9, align 8
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @TRACE_AG_PICK2(%struct.TYPE_13__* %197, i64 %198, i64 %200, i32 %201, i32 %202, i32 %203, i32 %204)
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %196, %187, %59
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @TRACE_AG_SCAN(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @xfs_alloc_pagf_init(%struct.TYPE_13__*, i32*, i64, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_filestream_get_ag(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @xfs_filestream_put_ag(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @xfs_alloc_longest_free_extent(%struct.TYPE_13__*, %struct.xfs_perag*) #1

declare dso_local i32 @TRACE_AG_PICK1(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @TRACE_AG_PICK2(%struct.TYPE_13__*, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
