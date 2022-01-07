; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_getdents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_getdents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32 }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_DOT_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_DOTDOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_getdents(%struct.TYPE_26__* %0, i8* %1, i32* %2, i64 (i8*, i8*, i32, i32, i32, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 (i8*, i8*, i32, i32, i32, i32)* %3, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %11, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFS_IFINLINE, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %33 = load i32, i32* @parent, align 4
  %34 = call i64 @offsetof(i32 %32, i32 %33)
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %38 = call i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_25__* %37)
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @XFS_ERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %212

42:                                               ; preds = %4
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %67, %struct.TYPE_27__** %14, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @xfs_dir2_sf_hdr_size(i32 %75)
  %77 = icmp sge i64 %71, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_25__* %80, i32 %82)
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %212

89:                                               ; preds = %42
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @XFS_DIR2_DATA_DOT_OFFSET, align 4
  %95 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_25__* %90, i64 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @XFS_DIR2_DATA_DOTDOT_OFFSET, align 4
  %101 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_25__* %96, i64 %99, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %89
  %107 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %15, align 4
  %110 = and i32 %109, 2147483647
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DT_DIR, align 4
  %115 = call i64 %107(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %110, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load i32, i32* %15, align 4
  %119 = and i32 %118, 2147483647
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %5, align 4
  br label %212

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %89
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sle i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %122
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = call i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_27__* %128, i32* %131)
  store i32 %132, i32* %17, align 4
  %133 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %16, align 4
  %136 = and i32 %135, 2147483647
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* @DT_DIR, align 4
  %139 = call i64 %133(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %136, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %127
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, 2147483647
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %5, align 4
  br label %212

145:                                              ; preds = %127
  br label %146

146:                                              ; preds = %145, %122
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %148 = call %struct.TYPE_28__* @xfs_dir2_sf_firstentry(%struct.TYPE_27__* %147)
  store %struct.TYPE_28__* %148, %struct.TYPE_28__** %13, align 8
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %200, %146
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %203

156:                                              ; preds = %149
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %162 = call i32 @xfs_dir2_sf_get_offset(%struct.TYPE_28__* %161)
  %163 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_25__* %157, i64 %160, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %171 = call %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_27__* %169, %struct.TYPE_28__* %170)
  store %struct.TYPE_28__* %171, %struct.TYPE_28__** %13, align 8
  br label %200

172:                                              ; preds = %156
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %175 = call i32* @xfs_dir2_sf_inumberp(%struct.TYPE_28__* %174)
  %176 = call i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_27__* %173, i32* %175)
  store i32 %176, i32* %17, align 4
  %177 = load i64 (i8*, i8*, i32, i32, i32, i32)*, i64 (i8*, i8*, i32, i32, i32, i32)** %9, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = and i32 %186, 2147483647
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* @DT_UNKNOWN, align 4
  %190 = call i64 %177(i8* %178, i8* %182, i32 %185, i32 %187, i32 %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %172
  %193 = load i32, i32* %12, align 4
  %194 = and i32 %193, 2147483647
  %195 = load i32*, i32** %8, align 8
  store i32 %194, i32* %195, align 4
  store i32 0, i32* %5, align 4
  br label %212

196:                                              ; preds = %172
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %199 = call %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_27__* %197, %struct.TYPE_28__* %198)
  store %struct.TYPE_28__* %199, %struct.TYPE_28__** %13, align 8
  br label %200

200:                                              ; preds = %196, %168
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %149

203:                                              ; preds = %149
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  %209 = call i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_25__* %204, i64 %208, i32 0)
  %210 = and i32 %209, 2147483647
  %211 = load i32*, i32** %8, align 8
  store i32 %210, i32* %211, align 4
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %203, %192, %141, %117, %88, %36
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_25__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_dir2_db_off_to_dataptr(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_sf_firstentry(%struct.TYPE_27__*) #1

declare dso_local i32 @xfs_dir2_sf_get_offset(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_sf_nextentry(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32* @xfs_dir2_sf_inumberp(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
