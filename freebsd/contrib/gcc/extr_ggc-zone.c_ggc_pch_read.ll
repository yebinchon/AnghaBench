; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_ggc_pch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32* }
%struct.TYPE_4__ = type { i32, %struct.alloc_zone* }
%struct.alloc_zone = type { %struct.large_page_entry*, %struct.small_page_entry*, i64, i32*, i64, i32, i64, %struct.alloc_zone* }
%struct.large_page_entry = type { %struct.large_page_entry* }
%struct.small_page_entry = type { i32, %struct.small_page_entry* }
%struct.ggc_pch_ondisk = type { i32 }
%struct.page_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4
@MAX_ALIGNMENT = common dso_local global i32 0, align 4
@pch_zone = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@G = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_OVERHEAD = common dso_local global i32 0, align 4
@GGC_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_pch_read(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ggc_pch_ondisk, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.alloc_zone*, align 8
  %8 = alloca %struct.page_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.small_page_entry*, align 8
  %11 = alloca %struct.small_page_entry*, align 8
  %12 = alloca %struct.large_page_entry*, align 8
  %13 = alloca %struct.large_page_entry*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @fread(%struct.ggc_pch_ondisk* %5, i32 4, i32 1, i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.ggc_pch_ondisk, %struct.ggc_pch_ondisk* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %23 = mul nsw i32 %22, 8
  %24 = call i64 @CEIL(i32 %21, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @MAX_ALIGNMENT, align 4
  %27 = call i64 @ROUND_UP(i64 %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = getelementptr inbounds %struct.ggc_pch_ondisk, %struct.ggc_pch_ondisk* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 0), align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 0), align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 3), align 8
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 3), align 8
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 2), align 8
  %38 = load %struct.alloc_zone*, %struct.alloc_zone** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @G, i32 0, i32 1), align 8
  store %struct.alloc_zone* %38, %struct.alloc_zone** %7, align 8
  br label %39

39:                                               ; preds = %96, %19
  %40 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %41 = icmp ne %struct.alloc_zone* %40, null
  br i1 %41, label %42, label %100

42:                                               ; preds = %39
  %43 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %44 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %46 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memset(i32 %47, i32 0, i32 4)
  %49 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %50 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %52 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %54 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %56 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %55, i32 0, i32 1
  %57 = load %struct.small_page_entry*, %struct.small_page_entry** %56, align 8
  store %struct.small_page_entry* %57, %struct.small_page_entry** %10, align 8
  br label %58

58:                                               ; preds = %74, %42
  %59 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %60 = icmp ne %struct.small_page_entry* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %63 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %62, i32 0, i32 1
  %64 = load %struct.small_page_entry*, %struct.small_page_entry** %63, align 8
  store %struct.small_page_entry* %64, %struct.small_page_entry** %11, align 8
  %65 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %66 = getelementptr inbounds %struct.small_page_entry, %struct.small_page_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @G, i32 0, i32 0), align 8
  %69 = load i32, i32* @PAGE_OVERHEAD, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @memset(i32 %67, i32 0, i32 %70)
  %72 = load %struct.small_page_entry*, %struct.small_page_entry** %10, align 8
  %73 = call i32 @free_small_page(%struct.small_page_entry* %72)
  br label %74

74:                                               ; preds = %61
  %75 = load %struct.small_page_entry*, %struct.small_page_entry** %11, align 8
  store %struct.small_page_entry* %75, %struct.small_page_entry** %10, align 8
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %78 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %77, i32 0, i32 0
  %79 = load %struct.large_page_entry*, %struct.large_page_entry** %78, align 8
  store %struct.large_page_entry* %79, %struct.large_page_entry** %12, align 8
  br label %80

80:                                               ; preds = %89, %76
  %81 = load %struct.large_page_entry*, %struct.large_page_entry** %12, align 8
  %82 = icmp ne %struct.large_page_entry* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.large_page_entry*, %struct.large_page_entry** %12, align 8
  %85 = getelementptr inbounds %struct.large_page_entry, %struct.large_page_entry* %84, i32 0, i32 0
  %86 = load %struct.large_page_entry*, %struct.large_page_entry** %85, align 8
  store %struct.large_page_entry* %86, %struct.large_page_entry** %13, align 8
  %87 = load %struct.large_page_entry*, %struct.large_page_entry** %12, align 8
  %88 = call i32 @free_large_page(%struct.large_page_entry* %87)
  br label %89

89:                                               ; preds = %83
  %90 = load %struct.large_page_entry*, %struct.large_page_entry** %13, align 8
  store %struct.large_page_entry* %90, %struct.large_page_entry** %12, align 8
  br label %80

91:                                               ; preds = %80
  %92 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %93 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %92, i32 0, i32 1
  store %struct.small_page_entry* null, %struct.small_page_entry** %93, align 8
  %94 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %95 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %94, i32 0, i32 0
  store %struct.large_page_entry* null, %struct.large_page_entry** %95, align 8
  br label %96

96:                                               ; preds = %91
  %97 = load %struct.alloc_zone*, %struct.alloc_zone** %7, align 8
  %98 = getelementptr inbounds %struct.alloc_zone, %struct.alloc_zone* %97, i32 0, i32 7
  %99 = load %struct.alloc_zone*, %struct.alloc_zone** %98, align 8
  store %struct.alloc_zone* %99, %struct.alloc_zone** %7, align 8
  br label %39

100:                                              ; preds = %39
  %101 = call %struct.page_entry* @xcalloc(i32 1, i32 16)
  store %struct.page_entry* %101, %struct.page_entry** %8, align 8
  %102 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  %103 = load %struct.page_entry*, %struct.page_entry** %8, align 8
  %104 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.page_entry*, %struct.page_entry** %8, align 8
  %106 = getelementptr inbounds %struct.page_entry, %struct.page_entry* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 1), align 8
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %116, %100
  %109 = load i8*, i8** %9, align 8
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pch_zone, i32 0, i32 2), align 8
  %111 = icmp ult i8* %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.page_entry*, %struct.page_entry** %8, align 8
  %115 = call i32 @set_page_table_entry(i8* %113, %struct.page_entry* %114)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @GGC_PAGE_SIZE, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %9, align 8
  br label %108

121:                                              ; preds = %108
  ret void
}

declare dso_local i32 @fread(%struct.ggc_pch_ondisk*, i32, i32, i32*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i64 @CEIL(i32, i32) #1

declare dso_local i64 @ROUND_UP(i64, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @free_small_page(%struct.small_page_entry*) #1

declare dso_local i32 @free_large_page(%struct.large_page_entry*) #1

declare dso_local %struct.page_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @set_page_table_entry(i8*, %struct.page_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
