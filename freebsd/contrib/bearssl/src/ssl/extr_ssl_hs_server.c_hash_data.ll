; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_server.c_hash_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_hs_server.c_hash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 (i32*, i8*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }
%struct.TYPE_9__ = type { i32 }

@br_md5_ID = common dso_local global i32 0, align 4
@br_sha1_ID = common dso_local global i32 0, align 4
@BR_HASHDESC_OUT_OFF = common dso_local global i64 0, align 8
@BR_HASHDESC_OUT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8*, i32, i8*, i64)* @hash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_data(%struct.TYPE_8__* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca [36 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* @br_md5_ID, align 4
  %22 = call %struct.TYPE_10__* @br_multihash_getimpl(i32* %20, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %12, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %111

26:                                               ; preds = %17
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32 (i32*)*, i32 (i32*)** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %31 = call i32 %29(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 %34(i32* %35, i8* %36, i64 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %43 = getelementptr inbounds [36 x i8], [36 x i8]* %14, i64 0, i64 0
  %44 = call i32 %41(i32* %42, i8* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* @br_sha1_ID, align 4
  %49 = call %struct.TYPE_10__* @br_multihash_getimpl(i32* %47, i32 %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %12, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = icmp eq %struct.TYPE_10__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %111

53:                                               ; preds = %26
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32 (i32*)*, i32 (i32*)** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %58 = call i32 %56(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 %61(i32* %62, i8* %63, i64 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %70 = getelementptr inbounds [36 x i8], [36 x i8]* %14, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 16
  %72 = call i32 %68(i32* %69, i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds [36 x i8], [36 x i8]* %14, i64 0, i64 0
  %75 = call i32 @memcpy(i8* %73, i8* %74, i32 36)
  store i64 36, i64* %6, align 8
  br label %111

76:                                               ; preds = %5
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %9, align 4
  %81 = call %struct.TYPE_10__* @br_multihash_getimpl(i32* %79, i32 %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %12, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %83 = icmp eq %struct.TYPE_10__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i64 0, i64* %6, align 8
  br label %111

85:                                               ; preds = %76
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32 (i32*)*, i32 (i32*)** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %90 = call i32 %88(i32* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 %93(i32* %94, i8* %95, i64 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 %100(i32* %101, i8* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BR_HASHDESC_OUT_OFF, align 8
  %108 = lshr i64 %106, %107
  %109 = load i64, i64* @BR_HASHDESC_OUT_MASK, align 8
  %110 = and i64 %108, %109
  store i64 %110, i64* %6, align 8
  br label %111

111:                                              ; preds = %85, %84, %53, %52, %25
  %112 = load i64, i64* %6, align 8
  ret i64 %112
}

declare dso_local %struct.TYPE_10__* @br_multihash_getimpl(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
