; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_wild.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_wild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wildcard_spec = type { i64, i32* }
%struct.wildcard_list = type { %struct.wildcard_list*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.wildcard_list*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@TRUE = common dso_local global i8* null, align 8
@placed_commons = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@lang_has_input_file = common dso_local global i8* null, align 8
@lang_wild_statement = common dso_local global i32 0, align 4
@stat_ptr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@by_name = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_add_wild(%struct.wildcard_spec* %0, %struct.wildcard_list* %1, i32 %2) #0 {
  %4 = alloca %struct.wildcard_spec*, align 8
  %5 = alloca %struct.wildcard_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wildcard_list*, align 8
  %8 = alloca %struct.wildcard_list*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.wildcard_spec* %0, %struct.wildcard_spec** %4, align 8
  store %struct.wildcard_list* %1, %struct.wildcard_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  store %struct.wildcard_list* %10, %struct.wildcard_list** %7, align 8
  store %struct.wildcard_list* null, %struct.wildcard_list** %5, align 8
  br label %11

11:                                               ; preds = %36, %3
  %12 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %13 = icmp ne %struct.wildcard_list* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %16 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %22 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @strcmp(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i8*, i8** @TRUE, align 8
  store i8* %28, i8** @placed_commons, align 8
  br label %29

29:                                               ; preds = %27, %20, %14
  %30 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %31 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %30, i32 0, i32 0
  %32 = load %struct.wildcard_list*, %struct.wildcard_list** %31, align 8
  store %struct.wildcard_list* %32, %struct.wildcard_list** %8, align 8
  %33 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %34 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %35 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %34, i32 0, i32 0
  store %struct.wildcard_list* %33, %struct.wildcard_list** %35, align 8
  br label %36

36:                                               ; preds = %29
  %37 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  store %struct.wildcard_list* %37, %struct.wildcard_list** %5, align 8
  %38 = load %struct.wildcard_list*, %struct.wildcard_list** %8, align 8
  store %struct.wildcard_list* %38, %struct.wildcard_list** %7, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %41 = icmp ne %struct.wildcard_spec* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %44 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %49 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @strcmp(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %55 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  br label %65

56:                                               ; preds = %47
  %57 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %58 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @wildcardp(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** @lang_has_input_file, align 8
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %42, %39
  %67 = load i32, i32* @lang_wild_statement, align 4
  %68 = load i32, i32* @stat_ptr, align 4
  %69 = call %struct.TYPE_6__* @new_stat(i32 %67, i32 %68)
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %9, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %76 = icmp ne %struct.wildcard_spec* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %66
  %78 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %79 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = load %struct.wildcard_spec*, %struct.wildcard_spec** %4, align 8
  %84 = getelementptr inbounds %struct.wildcard_spec, %struct.wildcard_spec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @by_name, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %77, %66
  %92 = load %struct.wildcard_list*, %struct.wildcard_list** %5, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  store %struct.wildcard_list* %92, %struct.wildcard_list** %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i32 @lang_list_init(i32* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = call i32 @analyze_walk_wild_section_handler(%struct.TYPE_6__* %101)
  ret void
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @wildcardp(i32*) #1

declare dso_local %struct.TYPE_6__* @new_stat(i32, i32) #1

declare dso_local i32 @lang_list_init(i32*) #1

declare dso_local i32 @analyze_walk_wild_section_handler(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
