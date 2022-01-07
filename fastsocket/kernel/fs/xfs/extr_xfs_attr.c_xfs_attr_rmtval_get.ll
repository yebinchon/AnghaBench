; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_rmtval_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_rmtval_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_13__*, i32, i64, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }

@ATTR_RMTVALUE_MAPSIZE = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@XFS_BMAPI_ATTRFORK = common dso_local global i32 0, align 4
@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XBF_LOCK = common dso_local global i32 0, align 4
@XBF_DONT_BLOCK = common dso_local global i32 0, align 4
@XBRW_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_rmtval_get(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %18 = load i32, i32* @ATTR_RMTVALUE_MAPSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca %struct.TYPE_12__, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATTR_KERNOVAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 6
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %167, %1
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %168

48:                                               ; preds = %45
  %49 = load i32, i32* @ATTR_RMTVALUE_MAPSIZE, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %62 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @xfs_bmapi(i32 %52, %struct.TYPE_13__* %55, i32 %57, i32 %60, i32 %63, i32* null, i32 0, %struct.TYPE_12__* %21, i32* %10, i32* null)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %173

69:                                               ; preds = %48
  %70 = load i32, i32* %10, align 4
  %71 = icmp sge i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %164, %69
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %79, 0
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  br i1 %82, label %83, label %167

83:                                               ; preds = %81
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 16
  %89 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 16
  %97 = load i64, i64* @HOLESTARTBLOCK, align 8
  %98 = icmp ne i64 %96, %97
  br label %99

99:                                               ; preds = %91, %83
  %100 = phi i1 [ false, %83 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 16
  %109 = call i32 @XFS_FSB_TO_DADDR(%struct.TYPE_10__* %103, i64 %108)
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @XFS_FSB_TO_BB(%struct.TYPE_10__* %110, i64 %115)
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @XBF_LOCK, align 4
  %124 = load i32, i32* @XBF_DONT_BLOCK, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @xfs_read_buf(%struct.TYPE_10__* %117, i32 %120, i32 %121, i32 %122, i32 %125, i32** %9)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %99
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %173

131:                                              ; preds = %99
  %132 = load i32, i32* %13, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @XFS_BUF_SIZE(i32* %133)
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %13, align 4
  br label %141

138:                                              ; preds = %131
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @XFS_BUF_SIZE(i32* %139)
  br label %141

141:                                              ; preds = %138, %136
  %142 = phi i32 [ %137, %136 ], [ %140, %138 ]
  store i32 %142, i32* %12, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* @XBRW_READ, align 4
  %147 = call i32 @xfs_buf_iomove(i32* %143, i32 0, i32 %144, i8* %145, i32 %146)
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @xfs_buf_relse(i32* %148)
  %150 = load i32, i32* %12, align 4
  %151 = load i8*, i8** %8, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr i8, i8* %151, i64 %152
  store i8* %153, i8** %8, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %16, align 8
  %163 = add nsw i64 %162, %161
  store i64 %163, i64* %16, align 8
  br label %164

164:                                              ; preds = %141
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %74

167:                                              ; preds = %81
  br label %45

168:                                              ; preds = %45
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT(i32 %171)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %173

173:                                              ; preds = %168, %129, %67
  %174 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_bmapi(i32, %struct.TYPE_13__*, i32, i32, i32, i32*, i32, %struct.TYPE_12__*, i32*, i32*) #2

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @XFS_FSB_TO_BB(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @xfs_read_buf(%struct.TYPE_10__*, i32, i32, i32, i32, i32**) #2

declare dso_local i32 @XFS_BUF_SIZE(i32*) #2

declare dso_local i32 @xfs_buf_iomove(i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @xfs_buf_relse(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
