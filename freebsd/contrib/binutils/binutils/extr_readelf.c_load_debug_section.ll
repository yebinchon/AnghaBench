; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_load_debug_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_load_debug_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.dwarf_section }
%struct.dwarf_section = type { i8*, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@debug_displays = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s section data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_debug_section(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dwarf_section*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_displays, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.dwarf_section* %13, %struct.dwarf_section** %6, align 8
  %14 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %15 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %21 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.TYPE_5__* @find_section(i8* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %19
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %29 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %31 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i8* %28, i32 64, i8* %29, i8* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %38 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %43 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %52 = call i32* @get_data(i32* null, i8* %44, i32 %47, i32 1, i32 %50, i8* %51)
  %53 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %54 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @debug_displays, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %27
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %66 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @debug_apply_rela_addends(i8* %63, %struct.TYPE_5__* %64, i32* %67)
  br label %69

69:                                               ; preds = %62, %27
  %70 = load %struct.dwarf_section*, %struct.dwarf_section** %6, align 8
  %71 = getelementptr inbounds %struct.dwarf_section, %struct.dwarf_section* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %26, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_5__* @find_section(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @get_data(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @debug_apply_rela_addends(i8*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
