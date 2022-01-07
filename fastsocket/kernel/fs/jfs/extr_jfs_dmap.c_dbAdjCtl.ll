; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAdjCtl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAdjCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.metapage = type { i64 }
%struct.dmapctl = type { i64, i32*, i32 }

@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CTLLEAFIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dbAdjCtl: Corrupt dmapctl page\00", align 1
@ROOT = common dso_local global i64 0, align 8
@NOFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"dbAdjCtl: the maximum free buddy is not the old root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, i32, i32, i32, i32)* @dbAdjCtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAdjCtl(%struct.bmap* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dmapctl*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bmap* %0, %struct.bmap** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bmap*, %struct.bmap** %7, align 8
  %22 = getelementptr inbounds %struct.bmap, %struct.bmap* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @BLKTOCTL(i32 %20, i32 %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.bmap*, %struct.bmap** %7, align 8
  %27 = getelementptr inbounds %struct.bmap, %struct.bmap* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* @PSIZE, align 4
  %31 = call %struct.metapage* @read_metapage(%struct.TYPE_2__* %28, i32 %29, i32 %30, i32 0)
  store %struct.metapage* %31, %struct.metapage** %12, align 8
  %32 = load %struct.metapage*, %struct.metapage** %12, align 8
  %33 = icmp eq %struct.metapage* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %230

37:                                               ; preds = %5
  %38 = load %struct.metapage*, %struct.metapage** %12, align 8
  %39 = getelementptr inbounds %struct.metapage, %struct.metapage* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.dmapctl*
  store %struct.dmapctl* %41, %struct.dmapctl** %16, align 8
  %42 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %43 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @CTLLEAFIND, align 4
  %46 = call i64 @cpu_to_le32(i32 %45)
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %37
  %49 = load %struct.bmap*, %struct.bmap** %7, align 8
  %50 = getelementptr inbounds %struct.bmap, %struct.bmap* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @jfs_error(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.metapage*, %struct.metapage** %12, align 8
  %56 = call i32 @release_metapage(%struct.metapage* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %230

59:                                               ; preds = %37
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %62 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @BLKTOCTLLEAF(i32 %60, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %67 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @le32_to_cpu(i64 %68)
  %70 = add nsw i32 %65, %69
  store i32 %70, i32* %19, align 4
  %71 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %72 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %79 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @ROOT, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %59
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @NOFREE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %93 = bitcast %struct.dmapctl* %92 to i32*
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @dbBackSplit(i32* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %6, align 4
  br label %230

100:                                              ; preds = %91
  %101 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %102 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %100, %87
  %109 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %110 = bitcast %struct.dmapctl* %109 to i32*
  %111 = load i32, i32* %18, align 4
  %112 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %113 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dbSplit(i32* %110, i32 %111, i32 %114, i32 %115)
  br label %128

117:                                              ; preds = %59
  %118 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %119 = bitcast %struct.dmapctl* %118 to i32*
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @dbJoin(i32* %119, i32 %120, i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %6, align 4
  br label %230

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %130 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @ROOT, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %13, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %227

138:                                              ; preds = %128
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.bmap*, %struct.bmap** %7, align 8
  %141 = getelementptr inbounds %struct.bmap, %struct.bmap* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %196

144:                                              ; preds = %138
  %145 = load %struct.bmap*, %struct.bmap** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %148 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @ROOT, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  %156 = call i32 @dbAdjCtl(%struct.bmap* %145, i32 %146, i32 %152, i32 %153, i32 %155)
  store i32 %156, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %144
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %163 = bitcast %struct.dmapctl* %162 to i32*
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @dbJoin(i32* %163, i32 %164, i32 %165)
  br label %191

167:                                              ; preds = %158
  %168 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %169 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @NOFREE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %179 = bitcast %struct.dmapctl* %178 to i32*
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @dbBackSplit(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %167
  %183 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %184 = bitcast %struct.dmapctl* %183 to i32*
  %185 = load i32, i32* %18, align 4
  %186 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %187 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @dbSplit(i32* %184, i32 %185, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %161
  %192 = load %struct.metapage*, %struct.metapage** %12, align 8
  %193 = call i32 @release_metapage(%struct.metapage* %192)
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %6, align 4
  br label %230

195:                                              ; preds = %144
  br label %226

196:                                              ; preds = %138
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.bmap*, %struct.bmap** %7, align 8
  %199 = getelementptr inbounds %struct.bmap, %struct.bmap* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %197, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.bmap*, %struct.bmap** %7, align 8
  %205 = getelementptr inbounds %struct.bmap, %struct.bmap* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %13, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %196
  %210 = load %struct.bmap*, %struct.bmap** %7, align 8
  %211 = getelementptr inbounds %struct.bmap, %struct.bmap* %210, i32 0, i32 2
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @jfs_error(i32 %214, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %216

216:                                              ; preds = %209, %196
  %217 = load %struct.dmapctl*, %struct.dmapctl** %16, align 8
  %218 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @ROOT, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.bmap*, %struct.bmap** %7, align 8
  %225 = getelementptr inbounds %struct.bmap, %struct.bmap* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %216, %195
  br label %227

227:                                              ; preds = %226, %128
  %228 = load %struct.metapage*, %struct.metapage** %12, align 8
  %229 = call i32 @write_metapage(%struct.metapage* %228)
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %227, %191, %125, %98, %48, %34
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @BLKTOCTL(i32, i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @BLKTOCTLLEAF(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @dbBackSplit(i32*, i32) #1

declare dso_local i32 @dbSplit(i32*, i32, i32, i32) #1

declare dso_local i32 @dbJoin(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
