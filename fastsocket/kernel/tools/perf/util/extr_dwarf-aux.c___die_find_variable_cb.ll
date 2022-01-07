; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_find_variable_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_find_variable_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__find_variable_param = type { i32, i32 }

@DW_TAG_formal_parameter = common dso_local global i32 0, align 4
@DW_TAG_variable = common dso_local global i32 0, align 4
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @__die_find_variable_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__die_find_variable_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__find_variable_param*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.__find_variable_param*
  store %struct.__find_variable_param* %9, %struct.__find_variable_param** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @dwarf_tag(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DW_TAG_formal_parameter, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DW_TAG_variable, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15, %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.__find_variable_param*, %struct.__find_variable_param** %6, align 8
  %22 = getelementptr inbounds %struct.__find_variable_param, %struct.__find_variable_param* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @die_compare_name(i32* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %19, %15
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.__find_variable_param*, %struct.__find_variable_param** %6, align 8
  %31 = getelementptr inbounds %struct.__find_variable_param, %struct.__find_variable_param* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @dwarf_haspc(i32* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %26
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dwarf_tag(i32*) #1

declare dso_local i64 @die_compare_name(i32*, i32) #1

declare dso_local i64 @dwarf_haspc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
