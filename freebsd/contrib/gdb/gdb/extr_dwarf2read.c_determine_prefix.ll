; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_determine_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_determine_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, i32*, %struct.die_info* }
%struct.dwarf2_cu = type { i64 }

@language_cplus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@processing_current_prefix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.die_info*, %struct.dwarf2_cu*)* @determine_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @determine_prefix(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca %struct.dwarf2_cu*, align 8
  %6 = alloca %struct.die_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.die_info* %0, %struct.die_info** %4, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %5, align 8
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %14 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @language_cplus, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.die_info*, %struct.die_info** %4, align 8
  %21 = getelementptr inbounds %struct.die_info, %struct.die_info* %20, i32 0, i32 2
  %22 = load %struct.die_info*, %struct.die_info** %21, align 8
  store %struct.die_info* %22, %struct.die_info** %6, align 8
  %23 = load %struct.die_info*, %struct.die_info** %6, align 8
  %24 = icmp eq %struct.die_info* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %3, align 8
  br label %94

27:                                               ; preds = %19
  %28 = load %struct.die_info*, %struct.die_info** %6, align 8
  %29 = getelementptr inbounds %struct.die_info, %struct.die_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %90 [
    i32 129, label %31
    i32 130, label %60
    i32 128, label %60
  ]

31:                                               ; preds = %27
  %32 = load %struct.die_info*, %struct.die_info** %6, align 8
  %33 = getelementptr inbounds %struct.die_info, %struct.die_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.die_info*, %struct.die_info** %6, align 8
  %38 = getelementptr inbounds %struct.die_info, %struct.die_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @TYPE_TAG_NAME(i32* %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.die_info*, %struct.die_info** %6, align 8
  %44 = getelementptr inbounds %struct.die_info, %struct.die_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @TYPE_TAG_NAME(i32* %45)
  %47 = call i8* @xstrdup(i8* %46)
  store i8* %47, i8** %3, align 8
  br label %94

48:                                               ; preds = %36, %31
  %49 = load %struct.die_info*, %struct.die_info** %6, align 8
  %50 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %51 = call i8* @determine_prefix(%struct.die_info* %49, %struct.dwarf2_cu* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.die_info*, %struct.die_info** %6, align 8
  %54 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %55 = call i32 @namespace_name(%struct.die_info* %53, i32* %7, %struct.dwarf2_cu* %54)
  %56 = call i8* @typename_concat(i8* %52, i32 %55)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @xfree(i8* %57)
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %3, align 8
  br label %94

60:                                               ; preds = %27, %27
  %61 = load %struct.die_info*, %struct.die_info** %6, align 8
  %62 = getelementptr inbounds %struct.die_info, %struct.die_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.die_info*, %struct.die_info** %6, align 8
  %67 = getelementptr inbounds %struct.die_info, %struct.die_info* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @TYPE_TAG_NAME(i32* %68)
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.die_info*, %struct.die_info** %6, align 8
  %73 = getelementptr inbounds %struct.die_info, %struct.die_info* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i8* @TYPE_TAG_NAME(i32* %74)
  %76 = call i8* @xstrdup(i8* %75)
  store i8* %76, i8** %3, align 8
  br label %94

77:                                               ; preds = %65, %60
  %78 = load i8*, i8** @processing_current_prefix, align 8
  store i8* %78, i8** %10, align 8
  %79 = load %struct.die_info*, %struct.die_info** %6, align 8
  %80 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %81 = call i8* @determine_prefix(%struct.die_info* %79, %struct.dwarf2_cu* %80)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  store i8* %82, i8** @processing_current_prefix, align 8
  %83 = load %struct.die_info*, %struct.die_info** %6, align 8
  %84 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %85 = call i8* @determine_class_name(%struct.die_info* %83, %struct.dwarf2_cu* %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %10, align 8
  store i8* %86, i8** @processing_current_prefix, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @xfree(i8* %87)
  %89 = load i8*, i8** %12, align 8
  store i8* %89, i8** %3, align 8
  br label %94

90:                                               ; preds = %27
  %91 = load %struct.die_info*, %struct.die_info** %6, align 8
  %92 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %5, align 8
  %93 = call i8* @determine_prefix(%struct.die_info* %91, %struct.dwarf2_cu* %92)
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %90, %77, %71, %48, %42, %25, %18
  %95 = load i8*, i8** %3, align 8
  ret i8* %95
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @TYPE_TAG_NAME(i32*) #1

declare dso_local i8* @typename_concat(i8*, i32) #1

declare dso_local i32 @namespace_name(%struct.die_info*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i8* @determine_class_name(%struct.die_info*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
