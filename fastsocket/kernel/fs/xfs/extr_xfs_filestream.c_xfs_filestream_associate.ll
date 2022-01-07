; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c_xfs_filestream_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_filestream.c_xfs_filestream_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__, i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MOUNT_32BITINODES = common dso_local global i32 0, align 4
@xfs_rotorstep = common dso_local global i32 0, align 4
@NULLAGNUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_filestream_associate(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @S_IFREG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34, %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %178

45:                                               ; preds = %34
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %6, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %7, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %53 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %54 = call i32 @xfs_ilock_nowait(%struct.TYPE_26__* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %178

57:                                               ; preds = %45
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_27__* @xfs_mru_cache_lookup(i32* %58, i32 %61)
  store %struct.TYPE_27__* %62, %struct.TYPE_27__** %8, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %64 = icmp ne %struct.TYPE_27__* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %57
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %67, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %70 = icmp eq %struct.TYPE_26__* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @xfs_mru_cache_done(i32* %76)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_25__* %82, i32 %83)
  %85 = call i32 @TRACE_LOOKUP(%struct.TYPE_25__* %78, %struct.TYPE_26__* %79, %struct.TYPE_26__* %80, i32 %81, i32 %84)
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @_xfs_filestream_update_ag(%struct.TYPE_26__* %86, %struct.TYPE_26__* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %172

90:                                               ; preds = %57
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XFS_MOUNT_32BITINODES, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %90
  %98 = load i32, i32* @xfs_rotorstep, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %101, %102
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = srem i32 %103, %107
  store i32 %108, i32* %11, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %116, %117
  %119 = srem i32 %112, %118
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %128

122:                                              ; preds = %90
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @XFS_INO_TO_AGNO(%struct.TYPE_25__* %123, i32 %126)
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %122, %97
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @_xfs_filestream_pick_ag(%struct.TYPE_25__* %129, i32 %130, i32* %9, i32 0, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @NULLAGNUMBER, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %128
  br label %163

139:                                              ; preds = %134
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @_xfs_filestream_update_ag(%struct.TYPE_26__* %140, %struct.TYPE_26__* null, i32 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %163

146:                                              ; preds = %139
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @_xfs_filestream_update_ag(%struct.TYPE_26__* %147, %struct.TYPE_26__* %148, i32 %149)
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %163

154:                                              ; preds = %146
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @xfs_filestream_peek_ag(%struct.TYPE_25__* %159, i32 %160)
  %162 = call i32 @TRACE_ASSOCIATE(%struct.TYPE_25__* %155, %struct.TYPE_26__* %156, %struct.TYPE_26__* %157, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %154, %153, %145, %138
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @NULLAGNUMBER, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @xfs_filestream_put_ag(%struct.TYPE_25__* %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %163
  br label %172

172:                                              ; preds = %171, %65
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %174 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %175 = call i32 @xfs_iunlock(%struct.TYPE_26__* %173, i32 %174)
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %172, %56, %42
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ilock_nowait(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_27__* @xfs_mru_cache_lookup(i32*, i32) #1

declare dso_local i32 @xfs_mru_cache_done(i32*) #1

declare dso_local i32 @TRACE_LOOKUP(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @xfs_filestream_peek_ag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @_xfs_filestream_update_ag(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @XFS_INO_TO_AGNO(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @_xfs_filestream_pick_ag(%struct.TYPE_25__*, i32, i32*, i32, i32) #1

declare dso_local i32 @TRACE_ASSOCIATE(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @xfs_filestream_put_ag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
