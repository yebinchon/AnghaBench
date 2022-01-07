; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64, i32, i8*, i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_27__, i32 }
%struct.TYPE_29__ = type { i32, i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i64 0, align 8
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_ILOG_DDATA = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_replace(%struct.TYPE_34__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  %8 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %9 = call i32 @trace_xfs_dir2_sf_replace(%struct.TYPE_34__* %8)
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %4, align 8
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XFS_IFINLINE, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %25 = load i32, i32* @parent, align 4
  %26 = call i64 @offsetof(i32 %24, i32 %25)
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @XFS_FORCED_SHUTDOWN(i32 %31)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @XFS_ERROR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %179

36:                                               ; preds = %1
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %61, %struct.TYPE_32__** %7, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @xfs_dir2_sf_hdr_size(i32 %69)
  %71 = icmp sge i64 %65, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %86, label %78

78:                                               ; preds = %36
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 46
  br label %86

86:                                               ; preds = %78, %36
  %87 = phi i1 [ true, %36 ], [ %85, %78 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %118

94:                                               ; preds = %86
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %118

102:                                              ; preds = %94
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 46
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 2
  %117 = call i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_32__* %111, i64* %113, i32* %116)
  br label %170

118:                                              ; preds = %102, %94, %86
  store i32 0, i32* %5, align 4
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %120 = call %struct.TYPE_33__* @xfs_dir2_sf_firstentry(%struct.TYPE_32__* %119)
  store %struct.TYPE_33__* %120, %struct.TYPE_33__** %6, align 8
  br label %121

121:                                              ; preds = %147, %118
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @xfs_da_compname(%struct.TYPE_34__* %129, i32 %132, i32 %135)
  %137 = load i64, i64* @XFS_CMP_EXACT, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %144 = call i32* @xfs_dir2_sf_inumberp(%struct.TYPE_33__* %143)
  %145 = call i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_32__* %140, i64* %142, i32* %144)
  br label %153

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %152 = call %struct.TYPE_33__* @xfs_dir2_sf_nextentry(%struct.TYPE_32__* %150, %struct.TYPE_33__* %151)
  store %struct.TYPE_33__* %152, %struct.TYPE_33__** %6, align 8
  br label %121

153:                                              ; preds = %139, %121
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %154, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @ASSERT(i32 %165)
  %167 = load i32, i32* @ENOENT, align 4
  %168 = call i32 @XFS_ERROR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %179

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %110
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %172 = call i32 @xfs_dir2_sf_check(%struct.TYPE_34__* %171)
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %177 = load i32, i32* @XFS_ILOG_DDATA, align 4
  %178 = call i32 @xfs_trans_log_inode(i32 %175, %struct.TYPE_31__* %176, i32 %177)
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %170, %160, %28
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @trace_xfs_dir2_sf_replace(%struct.TYPE_34__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_32__*, i64*, i32*) #1

declare dso_local %struct.TYPE_33__* @xfs_dir2_sf_firstentry(%struct.TYPE_32__*) #1

declare dso_local i64 @xfs_da_compname(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32* @xfs_dir2_sf_inumberp(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_33__* @xfs_dir2_sf_nextentry(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_34__*) #1

declare dso_local i32 @xfs_trans_log_inode(i32, %struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
