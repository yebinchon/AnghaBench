; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_wild_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_wild_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.wildcard_list*, i64, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.wildcard_list = type { %struct.wildcard_list*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [6 x i8] c"SORT(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"EXCLUDE_FILE(%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @print_wild_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_wild_statement(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wildcard_list*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @print_space()
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  br label %26

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.wildcard_list*, %struct.wildcard_list** %36, align 8
  store %struct.wildcard_list* %37, %struct.wildcard_list** %5, align 8
  br label %38

38:                                               ; preds = %113, %33
  %39 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %40 = icmp ne %struct.wildcard_list* %39, null
  br i1 %40, label %41, label %117

41:                                               ; preds = %38
  %42 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %43 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %51 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %57 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %64 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %6, align 8
  br label %69

69:                                               ; preds = %77, %55
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %6, align 8
  br label %69

81:                                               ; preds = %69
  %82 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %49
  %84 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %85 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %91 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %93)
  br label %97

95:                                               ; preds = %83
  %96 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %89
  %98 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %99 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %97
  %106 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %107 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %106, i32 0, i32 0
  %108 = load %struct.wildcard_list*, %struct.wildcard_list** %107, align 8
  %109 = icmp ne %struct.wildcard_list* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %115 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %114, i32 0, i32 0
  %116 = load %struct.wildcard_list*, %struct.wildcard_list** %115, align 8
  store %struct.wildcard_list* %116, %struct.wildcard_list** %5, align 8
  br label %38

117:                                              ; preds = %38
  %118 = call i32 (i8*, ...) @minfo(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %119 = call i32 (...) @print_nl()
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @print_statement_list(i32 %123, i32* %124)
  ret void
}

declare dso_local i32 @print_space(...) #1

declare dso_local i32 @minfo(i8*, ...) #1

declare dso_local i32 @print_nl(...) #1

declare dso_local i32 @print_statement_list(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
