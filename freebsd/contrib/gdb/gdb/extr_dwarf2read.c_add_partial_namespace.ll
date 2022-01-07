; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_add_partial_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_die_info = type { i8*, i64 }
%struct.dwarf2_cu = type { i32, %struct.objfile* }
%struct.objfile = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.partial_die_info*, i8*, i32*, i32*, %struct.dwarf2_cu*, i8*)* @add_partial_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_partial_namespace(%struct.partial_die_info* %0, i8* %1, i32* %2, i32* %3, %struct.dwarf2_cu* %4, i8* %5) #0 {
  %7 = alloca %struct.partial_die_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dwarf2_cu*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.objfile*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.partial_die_info* %0, %struct.partial_die_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.dwarf2_cu* %4, %struct.dwarf2_cu** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %11, align 8
  %17 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %16, i32 0, i32 1
  %18 = load %struct.objfile*, %struct.objfile** %17, align 8
  store %struct.objfile* %18, %struct.objfile** %13, align 8
  %19 = load %struct.partial_die_info*, %struct.partial_die_info** %7, align 8
  %20 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %25

25:                                               ; preds = %24, %6
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %27, 2
  %29 = load i8*, i8** %14, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %28, %30
  %32 = add nsw i64 %31, 1
  %33 = call i8* @alloca(i64 %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @strcpy(i8* %34, i8* %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @strcat(i8* %45, i8* %46)
  %48 = load i8*, i8** %15, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = load i32, i32* @VAR_DOMAIN, align 4
  %52 = load i32, i32* @LOC_TYPEDEF, align 4
  %53 = load %struct.objfile*, %struct.objfile** %13, align 8
  %54 = getelementptr inbounds %struct.objfile, %struct.objfile* %53, i32 0, i32 0
  %55 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %11, align 8
  %56 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.objfile*, %struct.objfile** %13, align 8
  %59 = call i32 @add_psymbol_to_list(i8* %48, i64 %50, i32 %51, i32 %52, i32* %54, i32 0, i32 0, i32 %57, %struct.objfile* %58)
  %60 = load %struct.partial_die_info*, %struct.partial_die_info** %7, align 8
  %61 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %44
  %65 = load i8*, i8** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %11, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i8* @scan_partial_symbols(i8* %65, i32* %66, i32* %67, %struct.dwarf2_cu* %68, i8* %69)
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %64, %44
  %72 = load i8*, i8** %8, align 8
  ret i8* %72
}

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @add_psymbol_to_list(i8*, i64, i32, i32, i32*, i32, i32, i32, %struct.objfile*) #1

declare dso_local i8* @scan_partial_symbols(i8*, i32*, i32*, %struct.dwarf2_cu*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
