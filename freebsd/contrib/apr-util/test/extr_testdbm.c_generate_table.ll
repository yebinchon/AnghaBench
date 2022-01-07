; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_generate_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testdbm.c_generate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32 }

@p = common dso_local global i32 0, align 4
@NUM_TABLE_ROWS = common dso_local global i32 0, align 4
@APR_UUID_FORMATTED_LENGTH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* ()* @generate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @generate_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = load i32, i32* @p, align 4
  %5 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 32, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.TYPE_11__* @apr_pcalloc(i32 %4, i32 %8)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %58, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %13 = sdiv i32 %12, 2
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %10
  %16 = call i32 @apr_uuid_get(%struct.TYPE_12__* %2)
  %17 = load i32, i32* @p, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @apr_pmemdup(i32 %17, i32 %19, i32 4)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i8* %20, i8** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 8
  %33 = load i32, i32* @p, align 4
  %34 = load i8*, i8** @APR_UUID_FORMATTED_LENGTH, align 8
  %35 = call i8* @apr_palloc(i32 %33, i8* %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = load i32, i32* %1, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %35, i8** %41, align 8
  %42 = load i8*, i8** @APR_UUID_FORMATTED_LENGTH, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load i32, i32* %1, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = load i32, i32* %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @apr_uuid_format(i8* %56, %struct.TYPE_12__* %2)
  br label %58

58:                                               ; preds = %15
  %59 = load i32, i32* %1, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %10

61:                                               ; preds = %10
  br label %62

62:                                               ; preds = %109, %61
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* @NUM_TABLE_ROWS, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %62
  %67 = call i32 @apr_uuid_get(%struct.TYPE_12__* %2)
  %68 = load i32, i32* @p, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @apr_pmemdup(i32 %68, i32 %70, i32 4)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = load i32, i32* %1, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i8* %71, i8** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = load i32, i32* %1, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  %84 = load i32, i32* @p, align 4
  %85 = load i8*, i8** @APR_UUID_FORMATTED_LENGTH, align 8
  %86 = call i8* @apr_palloc(i32 %84, i8* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = load i32, i32* %1, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i8* %86, i8** %92, align 8
  %93 = load i8*, i8** @APR_UUID_FORMATTED_LENGTH, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = load i32, i32* %1, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = load i32, i32* %1, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @apr_uuid_format(i8* %107, %struct.TYPE_12__* %2)
  br label %109

109:                                              ; preds = %66
  %110 = load i32, i32* %1, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %62

112:                                              ; preds = %62
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %113
}

declare dso_local %struct.TYPE_11__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @apr_uuid_get(%struct.TYPE_12__*) #1

declare dso_local i8* @apr_pmemdup(i32, i32, i32) #1

declare dso_local i8* @apr_palloc(i32, i8*) #1

declare dso_local i32 @apr_uuid_format(i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
