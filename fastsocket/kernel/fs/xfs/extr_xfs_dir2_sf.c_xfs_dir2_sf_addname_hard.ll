; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_hard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i64, %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }

@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FIRST_OFFSET = common dso_local global i64 0, align 8
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32, i32)* @xfs_dir2_sf_addname_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_sf_addname_hard(%struct.TYPE_29__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %9, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %27, %struct.TYPE_28__** %18, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_alloc(i32 %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %16, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @memcpy(%struct.TYPE_28__* %37, %struct.TYPE_28__* %38, i32 %39)
  %41 = load i64, i64* @XFS_DIR2_DATA_FIRST_OFFSET, align 8
  store i64 %41, i64* %13, align 8
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %43 = call %struct.TYPE_28__* @xfs_dir2_sf_firstentry(%struct.TYPE_28__* %42)
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %15, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @xfs_dir2_data_entsize(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %49 = bitcast %struct.TYPE_28__* %48 to i8*
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = icmp eq i8* %49, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %71, %3
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %62 = call i64 @xfs_dir2_sf_get_offset(%struct.TYPE_28__* %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i64, i64* %12, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %90

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @xfs_dir2_data_entsize(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  store i64 %78, i64* %13, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %81 = call %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_28__* %79, %struct.TYPE_28__* %80)
  store %struct.TYPE_28__* %81, %struct.TYPE_28__** %15, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %83 = bitcast %struct.TYPE_28__* %82 to i8*
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = icmp eq i8* %83, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %10, align 4
  br label %56

90:                                               ; preds = %69, %56
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 0, %92
  %94 = load i32, i32* @XFS_DATA_FORK, align 4
  %95 = call i32 @xfs_idata_realloc(%struct.TYPE_27__* %91, i32 %93, i32 %94)
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @XFS_DATA_FORK, align 4
  %99 = call i32 @xfs_idata_realloc(%struct.TYPE_27__* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %105, %struct.TYPE_28__** %18, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %107 = bitcast %struct.TYPE_28__* %106 to i8*
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %109 = bitcast %struct.TYPE_28__* %108 to i8*
  %110 = ptrtoint i8* %107 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @memcpy(%struct.TYPE_28__* %114, %struct.TYPE_28__* %115, i32 %116)
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %119 = bitcast %struct.TYPE_28__* %118 to i8*
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = bitcast i8* %122 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %123, %struct.TYPE_28__** %17, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @xfs_dir2_sf_put_offset(%struct.TYPE_28__* %129, i64 %130)
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @memcpy(%struct.TYPE_28__* %134, %struct.TYPE_28__* %137, i32 %140)
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %146 = call i32 @xfs_dir2_sf_inumberp(%struct.TYPE_28__* %145)
  %147 = call i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_28__* %142, i64* %144, i32 %146)
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %90
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %158 = call %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_28__* %156, %struct.TYPE_28__* %157)
  store %struct.TYPE_28__* %158, %struct.TYPE_28__** %17, align 8
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i32 @memcpy(%struct.TYPE_28__* %159, %struct.TYPE_28__* %160, i32 %163)
  br label %165

165:                                              ; preds = %155, %90
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @kmem_free(i8* %166)
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %173 = call i32 @xfs_dir2_sf_check(%struct.TYPE_29__* %172)
  ret void
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_sf_firstentry(%struct.TYPE_28__*) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local i64 @xfs_dir2_sf_get_offset(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_put_offset(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_28__*, i64*, i32) #1

declare dso_local i32 @xfs_dir2_sf_inumberp(%struct.TYPE_28__*) #1

declare dso_local i32 @kmem_free(i8*) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
