; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ndbm.c_search_ndbm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ndbm.c_search_ndbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i64 }

@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i8**)* @search_ndbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_ndbm(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast %struct.TYPE_9__* %10 to { i8*, i64 }*
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call { i8*, i64 } @dbm_fetch(i32* %19, i8* %22, i64 %24)
  %26 = bitcast %struct.TYPE_9__* %12 to { i8*, i64 }*
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 0
  %28 = extractvalue { i8*, i64 } %25, 0
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 1
  %30 = extractvalue { i8*, i64 } %25, 1
  store i64 %30, i64* %29, align 8
  %31 = bitcast %struct.TYPE_9__* %11 to i8*
  %32 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @sun_entry2amd(i8* %51, i8* %53)
  %55 = load i8**, i8*** %9, align 8
  store i8* %54, i8** %55, align 8
  br label %61

56:                                               ; preds = %41, %36
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @xstrdup(i8* %58)
  %60 = load i8**, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %50
  store i32 0, i32* %5, align 4
  br label %64

62:                                               ; preds = %4
  %63 = load i32, i32* @ENOENT, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local { i8*, i64 } @dbm_fetch(i32*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
