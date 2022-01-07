; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_create_inferior_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_create_inferior_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.so_list = type { %struct.so_list* }
%struct.minimal_symbol = type { i32 }
%struct.objfile = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.breakpoint = type { i32 }

@symfile_objfile = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@dld_cache = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to read the .dynamic section.\00", align 1
@DT_HP_DEBUG_PRIVATE = common dso_local global i32 0, align 4
@DT_HP_DEBUG_CALLBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to modify dynamic linker flags.\00", align 1
@exec_bfd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c".interp\00", align 1
@gnutarget = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Unable to grok dynamic linker %s as an object file\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"__dld_break\00", align 1
@so_list_head = common dso_local global %struct.so_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pa64_solib_create_inferior_hook() #0 {
  %1 = alloca %struct.minimal_symbol*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.breakpoint*, align 8
  %15 = alloca %struct.so_list*, align 8
  %16 = call i32 (...) @remove_solib_event_breakpoints()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symfile_objfile, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %119

20:                                               ; preds = %0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symfile_objfile, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @bfd_get_section_by_name(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %119

28:                                               ; preds = %20
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @symfile_objfile, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @bfd_section_size(i32 %31, i32* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %119

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @read_dynamic_info(i32* %37, %struct.TYPE_11__* @dld_cache)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* @DT_HP_DEBUG_PRIVATE, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dld_cache, i32 0, i32 0), align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dld_cache, i32 0, i32 0), align 4
  %46 = load i32, i32* @DT_HP_DEBUG_CALLBACK, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dld_cache, i32 0, i32 0), align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dld_cache, i32 0, i32 0), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dld_cache, i32 0, i32 1), align 4
  %50 = call i32 @target_write_memory(i32 %49, i8* bitcast (%struct.TYPE_11__* @dld_cache to i8*), i32 4)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i32, i32* @exec_bfd, align 4
  %57 = call i32* @bfd_get_section_by_name(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  store i64 0, i64* %13, align 8
  %61 = load i32, i32* @exec_bfd, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @bfd_section_size(i32 %61, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i8* @alloca(i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i32, i32* @exec_bfd, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @bfd_get_section_contents(i32 %66, i32* %67, i8* %68, i32 0, i32 %69)
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @gnutarget, align 4
  %73 = call %struct.TYPE_9__* @bfd_openr(i8* %71, i32 %72)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %12, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %75 = icmp eq %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %106

77:                                               ; preds = %60
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = load i32, i32* @bfd_object, align 4
  %80 = call i32 @bfd_check_format(%struct.TYPE_9__* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %86 = call i32 @bfd_close(%struct.TYPE_9__* %85)
  br label %106

87:                                               ; preds = %77
  %88 = call i64 (...) @read_pc()
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  store i64 %92, i64* %11, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = call i64 @bfd_lookup_symbol(%struct.TYPE_9__* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %95, %96
  %98 = add nsw i64 %97, 4
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call %struct.breakpoint* @create_solib_event_breakpoint(i64 %99)
  store %struct.breakpoint* %100, %struct.breakpoint** %14, align 8
  %101 = load %struct.breakpoint*, %struct.breakpoint** %14, align 8
  %102 = call i32 @make_breakpoint_permanent(%struct.breakpoint* %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = call i32 @bfd_close(%struct.TYPE_9__* %103)
  br label %105

105:                                              ; preds = %87, %55
  br label %106

106:                                              ; preds = %105, %82, %76
  br label %107

107:                                              ; preds = %110, %106
  %108 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  %109 = icmp ne %struct.so_list* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %111, %struct.so_list** %15, align 8
  %112 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  %113 = call i32 @xfree(%struct.so_list* %112)
  %114 = load %struct.so_list*, %struct.so_list** %15, align 8
  %115 = getelementptr inbounds %struct.so_list, %struct.so_list* %114, i32 0, i32 0
  %116 = load %struct.so_list*, %struct.so_list** %115, align 8
  store %struct.so_list* %116, %struct.so_list** @so_list_head, align 8
  br label %107

117:                                              ; preds = %107
  %118 = call i32 (...) @clear_symtab_users()
  br label %119

119:                                              ; preds = %117, %35, %27, %19
  ret void
}

declare dso_local i32 @remove_solib_event_breakpoints(...) #1

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_section_size(i32, i32*) #1

declare dso_local i32 @read_dynamic_info(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @target_write_memory(i32, i8*, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @bfd_openr(i8*, i32) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_9__*) #1

declare dso_local i64 @read_pc(...) #1

declare dso_local i64 @bfd_lookup_symbol(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.breakpoint* @create_solib_event_breakpoint(i64) #1

declare dso_local i32 @make_breakpoint_permanent(%struct.breakpoint*) #1

declare dso_local i32 @xfree(%struct.so_list*) #1

declare dso_local i32 @clear_symtab_users(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
