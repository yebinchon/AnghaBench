; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_cached_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_cached_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.cache_st* }
%struct.cache_st = type { i32, i32 }

@CST_UPDATE = common dso_local global i32 0, align 4
@DIR = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Using cached time %s for %s\0A\00", align 1
@CST_LSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"   Caching %s for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.stat*, i32)* @cached_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cached_stats(i32* %0, i8* %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.cache_st*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %128

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.TYPE_4__* @Hash_FindEntry(i32* %22, i8* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CST_UPDATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.cache_st*, %struct.cache_st** %34, align 8
  store %struct.cache_st* %35, %struct.cache_st** %11, align 8
  %36 = load %struct.stat*, %struct.stat** %8, align 8
  %37 = call i32 @memset(%struct.stat* %36, i32 0, i32 8)
  %38 = load %struct.cache_st*, %struct.cache_st** %11, align 8
  %39 = getelementptr inbounds %struct.cache_st, %struct.cache_st* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.stat*, %struct.stat** %8, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cache_st*, %struct.cache_st** %11, align 8
  %44 = getelementptr inbounds %struct.cache_st, %struct.cache_st* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.stat*, %struct.stat** %8, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DIR, align 4
  %49 = call i64 @DEBUG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load i32, i32* @debug_file, align 4
  %53 = load %struct.stat*, %struct.stat** %8, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @Targ_FmtTime(i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %57)
  br label %59

59:                                               ; preds = %51, %32
  store i32 0, i32* %5, align 4
  br label %128

60:                                               ; preds = %27, %21
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CST_LSTAT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.stat*, %struct.stat** %8, align 8
  %68 = call i32 @lstat(i8* %66, %struct.stat* %67)
  br label %73

69:                                               ; preds = %60
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.stat*, %struct.stat** %8, align 8
  %72 = call i32 @stat(i8* %70, %struct.stat* %71)
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32 [ %68, %65 ], [ %72, %69 ]
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 -1, i32* %5, align 4
  br label %128

78:                                               ; preds = %73
  %79 = load %struct.stat*, %struct.stat** %8, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.stat*, %struct.stat** %8, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = icmp ne %struct.TYPE_4__* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call %struct.TYPE_4__* @Hash_CreateEntry(i32* %90, i8* %91, i32* null)
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %10, align 8
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.cache_st*, %struct.cache_st** %95, align 8
  %97 = icmp ne %struct.cache_st* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = call %struct.cache_st* @bmake_malloc(i32 8)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store %struct.cache_st* %99, %struct.cache_st** %101, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.cache_st*, %struct.cache_st** %104, align 8
  store %struct.cache_st* %105, %struct.cache_st** %11, align 8
  %106 = load %struct.stat*, %struct.stat** %8, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cache_st*, %struct.cache_st** %11, align 8
  %110 = getelementptr inbounds %struct.cache_st, %struct.cache_st* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.stat*, %struct.stat** %8, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cache_st*, %struct.cache_st** %11, align 8
  %115 = getelementptr inbounds %struct.cache_st, %struct.cache_st* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @DIR, align 4
  %117 = call i64 @DEBUG(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %102
  %120 = load i32, i32* @debug_file, align 4
  %121 = load %struct.stat*, %struct.stat** %8, align 8
  %122 = getelementptr inbounds %struct.stat, %struct.stat* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @Targ_FmtTime(i32 %123)
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %119, %102
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %77, %59, %20
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_4__* @Hash_FindEntry(i32*, i8*) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @Targ_FmtTime(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local %struct.TYPE_4__* @Hash_CreateEntry(i32*, i8*, i32*) #1

declare dso_local %struct.cache_st* @bmake_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
