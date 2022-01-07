; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_debug_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_display_debug_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.dwarf_section*, i32*)*, %struct.dwarf_section }
%struct.dwarf_section = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"\0ASection '%s' has no debugging data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c".gnu.linkonce.wi.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@max = common dso_local global i32 0, align 4
@debug_displays = common dso_local global %struct.TYPE_6__* null, align 8
@info = common dso_local global i32 0, align 4
@abbrev = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unrecognized debug section: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @display_debug_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_debug_section(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dwarf_section*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i8* @SECTION_NAME(%struct.TYPE_5__* %11)
  store i8* %12, i8** %6, align 8
  store i32 1, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @printf(i8* %19, i8* %20)
  store i32 0, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @const_strneq(i8* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %27

27:                                               ; preds = %26, %22
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %78, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @max, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_displays, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @streq(i32 %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_displays, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.dwarf_section* %48, %struct.dwarf_section** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @load_debug_section(i32 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %43
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_displays, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dwarf_section*, i32*)*, i32 (%struct.dwarf_section*, i32*)** %58, align 8
  %60 = load %struct.dwarf_section*, %struct.dwarf_section** %10, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 %59(%struct.dwarf_section* %60, i32* %61)
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @info, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @abbrev, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @free_debug_section(i32 %73)
  br label %75

75:                                               ; preds = %72, %68, %53
  br label %76

76:                                               ; preds = %75, %43
  br label %81

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %28

81:                                               ; preds = %76, %28
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @max, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @printf(i8* %86, i8* %87)
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @SECTION_NAME(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @const_strneq(i8*, i8*) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i64 @load_debug_section(i32, i32*) #1

declare dso_local i32 @free_debug_section(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
