; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_walk_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_walk_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__line_walk_param = type { i32 (i8*, i32, i32, i8*)*, i8*, i32 }

@DW_TAG_compile_unit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to get CU from given DIE.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to get source lines on this CU.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Get %zd lines from this CU\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to get line info. Possible error in debuginfo.\0A\00", align 1
@__die_walk_culines_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @die_walk_lines(i32* %0, i32 (i8*, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i8*, i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.__line_walk_param, align 8
  store i32* %0, i32** %5, align 8
  store i32 (i8*, i32, i32, i8*)* %1, i32 (i8*, i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @dwarf_tag(i32* %19)
  %21 = load i64, i64* @DW_TAG_compile_unit, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @dwarf_diecu(i32* %24, i32* %14, i32* null, i32* null)
  store i32* %25, i32** %15, align 8
  br label %28

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %15, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %121

35:                                               ; preds = %28
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @dwarf_getsrclines(i32* %36, i32** %8, i64* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %121

43:                                               ; preds = %35
  %44 = load i64, i64* %16, align 8
  %45 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  store i64 0, i64* %17, align 8
  br label %46

46:                                               ; preds = %96, %43
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %99

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %17, align 8
  %53 = call i32* @dwarf_onesrcline(i32* %51, i64 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @dwarf_lineno(i32* %57, i32* %12)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @dwarf_lineaddr(i32* %61, i32* %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56, %50
  %65 = call i32 (i8*, ...) @pr_debug2(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %96

66:                                               ; preds = %60
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = icmp ne i32* %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dwarf_haspc(i32* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @die_find_inlinefunc(i32* %76, i32 %77, i32* %14)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %70
  br label %96

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32*, i32** %9, align 8
  %84 = call i8* @dwarf_linesrc(i32* %83, i32* null, i32* null)
  store i8* %84, i8** %11, align 8
  %85 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 %85(i8* %86, i32 %87, i32 %88, i8* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %4, align 4
  br label %121

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %80, %64
  %97 = load i64, i64* %17, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %17, align 8
  br label %46

99:                                               ; preds = %46
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32*, i32** %5, align 8
  %105 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @__die_walk_funclines(i32* %104, i32 0, i32 (i8*, i32, i32, i8*)* %105, i8* %106)
  store i32 %107, i32* %13, align 4
  br label %119

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %18, i32 0, i32 0
  %110 = load i32 (i8*, i32, i32, i8*)*, i32 (i8*, i32, i32, i8*)** %6, align 8
  store i32 (i8*, i32, i32, i8*)* %110, i32 (i8*, i32, i32, i8*)** %109, align 8
  %111 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %18, i32 0, i32 1
  %112 = load i8*, i8** %7, align 8
  store i8* %112, i8** %111, align 8
  %113 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %18, i32 0, i32 2
  store i32 0, i32* %113, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* @__die_walk_culines_cb, align 4
  %116 = call i32 @dwarf_getfuncs(i32* %114, i32 %115, %struct.__line_walk_param* %18, i32 0)
  %117 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %18, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %108, %103
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %93, %39, %31
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i32* @dwarf_diecu(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pr_debug2(i8*, ...) #1

declare dso_local i64 @dwarf_getsrclines(i32*, i32**, i64*) #1

declare dso_local i32* @dwarf_onesrcline(i32*, i64) #1

declare dso_local i64 @dwarf_lineno(i32*, i32*) #1

declare dso_local i64 @dwarf_lineaddr(i32*, i32*) #1

declare dso_local i32 @dwarf_haspc(i32*, i32) #1

declare dso_local i64 @die_find_inlinefunc(i32*, i32, i32*) #1

declare dso_local i8* @dwarf_linesrc(i32*, i32*, i32*) #1

declare dso_local i32 @__die_walk_funclines(i32*, i32, i32 (i8*, i32, i32, i8*)*, i8*) #1

declare dso_local i32 @dwarf_getfuncs(i32*, i32, %struct.__line_walk_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
