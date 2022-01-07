; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_atf_tc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_atf_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i32, i32 (%struct.TYPE_9__*)*, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"has.cleanup\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Test case head modified the read-only 'ident' property\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atf_tc_init(%struct.TYPE_9__* %0, i8* %1, i32 (%struct.TYPE_9__*)* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (%struct.TYPE_9__*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 (%struct.TYPE_9__*)* %2, i32 (%struct.TYPE_9__*)** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = call %struct.TYPE_10__* @malloc(i32 4)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = call i32 (...) @atf_no_memory_error()
  store i32 %23, i32* %14, align 4
  br label %128

24:                                               ; preds = %6
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %10, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  store i32 (%struct.TYPE_9__*)* %30, i32 (%struct.TYPE_9__*)** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  store i32* %40, i32** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %13, align 8
  %50 = call i32 @atf_map_init_charpp(i32* %48, i8** %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i64 @atf_is_error(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %24
  br label %128

55:                                               ; preds = %24
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = call i32 @atf_map_init(i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @atf_is_error(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %122

65:                                               ; preds = %55
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @atf_tc_set_md_var(%struct.TYPE_9__* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @atf_is_error(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %116

73:                                               ; preds = %65
  %74 = load i32*, i32** %12, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = call i32 @atf_tc_set_md_var(%struct.TYPE_9__* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @atf_is_error(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %116

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %73
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %88, align 8
  %90 = icmp ne i32 (%struct.TYPE_9__*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = call i32 %96(%struct.TYPE_9__* %97)
  br label %99

99:                                               ; preds = %91, %84
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = call i32 @atf_tc_get_md_var(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %102 = load i8*, i8** %9, align 8
  %103 = call i64 @strcmp(i32 %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = call i32 @report_fatal_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @UNREACHABLE, align 4
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %14, align 4
  %110 = call i64 @atf_is_error(i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @INV(i32 %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %7, align 4
  br label %130

116:                                              ; preds = %82, %72
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = call i32 @atf_map_fini(i32* %120)
  br label %122

122:                                              ; preds = %116, %64
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = call i32 @atf_map_fini(i32* %126)
  br label %128

128:                                              ; preds = %122, %54, %22
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %128, %108
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @atf_no_memory_error(...) #1

declare dso_local i32 @atf_map_init_charpp(i32*, i8**) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_map_init(i32*) #1

declare dso_local i32 @atf_tc_set_md_var(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @atf_tc_get_md_var(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @report_fatal_error(i8*) #1

declare dso_local i32 @INV(i32) #1

declare dso_local i32 @atf_map_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
