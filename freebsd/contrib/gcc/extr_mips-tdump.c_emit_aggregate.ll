; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_emit_aggregate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_emit_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ST_RFDESCAPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"<undefined>\00", align 1
@indexNil = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<no name>\00", align 1
@sym_hdr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@file_desc = common dso_local global %struct.TYPE_11__* null, align 8
@rfile_desc = common dso_local global i64* null, align 8
@l_strings = common dso_local global i8* null, align 8
@l_symbols = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%s %s { ifd = %u, index = %u }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i64, i32, i8*, %struct.TYPE_11__*)* @emit_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_aggregate(i8* %0, i64 %1, i32 %2, i64 %3, i32 %4, i8* %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %1, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %2, i32* %19, align 4
  %20 = bitcast %struct.TYPE_12__* %8 to i8*
  %21 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  store i64 %3, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  store i32 %4, i32* %23, align 4
  %24 = bitcast %struct.TYPE_12__* %10 to i8*
  %25 = bitcast { i64, i32 }* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  store i8* %0, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @ST_RFDESCAPE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %35, %7
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ST_RFDESCAPE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %38
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %97

51:                                               ; preds = %47, %41
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @indexNil, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %96

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = icmp eq %struct.TYPE_11__* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sym_hdr, i32 0, i32 0), align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %56
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @file_desc, align 8
  %64 = load i32, i32* %15, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %65
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %14, align 8
  br label %79

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @file_desc, align 8
  %69 = load i64*, i64** @rfile_desc, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %77
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %14, align 8
  br label %79

79:                                               ; preds = %67, %62
  %80 = load i8*, i8** @l_strings, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @l_symbols, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %85, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %83, %93
  %95 = getelementptr inbounds i8, i8* %80, i64 %94
  store i8* %95, i8** %17, align 8
  br label %96

96:                                               ; preds = %79, %55
  br label %97

97:                                               ; preds = %96, %50
  %98 = load i8*, i8** %12, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %99, i8* %100, i32 %101, i32 %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
