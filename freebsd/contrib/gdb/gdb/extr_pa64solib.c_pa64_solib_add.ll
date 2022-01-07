; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.target_ops = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.load_module_desc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid regexp: %s\00", align 1
@symfile_objfile = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@dld_cache = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DT_HP_DEBUG_PRIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [133 x i8] c"The shared libraries were not privately mapped; setting a\0Abreakpoint in a shared library will not work until you rerun the program.\0A\00", align 1
@pa64_target_read_memory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"pa64_solib_add, unable to read shared library path.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pa64_solib_add(i8* %0, i32 %1, %struct.target_ops* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.minimal_symbol*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i8], align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.load_module_desc, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.target_ops* %2, %struct.target_ops** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %24 ]
  %27 = call i8* @re_comp(i8* %26)
  store i8* %27, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %34 = icmp eq %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %95

36:                                               ; preds = %32
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @bfd_get_section_by_name(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %95

44:                                               ; preds = %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @symfile_objfile, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 @bfd_section_size(i32 %47, i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %95

52:                                               ; preds = %44
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 2), align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @read_dld_descriptor(%struct.target_ops* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %95

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 0), align 4
  %64 = load i32, i32* @DT_HP_DEBUG_PRIVATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @warning(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  store i32 1, i32* %17, align 4
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @pa64_target_read_memory, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 1), align 4
  %74 = call i64 @dlgetmodinfo(i32 %71, %struct.load_module_desc* %18, i32 4, i32 %72, i32 0, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %95

77:                                               ; preds = %70
  %78 = load i32, i32* @pa64_target_read_memory, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dld_cache, i32 0, i32 1), align 4
  %80 = call i64 @dlgetname(%struct.load_module_desc* %18, i32 4, i32 %78, i32 0, i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %19, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load i32, i32* %6, align 4
  %88 = load i8*, i8** %19, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.target_ops*, %struct.target_ops** %7, align 8
  %91 = call i32 @add_to_solist(i32 %87, i8* %88, i32 %89, %struct.load_module_desc* %18, i32 0, %struct.target_ops* %90)
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %70

95:                                               ; preds = %76, %60, %51, %43, %35
  ret void
}

declare dso_local i8* @re_comp(i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i64 @bfd_section_size(i32, i32*) #1

declare dso_local i32 @read_dld_descriptor(%struct.target_ops*, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @dlgetmodinfo(i32, %struct.load_module_desc*, i32, i32, i32, i32) #1

declare dso_local i64 @dlgetname(%struct.load_module_desc*, i32, i32, i32, i32) #1

declare dso_local i32 @add_to_solist(i32, i8*, i32, %struct.load_module_desc*, i32, %struct.target_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
