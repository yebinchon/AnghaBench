; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i8*, i32, i32, i8*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_24__*, i8*, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_32__*, i32, i32)* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32 }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XFS_CMP_DIFFERENT = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_lookup(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %12 = call i32 @trace_xfs_dir2_sf_lookup(%struct.TYPE_32__* %11)
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %14 = call i32 @xfs_dir2_sf_check(%struct.TYPE_32__* %13)
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %17, %struct.TYPE_29__** %4, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @XFS_IFINLINE, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %30 = load i32, i32* @parent, align 4
  %31 = call i64 @offsetof(i32 %29, i32 %30)
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = call i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_24__* %36)
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = call i32 @XFS_ERROR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %219

41:                                               ; preds = %1
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %8, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @xfs_dir2_sf_hdr_size(i32 %74)
  %76 = icmp sge i64 %70, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %102

83:                                               ; preds = %41
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @XFS_CMP_EXACT, align 4
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @EEXIST, align 4
  %101 = call i32 @XFS_ERROR(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %219

102:                                              ; preds = %83, %41
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %136

107:                                              ; preds = %102
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %136

115:                                              ; preds = %107
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 46
  br i1 %122, label %123, label %136

123:                                              ; preds = %115
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = call i8* @xfs_dir2_sf_get_inumber(%struct.TYPE_30__* %124, i32* %127)
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @XFS_CMP_EXACT, align 4
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @EEXIST, align 4
  %135 = call i32 @XFS_ERROR(i32 %134)
  store i32 %135, i32* %2, align 4
  br label %219

136:                                              ; preds = %115, %107, %102
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %10, align 8
  store i32 0, i32* %5, align 4
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %138 = call %struct.TYPE_31__* @xfs_dir2_sf_firstentry(%struct.TYPE_30__* %137)
  store %struct.TYPE_31__* %138, %struct.TYPE_31__** %7, align 8
  br label %139

139:                                              ; preds = %190, %136
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %196

146:                                              ; preds = %139
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_32__*, i32, i32)*, i32 (%struct.TYPE_32__*, i32, i32)** %152, align 8
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 %153(%struct.TYPE_32__* %154, i32 %157, i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @XFS_CMP_DIFFERENT, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %146
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %166, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %177 = call i32* @xfs_dir2_sf_inumberp(%struct.TYPE_31__* %176)
  %178 = call i8* @xfs_dir2_sf_get_inumber(%struct.TYPE_30__* %175, i32* %177)
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @XFS_CMP_EXACT, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %171
  %185 = load i32, i32* @EEXIST, align 4
  %186 = call i32 @XFS_ERROR(i32 %185)
  store i32 %186, i32* %2, align 4
  br label %219

187:                                              ; preds = %171
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_31__* %188, %struct.TYPE_31__** %10, align 8
  br label %189

189:                                              ; preds = %187, %165, %146
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %195 = call %struct.TYPE_31__* @xfs_dir2_sf_nextentry(%struct.TYPE_30__* %193, %struct.TYPE_31__* %194)
  store %struct.TYPE_31__* %195, %struct.TYPE_31__** %7, align 8
  br label %139

196:                                              ; preds = %139
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %201 = and i32 %199, %200
  %202 = call i32 @ASSERT(i32 %201)
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %204 = icmp ne %struct.TYPE_31__* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* @ENOENT, align 4
  %207 = call i32 @XFS_ERROR(i32 %206)
  store i32 %207, i32* %2, align 4
  br label %219

208:                                              ; preds = %196
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_32__* %209, i32 %212, i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @XFS_ERROR(i32 %217)
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %208, %205, %184, %123, %91, %33
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @trace_xfs_dir2_sf_lookup(%struct.TYPE_32__*) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_24__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i8* @xfs_dir2_sf_get_inumber(%struct.TYPE_30__*, i32*) #1

declare dso_local %struct.TYPE_31__* @xfs_dir2_sf_firstentry(%struct.TYPE_30__*) #1

declare dso_local i32* @xfs_dir2_sf_inumberp(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @xfs_dir2_sf_nextentry(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_32__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
