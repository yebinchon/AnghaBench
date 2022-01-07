; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_walk_funclines_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c___die_walk_funclines_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__line_walk_param = type { i64, i64 (i8*, i32, i64, i32)*, i32, i32 }

@DW_TAG_inlined_subroutine = common dso_local global i64 0, align 8
@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4
@DIE_FIND_CB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @__die_walk_funclines_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__die_walk_funclines_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__line_walk_param*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.__line_walk_param*
  store %struct.__line_walk_param* %11, %struct.__line_walk_param** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @dwarf_tag(i32* %12)
  %14 = load i64, i64* @DW_TAG_inlined_subroutine, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @die_get_call_file(i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @die_get_call_lineno(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @dwarf_entrypc(i32* %27, i64* %7)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %32 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %31, i32 0, i32 1
  %33 = load i64 (i8*, i32, i64, i32)*, i64 (i8*, i32, i64, i32)** %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %38 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 %33(i8* %34, i32 %35, i64 %36, i32 %39)
  %41 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %42 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %44 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %48, i32* %3, align 4
  br label %93

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %26, %23, %16
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %53 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %58
  %62 = load i32*, i32** %4, align 8
  %63 = call i8* @dwarf_decl_file(i32* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @dwarf_decl_line(i32* %67, i32* %9)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %72 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %71, i32 0, i32 1
  %73 = load i64 (i8*, i32, i64, i32)*, i64 (i8*, i32, i64, i32)** %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %78 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 %73(i8* %74, i32 %75, i64 %76, i32 %79)
  %81 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %82 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.__line_walk_param*, %struct.__line_walk_param** %6, align 8
  %84 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* @DIE_FIND_CB_END, align 4
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %66, %61
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i32, i32* @DIE_FIND_CB_CONTINUE, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %87, %56, %47
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @dwarf_tag(i32*) #1

declare dso_local i8* @die_get_call_file(i32*) #1

declare dso_local i32 @die_get_call_lineno(i32*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i64*) #1

declare dso_local i8* @dwarf_decl_file(i32*) #1

declare dso_local i64 @dwarf_decl_line(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
