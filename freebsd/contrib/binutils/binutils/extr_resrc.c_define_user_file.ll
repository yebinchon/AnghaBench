; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_user_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_user_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.stat = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32* }

@FOPEN_RB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"stat failed on file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@resources = common dso_local global i32 0, align 4
@RES_TYPE_USERDATA = common dso_local global i32 0, align 4
@RCDATA_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_user_file(i32 %0, i64 %1, i32 %2, i64 %3, %struct.TYPE_19__* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [3 x %struct.TYPE_20__], align 16
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = bitcast %struct.TYPE_20__* %7 to { i32, i64 }*
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 0
  store i32 %0, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 1
  store i64 %1, i64* %19, align 8
  %20 = bitcast %struct.TYPE_20__* %8 to { i32, i64 }*
  %21 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 0
  store i32 %2, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 1
  store i64 %3, i64* %22, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %9, align 8
  store i8* %5, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @FOPEN_RB, align 4
  %25 = call i32* @open_file_search(i8* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12)
  store i32* %25, i32** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @stat(i8* %26, %struct.stat* %13)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @fatal(i32 %30, i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %6
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @res_alloc(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @get_data(i32* %40, i32* %41, i32 %43, i8* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @free(i8* %48)
  %50 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 0
  %51 = bitcast %struct.TYPE_20__* %50 to i8*
  %52 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 1
  %54 = bitcast %struct.TYPE_20__* %53 to i8*
  %55 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 2
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 2
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 16
  %64 = getelementptr inbounds [3 x %struct.TYPE_20__], [3 x %struct.TYPE_20__]* %15, i64 0, i64 0
  %65 = call %struct.TYPE_18__* @define_resource(i32* @resources, i32 3, %struct.TYPE_20__* %64, i32 0)
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %16, align 8
  %66 = load i32, i32* @RES_TYPE_USERDATA, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = call i64 @res_alloc(i32 32)
  %70 = inttoptr i64 %69 to %struct.TYPE_21__*
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store %struct.TYPE_21__* %70, %struct.TYPE_21__** %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* @RCDATA_BUFFER, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i32* %94, i32** %101, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %105 = bitcast %struct.TYPE_19__* %103 to i8*
  %106 = bitcast %struct.TYPE_19__* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 4 %106, i64 4, i1 false)
  ret void
}

declare dso_local i32* @open_file_search(i8*, i32, i8*, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @get_data(i32*, i32*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @define_resource(i32*, i32, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
