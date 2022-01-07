; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_strip_excluded_output_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_strip_excluded_output_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8*, i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }

@expld = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@lang_mark_phase_enum = common dso_local global i64 0, align 8
@exp_dataseg_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@lang_output_section_statement = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@SEC_KEEP = common dso_local global i32 0, align 4
@output_bfd = common dso_local global %struct.TYPE_20__* null, align 8
@SEC_LINKER_CREATED = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@stripped_excluded_sections = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strip_excluded_output_sections() #0 {
  %1 = alloca %struct.TYPE_18__*, align 8
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @expld, i32 0, i32 0), align 8
  %6 = load i64, i64* @lang_mark_phase_enum, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @lang_mark_phase_enum, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @expld, i32 0, i32 0), align 8
  %10 = load i32, i32* @exp_dataseg_none, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @expld, i32 0, i32 1, i32 0), align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @one_lang_size_sections_pass(i32* null, i32 %11)
  %13 = call i32 (...) @lang_reset_memory_regions()
  br label %14

14:                                               ; preds = %8, %0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @lang_output_section_statement, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %1, align 8
  br label %17

17:                                               ; preds = %125, %14
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %129

20:                                               ; preds = %17
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %125

26:                                               ; preds = %20
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %2, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = icmp eq %struct.TYPE_19__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %125

33:                                               ; preds = %26
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SEC_KEEP, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** @output_bfd, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = call i32 @bfd_section_removed_from_list(%struct.TYPE_20__* %46, %struct.TYPE_19__* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %38, %33
  %52 = phi i1 [ false, %38 ], [ false, %33 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %51
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = icmp ne %struct.TYPE_19__* %60, null
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %4, align 8
  br label %67

67:                                               ; preds = %87, %62
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = icmp ne %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SEC_LINKER_CREATED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SEC_EXCLUDE, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %3, align 4
  br label %92

86:                                               ; preds = %77, %70
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %4, align 8
  br label %67

92:                                               ; preds = %84, %67
  br label %93

93:                                               ; preds = %92, %56, %51
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %93
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* @SEC_EXCLUDE, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** @output_bfd, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = call i32 @bfd_section_list_remove(%struct.TYPE_20__* %117, %struct.TYPE_19__* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** @output_bfd, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %111, %93
  br label %125

125:                                              ; preds = %124, %32, %25
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %1, align 8
  br label %17

129:                                              ; preds = %17
  %130 = load i8*, i8** @TRUE, align 8
  store i8* %130, i8** @stripped_excluded_sections, align 8
  ret void
}

declare dso_local i32 @one_lang_size_sections_pass(i32*, i32) #1

declare dso_local i32 @lang_reset_memory_regions(...) #1

declare dso_local i32 @bfd_section_removed_from_list(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @bfd_section_list_remove(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
