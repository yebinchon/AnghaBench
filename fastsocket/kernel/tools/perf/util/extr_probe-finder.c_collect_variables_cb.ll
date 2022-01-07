; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_collect_variables_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-finder.c_collect_variables_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.available_var_finder = type { i32, %struct.TYPE_2__, i64, %struct.variable_list* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.variable_list = type { i32 }

@MAX_VAR_LEN = common dso_local global i32 0, align 4
@DW_TAG_formal_parameter = common dso_local global i32 0, align 4
@DW_TAG_variable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Add new var: %s\0A\00", align 1
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @collect_variables_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_variables_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.available_var_finder*, align 8
  %7 = alloca %struct.variable_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.available_var_finder*
  store %struct.available_var_finder* %14, %struct.available_var_finder** %6, align 8
  %15 = load i32, i32* @MAX_VAR_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %20 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %19, i32 0, i32 3
  %21 = load %struct.variable_list*, %struct.variable_list** %20, align 8
  %22 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %23 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.variable_list, %struct.variable_list* %21, i64 %26
  store %struct.variable_list* %27, %struct.variable_list** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @dwarf_tag(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DW_TAG_formal_parameter, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @DW_TAG_variable, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33, %2
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %40 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %44 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @convert_variable_location(i32* %38, i32 %42, i32 %46, i32* null)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %37
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @MAX_VAR_LEN, align 4
  %53 = call i32 @die_get_varname(i32* %51, i8* %18, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = call i32 @pr_debug2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.variable_list*, %struct.variable_list** %7, align 8
  %59 = getelementptr inbounds %struct.variable_list, %struct.variable_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strlist__add(i32 %60, i8* %18)
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %66 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.available_var_finder*, %struct.available_var_finder** %6, align 8
  %72 = getelementptr inbounds %struct.available_var_finder, %struct.available_var_finder* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @dwarf_haspc(i32* %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %81

79:                                               ; preds = %69, %64
  %80 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dwarf_tag(i32*) #2

declare dso_local i32 @convert_variable_location(i32*, i32, i32, i32*) #2

declare dso_local i32 @die_get_varname(i32*, i8*, i32) #2

declare dso_local i32 @pr_debug2(i8*, i8*) #2

declare dso_local i32 @strlist__add(i32, i8*) #2

declare dso_local i64 @dwarf_haspc(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
