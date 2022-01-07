; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_split_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_split_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32*, i64, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i32 }

@ztest_shared = common dso_local global %struct.TYPE_12__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_14__* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"splitp\00", align 1
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@vdev_hole_ops = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@VDEV_TYPE_ROOT = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"successful split - results:\0A\00", align 1
@spa_namespace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_split_pool(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ztest_shared, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %5, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ztest_spa, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %26 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ztest_opts, i32 0, i32 0), align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %2
  %35 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %240

36:                                               ; preds = %31
  %37 = call i32 @spa_destroy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load i32, i32* @SCL_VDEV, align 4
  %40 = load i32, i32* @FTAG, align 4
  %41 = load i32, i32* @RW_READER, align 4
  %42 = call i32 @spa_config_enter(%struct.TYPE_14__* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = call i32 @mutex_enter(i32* %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %50 = call i64 @nvlist_lookup_nvlist(i32 %48, i32 %49, i32** %8)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = call i32 @mutex_exit(i32* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %59 = call i64 @nvlist_lookup_nvlist_array(i32* %57, i32 %58, i32*** %9, i64* %14)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i32** @malloc(i32 %68)
  store i32** %69, i32*** %12, align 8
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %146, %36
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %149

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %76, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %77, i64 %78
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %18, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, @vdev_hole_ops
  br i1 %89, label %90, label %125

90:                                               ; preds = %85, %74
  %91 = load i32**, i32*** %12, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %95 = call i64 @nvlist_alloc(i32** %93, i32 %94, i32 0)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load i32**, i32*** %12, align 8
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %104 = load i32, i32* @VDEV_TYPE_HOLE, align 4
  %105 = call i64 @nvlist_add_string(i32* %102, i32 %103, i32 %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  %109 = load i32**, i32*** %12, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %114 = call i64 @nvlist_add_uint64(i32* %112, i32 %113, i32 1)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @VERIFY(i32 %116)
  %118 = load i64, i64* %16, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %90
  %121 = load i64, i64* %15, align 8
  store i64 %121, i64* %16, align 8
  br label %122

122:                                              ; preds = %120, %90
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %146

125:                                              ; preds = %85
  store i64 0, i64* %16, align 8
  %126 = load i32**, i32*** %9, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %131 = call i64 @nvlist_lookup_nvlist_array(i32* %129, i32 %130, i32*** %19, i64* %20)
  %132 = icmp eq i64 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @VERIFY(i32 %133)
  %135 = load i32**, i32*** %19, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32**, i32*** %12, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %15, align 8
  %141 = getelementptr inbounds i32*, i32** %138, i64 %139
  %142 = call i64 @nvlist_dup(i32* %137, i32** %141, i32 0)
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @VERIFY(i32 %144)
  br label %146

146:                                              ; preds = %125, %122
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %70

149:                                              ; preds = %70
  %150 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %151 = call i64 @nvlist_alloc(i32** %11, i32 %150, i32 0)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @VERIFY(i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %157 = load i32, i32* @VDEV_TYPE_ROOT, align 4
  %158 = call i64 @nvlist_add_string(i32* %155, i32 %156, i32 %157)
  %159 = icmp eq i64 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @VERIFY(i32 %160)
  %162 = load i32*, i32** %11, align 8
  %163 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %164 = load i32**, i32*** %12, align 8
  %165 = load i64, i64* %16, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %149
  %168 = load i64, i64* %16, align 8
  br label %171

169:                                              ; preds = %149
  %170 = load i64, i64* %15, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i64 [ %168, %167 ], [ %170, %169 ]
  %173 = call i64 @nvlist_add_nvlist_array(i32* %162, i32 %163, i32** %164, i64 %172)
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @VERIFY(i32 %175)
  %177 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %178 = call i64 @nvlist_alloc(i32** %10, i32 %177, i32 0)
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @VERIFY(i32 %180)
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %184 = load i32*, i32** %11, align 8
  %185 = call i64 @nvlist_add_nvlist(i32* %182, i32 %183, i32* %184)
  %186 = icmp eq i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @VERIFY(i32 %187)
  store i64 0, i64* %13, align 8
  br label %189

189:                                              ; preds = %199, %171
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %15, align 8
  %192 = icmp ult i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = load i32**, i32*** %12, align 8
  %195 = load i64, i64* %13, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @nvlist_free(i32* %197)
  br label %199

199:                                              ; preds = %193
  %200 = load i64, i64* %13, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %13, align 8
  br label %189

202:                                              ; preds = %189
  %203 = load i32**, i32*** %12, align 8
  %204 = call i32 @free(i32** %203)
  %205 = load i32*, i32** %11, align 8
  %206 = call i32 @nvlist_free(i32* %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = load i32, i32* @SCL_VDEV, align 4
  %209 = load i32, i32* @FTAG, align 4
  %210 = call i32 @spa_config_exit(%struct.TYPE_14__* %207, i32 %208, i32 %209)
  %211 = load i32, i32* @RW_WRITER, align 4
  %212 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %211)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* @B_FALSE, align 4
  %216 = call i32 @spa_vdev_split_mirror(%struct.TYPE_14__* %213, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %214, i32* null, i32 %215)
  store i32 %216, i32* %17, align 4
  %217 = call i32 @rw_exit(i32* @ztest_name_lock)
  %218 = load i32*, i32** %10, align 8
  %219 = call i32 @nvlist_free(i32* %218)
  %220 = load i32, i32* %17, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %238

222:                                              ; preds = %202
  %223 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %224 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %226 = call i32 @show_pool_stats(%struct.TYPE_14__* %225)
  %227 = call %struct.TYPE_14__* @spa_lookup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %228 = call i32 @show_pool_stats(%struct.TYPE_14__* %227)
  %229 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %222, %202
  %239 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %240

240:                                              ; preds = %238, %34
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_destroy(i8*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32** @malloc(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i64) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @spa_vdev_split_mirror(%struct.TYPE_14__*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @show_pool_stats(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @spa_lookup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
