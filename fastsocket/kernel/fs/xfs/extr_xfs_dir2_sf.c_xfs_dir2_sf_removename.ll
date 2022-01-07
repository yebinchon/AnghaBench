; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_removename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32, i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_26__, %struct.TYPE_24__, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ILOG_DDATA = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_removename(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %13 = call i32 @trace_xfs_dir2_sf_removename(%struct.TYPE_31__* %12)
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %5, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @XFS_IFINLINE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %30 = load i32, i32* @parent, align 4
  %31 = call i32 @offsetof(i32 %29, i32 %30)
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @XFS_FORCED_SHUTDOWN(i32 %36)
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = call i32 @XFS_ERROR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %195

41:                                               ; preds = %1
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %63, %struct.TYPE_29__** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xfs_dir2_sf_hdr_size(i32 %68)
  %70 = icmp sge i32 %64, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  store i32 0, i32* %7, align 4
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %74 = call %struct.TYPE_30__* @xfs_dir2_sf_firstentry(%struct.TYPE_29__* %73)
  store %struct.TYPE_30__* %74, %struct.TYPE_30__** %10, align 8
  br label %75

75:                                               ; preds = %105, %41
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %75
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @xfs_da_compname(%struct.TYPE_31__* %83, i32 %86, i32 %89)
  %91 = load i64, i64* @XFS_CMP_EXACT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %82
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %96 = call i32 @xfs_dir2_sf_inumberp(%struct.TYPE_30__* %95)
  %97 = call i64 @xfs_dir2_sf_get_inumber(%struct.TYPE_29__* %94, i32 %96)
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  br label %111

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %110 = call %struct.TYPE_30__* @xfs_dir2_sf_nextentry(%struct.TYPE_29__* %108, %struct.TYPE_30__* %109)
  store %struct.TYPE_30__* %110, %struct.TYPE_30__** %10, align 8
  br label %75

111:                                              ; preds = %93, %75
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* @ENOENT, align 4
  %120 = call i32 @XFS_ERROR(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %195

121:                                              ; preds = %111
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %123 = bitcast %struct.TYPE_30__* %122 to i8*
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %125 = bitcast %struct.TYPE_29__* %124 to i8*
  %126 = ptrtoint i8* %123 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_29__* %130, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %6, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %121
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %145 = bitcast %struct.TYPE_29__* %144 to i8*
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %150 = bitcast %struct.TYPE_29__* %149 to i8*
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %158, %159
  %161 = sub nsw i32 %157, %160
  %162 = call i32 @memmove(i8* %148, i8* %156, i32 %161)
  br label %163

163:                                              ; preds = %143, %121
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* @XFS_DATA_FORK, align 4
  %178 = call i32 @xfs_idata_realloc(%struct.TYPE_28__* %173, i32 %176, i32 %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %184, %struct.TYPE_29__** %11, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %186 = call i32 @xfs_dir2_sf_check(%struct.TYPE_31__* %185)
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = load i32, i32* @XFS_ILOG_CORE, align 4
  %192 = load i32, i32* @XFS_ILOG_DDATA, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @xfs_trans_log_inode(i32 %189, %struct.TYPE_28__* %190, i32 %193)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %163, %118, %33
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @trace_xfs_dir2_sf_removename(%struct.TYPE_31__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local %struct.TYPE_30__* @xfs_dir2_sf_firstentry(%struct.TYPE_29__*) #1

declare dso_local i64 @xfs_da_compname(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @xfs_dir2_sf_get_inumber(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @xfs_dir2_sf_inumberp(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @xfs_dir2_sf_nextentry(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_31__*) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
