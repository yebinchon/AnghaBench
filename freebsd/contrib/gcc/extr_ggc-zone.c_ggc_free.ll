; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_entry = type { %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.large_page_entry = type { i64, %struct.TYPE_7__, %struct.TYPE_5__*, %struct.large_page_entry* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.large_page_entry* }
%struct.TYPE_5__ = type { %struct.large_page_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page_entry*, align 8
  %4 = alloca %struct.large_page_entry*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @ggc_get_size(i8* %7)
  %9 = call i32 @poison_region(i8* %6, i64 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call %struct.page_entry* @zone_get_object_page(i8* %10)
  store %struct.page_entry* %11, %struct.page_entry** %3, align 8
  %12 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %13 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %1
  %17 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %18 = bitcast %struct.page_entry* %17 to %struct.large_page_entry*
  store %struct.large_page_entry* %18, %struct.large_page_entry** %4, align 8
  %19 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %20 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %25 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %24, i32 0, i32 3
  %26 = load %struct.large_page_entry*, %struct.large_page_entry** %25, align 8
  %27 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %28 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.large_page_entry* %26, %struct.large_page_entry** %30, align 8
  br label %50

31:                                               ; preds = %16
  %32 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %33 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.large_page_entry*, %struct.large_page_entry** %36, align 8
  %38 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %39 = icmp eq %struct.large_page_entry* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %43 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %42, i32 0, i32 3
  %44 = load %struct.large_page_entry*, %struct.large_page_entry** %43, align 8
  %45 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %46 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store %struct.large_page_entry* %44, %struct.large_page_entry** %49, align 8
  br label %50

50:                                               ; preds = %31, %23
  %51 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %52 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %51, i32 0, i32 3
  %53 = load %struct.large_page_entry*, %struct.large_page_entry** %52, align 8
  %54 = icmp ne %struct.large_page_entry* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %57 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %60 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %59, i32 0, i32 3
  %61 = load %struct.large_page_entry*, %struct.large_page_entry** %60, align 8
  %62 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %61, i32 0, i32 2
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %62, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %65 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %68 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %66
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  %76 = load %struct.large_page_entry*, %struct.large_page_entry** %4, align 8
  %77 = call i32 @free_large_page(%struct.large_page_entry* %76)
  br label %101

78:                                               ; preds = %1
  %79 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %80 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %100

84:                                               ; preds = %78
  %85 = load i8*, i8** %2, align 8
  %86 = call i64 @ggc_get_size(i8* %85)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %89 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, %87
  store i64 %93, i64* %91, align 8
  %94 = load i8*, i8** %2, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %97 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call i32 @free_chunk(i8* %94, i64 %95, %struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %84, %83
  br label %101

101:                                              ; preds = %100, %63
  ret void
}

declare dso_local i32 @poison_region(i8*, i64) #1

declare dso_local i64 @ggc_get_size(i8*) #1

declare dso_local %struct.page_entry* @zone_get_object_page(i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @free_large_page(%struct.large_page_entry*) #1

declare dso_local i32 @free_chunk(i8*, i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
