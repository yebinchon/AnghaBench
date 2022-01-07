; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_aux_add_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_aux_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@ztest_shared = common dso_local global %struct.TYPE_14__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_15__* null, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_L2CACHE = common dso_local global i8* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@ztest_aux_template = common dso_local global i8* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"spa_vdev_add(%p) = %d\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"spa_vdev_remove(%llu) = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_aux_add_remove(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ztest_shared, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ztest_spa, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %22 = call i64 @ztest_random(i32 2)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %8, align 8
  %27 = load i8*, i8** @ZPOOL_CONFIG_SPARES, align 8
  store i8* %27, i8** %9, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %8, align 8
  %31 = load i8*, i8** @ZPOOL_CONFIG_L2CACHE, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = load i32, i32* @SCL_VDEV, align 4
  %36 = load i32, i32* @FTAG, align 4
  %37 = load i32, i32* @RW_READER, align 4
  %38 = call i32 @spa_config_enter(%struct.TYPE_15__* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = call i64 @ztest_random(i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %48, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @ztest_random(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %49, i64 %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  br label %119

58:                                               ; preds = %43, %32
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %117, %58
  %62 = load i32, i32* @MAXPATHLEN, align 4
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %12, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %13, align 8
  %66 = trunc i64 %63 to i32
  %67 = load i8*, i8** @ztest_aux_template, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 2), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 1), align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @snprintf(i8* %65, i32 %66, i8* %67, i32 %68, i32 %69, i8* %70, i64 %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %95, %61
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %84, i64 %86
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @strcmp(i32 %90, i8* %65)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %75

98:                                               ; preds = %93, %75
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = call i32* @vdev_lookup_by_path(i32* %105, i8* %65)
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 2, i32* %15, align 4
  br label %114

109:                                              ; preds = %104, %98
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %109, %108
  %115 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %15, align 4
  switch i32 %116, label %166 [
    i32 0, label %117
    i32 2, label %118
  ]

117:                                              ; preds = %114
  br label %61

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118, %46
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load i32, i32* @SCL_VDEV, align 4
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @spa_config_exit(%struct.TYPE_15__* %120, i32 %121, i32 %122)
  %124 = load i64, i64* %10, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ztest_opts, i32 0, i32 0), align 4
  %129 = mul nsw i32 %128, 5
  %130 = sdiv i32 %129, 4
  %131 = call i32* @make_vdev_root(i32* null, i8* %127, i32* null, i32 %130, i32 0, i32 0, i32 0, i32 0, i32 1)
  store i32* %131, i32** %16, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @spa_vdev_add(%struct.TYPE_15__* %132, i32* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
  ]

136:                                              ; preds = %126
  br label %142

137:                                              ; preds = %126
  %138 = load i32*, i32** %16, align 8
  %139 = ptrtoint i32* %138 to i64
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %136
  %143 = load i32*, i32** %16, align 8
  %144 = call i32 @nvlist_free(i32* %143)
  br label %164

145:                                              ; preds = %119
  %146 = call i64 @ztest_random(i32 2)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @vdev_online(%struct.TYPE_15__* %149, i64 %150, i32 0, i32* null)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i32, i32* @B_FALSE, align 4
  %156 = call i32 @spa_vdev_remove(%struct.TYPE_15__* %153, i64 %154, i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 130, label %158
    i32 129, label %158
    i32 128, label %158
  ]

158:                                              ; preds = %152, %152, %152, %152
  br label %163

159:                                              ; preds = %152
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %158
  br label %164

164:                                              ; preds = %163, %142
  %165 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  ret void

166:                                              ; preds = %114
  unreachable
}

declare dso_local i64 @ztest_random(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_15__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @vdev_lookup_by_path(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spa_config_exit(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @make_vdev_root(i32*, i8*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spa_vdev_add(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @fatal(i32, i8*, i64, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @vdev_online(%struct.TYPE_15__*, i64, i32, i32*) #1

declare dso_local i32 @spa_vdev_remove(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
