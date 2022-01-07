; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_lru_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_lru.c_lru_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }

@SESSION_ID_LEN = common dso_local global i32 0, align 4
@ADDR_NULL = common dso_local global i64 0, align 8
@VERSION_OFF = common dso_local global i64 0, align 8
@CIPHER_SUITE_OFF = common dso_local global i64 0, align 8
@MASTER_SECRET_OFF = common dso_local global i64 0, align 8
@MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, %struct.TYPE_10__*)* @lru_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_load(i32** %0, i32* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %16 = load i32, i32* @SESSION_ID_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = bitcast i32** %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %128

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mask_id(%struct.TYPE_11__* %29, i32 %32, i8* %19)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = call i64 @find_node(%struct.TYPE_11__* %34, i8* %19, i32* null)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ADDR_NULL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %28
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @VERSION_OFF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i8* @br_dec16be(i64 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %128

52:                                               ; preds = %39
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @CIPHER_SUITE_OFF, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i8* @br_dec16be(i64 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @MASTER_SECRET_OFF, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @MASTER_SECRET_LEN, align 4
  %77 = call i32 @memcpy(i32 %68, i64 %75, i32 %76)
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %52
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @get_prev(%struct.TYPE_11__* %84, i64 %85)
  store i64 %86, i64* %14, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @get_next(%struct.TYPE_11__* %87, i64 %88)
  store i64 %89, i64* %15, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @set_next(%struct.TYPE_11__* %90, i64 %91, i64 %92)
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @ADDR_NULL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %106

101:                                              ; preds = %83
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = call i32 @set_prev(%struct.TYPE_11__* %102, i64 %103, i64 %104)
  br label %106

106:                                              ; preds = %101, %97
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @set_prev(%struct.TYPE_11__* %107, i64 %110, i64 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @set_next(%struct.TYPE_11__* %113, i64 %114, i64 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @ADDR_NULL, align 8
  %122 = call i32 @set_prev(%struct.TYPE_11__* %119, i64 %120, i64 %121)
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %106, %52
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %128

127:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %126, %51, %27
  %129 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mask_id(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i64 @find_node(%struct.TYPE_11__*, i8*, i32*) #2

declare dso_local i8* @br_dec16be(i64) #2

declare dso_local i32 @memcpy(i32, i64, i32) #2

declare dso_local i64 @get_prev(%struct.TYPE_11__*, i64) #2

declare dso_local i64 @get_next(%struct.TYPE_11__*, i64) #2

declare dso_local i32 @set_next(%struct.TYPE_11__*, i64, i64) #2

declare dso_local i32 @set_prev(%struct.TYPE_11__*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
