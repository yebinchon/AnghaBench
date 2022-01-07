; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_merge_into_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_merge_into_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }

@MCD_F_SELFUNIQUIFY = common dso_local global i32 0, align 4
@MCD_F_REFMERGE = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Type association stats\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Layout hash stats\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_into_master(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ true, %35 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %30, %25
  %46 = phi i1 [ false, %30 ], [ false, %25 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  br label %57

55:                                               ; preds = %45
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi %struct.TYPE_7__* [ %54, %53 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %59, align 8
  %60 = call i8* @alist_new(i32* null, i32* null)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = call i8* @alist_new(i32* null, i32* null)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 0, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* @MCD_F_SELFUNIQUIFY, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* @MCD_F_REFMERGE, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @MAX(i8* %83, i8* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @MAX(i8* %92, i8* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @merge_types(i32 %101, %struct.TYPE_8__* %9)
  %103 = load i32, i32* @debug_level, align 4
  %104 = icmp sge i32 %103, 3
  br i1 %104, label %105, label %116

105:                                              ; preds = %80
  %106 = call i32 @debug(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @alist_stats(i8* %108, i32 0)
  %110 = call i32 @debug(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @hash_stats(i32 %114, i32 1)
  br label %116

116:                                              ; preds = %105, %80
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @alist_free(i8* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @alist_free(i8* %121)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = icmp ne %struct.TYPE_7__* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %116
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %133, %116
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alist_new(i32*, i32*) #1

declare dso_local i8* @MAX(i8*, i8*) #1

declare dso_local i32 @merge_types(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @alist_stats(i8*, i32) #1

declare dso_local i32 @hash_stats(i32, i32) #1

declare dso_local i32 @alist_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
