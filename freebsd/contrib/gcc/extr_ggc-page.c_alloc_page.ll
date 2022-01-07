; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_alloc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i64, i32, %struct.page_entry*, %struct.TYPE_4__* }
%struct.page_entry = type { i64, i8*, i32, i64, i64, i32, i64*, %struct.TYPE_4__*, %struct.page_entry* }
%struct.TYPE_4__ = type { i8*, i64, i64, %struct.TYPE_4__* }

@G = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@HOST_BITS_PER_LONG = common dso_local global i64 0, align 8
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Allocating page at %p, object size=%lu, data %p-%p\0A\00", align 1
@GGC_QUIRE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page_entry* (i32)* @alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page_entry* @alloc_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page_entry*, align 8
  %4 = alloca %struct.page_entry*, align 8
  %5 = alloca %struct.page_entry**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @OBJECTS_PER_PAGE(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 1
  %15 = call i64 @BITMAP_SIZE(i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 -4, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @OBJECT_SIZE(i32 %19)
  %21 = mul i64 %18, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %1
  store %struct.page_entry* null, %struct.page_entry** %3, align 8
  store i8* null, i8** %6, align 8
  store %struct.page_entry** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 6), %struct.page_entry*** %5, align 8
  %28 = load %struct.page_entry**, %struct.page_entry*** %5, align 8
  %29 = load %struct.page_entry*, %struct.page_entry** %28, align 8
  store %struct.page_entry* %29, %struct.page_entry** %4, align 8
  br label %30

30:                                               ; preds = %41, %27
  %31 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %32 = icmp ne %struct.page_entry* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %35 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %43 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %42, i32 0, i32 8
  store %struct.page_entry** %43, %struct.page_entry*** %5, align 8
  %44 = load %struct.page_entry**, %struct.page_entry*** %5, align 8
  %45 = load %struct.page_entry*, %struct.page_entry** %44, align 8
  store %struct.page_entry* %45, %struct.page_entry** %4, align 8
  br label %30

46:                                               ; preds = %39, %30
  %47 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %48 = icmp ne %struct.page_entry* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %51 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %50, i32 0, i32 8
  %52 = load %struct.page_entry*, %struct.page_entry** %51, align 8
  %53 = load %struct.page_entry**, %struct.page_entry*** %5, align 8
  store %struct.page_entry* %52, %struct.page_entry** %53, align 8
  %54 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %55 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  %57 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %58 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  store %struct.page_entry* %63, %struct.page_entry** %3, align 8
  %64 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @memset(%struct.page_entry* %64, i32 0, i64 %65)
  br label %70

67:                                               ; preds = %49
  %68 = load %struct.page_entry*, %struct.page_entry** %4, align 8
  %69 = call i32 @free(%struct.page_entry* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %73 = icmp eq %struct.page_entry* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %9, align 8
  %76 = call %struct.page_entry* @xcalloc(i32 1, i64 %75)
  store %struct.page_entry* %76, %struct.page_entry** %3, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %80 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %83 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 3), align 8
  %85 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %86 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %89 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %92 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %94 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %93, i32 0, i32 5
  store i32 1, i32* %94, align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 3), align 8
  %96 = shl i64 1, %95
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 4), align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 4), align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %101 = urem i64 %99, %100
  %102 = shl i64 1, %101
  %103 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %104 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @HOST_BITS_PER_LONG, align 8
  %108 = udiv i64 %106, %107
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 %102, i64* %109, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %112 = call i32 @set_page_table_entry(i8* %110, %struct.page_entry* %111)
  %113 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %115, label %127

115:                                              ; preds = %77
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 5), align 8
  %117 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  %118 = bitcast %struct.page_entry* %117 to i8*
  %119 = load i32, i32* %2, align 4
  %120 = call i64 @OBJECT_SIZE(i32 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 -1
  %126 = call i32 @fprintf(i32 %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %118, i64 %120, i8* %121, i8* %125)
  br label %127

127:                                              ; preds = %115, %77
  %128 = load %struct.page_entry*, %struct.page_entry** %3, align 8
  ret %struct.page_entry* %128
}

declare dso_local i64 @OBJECTS_PER_PAGE(i32) #1

declare dso_local i64 @BITMAP_SIZE(i64) #1

declare dso_local i64 @OBJECT_SIZE(i32) #1

declare dso_local i32 @memset(%struct.page_entry*, i32, i64) #1

declare dso_local i32 @free(%struct.page_entry*) #1

declare dso_local %struct.page_entry* @xcalloc(i32, i64) #1

declare dso_local i32 @set_page_table_entry(i8*, %struct.page_entry*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
