; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_consider_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_consider_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.wildcard_list = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.name_list* }
%struct.name_list = type { i32, %struct.name_list* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32*, %struct.wildcard_list*, i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)*, i8*)* @walk_wild_consider_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_wild_consider_section(i32* %0, %struct.TYPE_12__* %1, i32* %2, %struct.wildcard_list* %3, i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wildcard_list*, align 8
  %11 = alloca i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.name_list*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.wildcard_list* %3, %struct.wildcard_list** %10, align 8
  store i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)* %4, i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %18 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.name_list*, %struct.name_list** %19, align 8
  store %struct.name_list* %20, %struct.name_list** %14, align 8
  br label %21

21:                                               ; preds = %112, %6
  %22 = load %struct.name_list*, %struct.name_list** %14, align 8
  %23 = icmp ne %struct.name_list* %22, null
  br i1 %23, label %24, label %116

24:                                               ; preds = %21
  %25 = load %struct.name_list*, %struct.name_list** %14, align 8
  %26 = getelementptr inbounds %struct.name_list, %struct.name_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wildcardp(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.name_list*, %struct.name_list** %14, align 8
  %33 = getelementptr inbounds %struct.name_list, %struct.name_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @fnmatch(i32 %34, i32* %37, i32 0)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  br label %51

41:                                               ; preds = %24
  %42 = load %struct.name_list*, %struct.name_list** %14, align 8
  %43 = getelementptr inbounds %struct.name_list, %struct.name_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @strcmp(i32 %44, i32* %47)
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %41, %31
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %107, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %107

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %107

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %107

75:                                               ; preds = %66
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load %struct.name_list*, %struct.name_list** %14, align 8
  %80 = getelementptr inbounds %struct.name_list, %struct.name_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @fnmatch(i32 %81, i32* %88, i32 0)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %13, align 4
  br label %106

92:                                               ; preds = %75
  %93 = load %struct.name_list*, %struct.name_list** %14, align 8
  %94 = getelementptr inbounds %struct.name_list, %struct.name_list* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @strcmp(i32 %95, i32* %102)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %92, %78
  br label %107

107:                                              ; preds = %106, %66, %59, %54, %51
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %116

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.name_list*, %struct.name_list** %14, align 8
  %114 = getelementptr inbounds %struct.name_list, %struct.name_list* %113, i32 0, i32 1
  %115 = load %struct.name_list*, %struct.name_list** %114, align 8
  store %struct.name_list* %115, %struct.name_list** %14, align 8
  br label %21

116:                                              ; preds = %110, %21
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)*, i32 (i32*, %struct.wildcard_list*, i32*, %struct.TYPE_12__*, i8*)** %11, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 %120(i32* %121, %struct.wildcard_list* %122, i32* %123, %struct.TYPE_12__* %124, i8* %125)
  br label %127

127:                                              ; preds = %119, %116
  ret void
}

declare dso_local i32 @wildcardp(i32) #1

declare dso_local i64 @fnmatch(i32, i32*, i32) #1

declare dso_local i64 @strcmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
