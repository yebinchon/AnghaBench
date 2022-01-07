; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_gcore_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gcore.c_gcore_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@target_has_execution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"core.%d\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Opening corefile '%s' for output.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to open '%s' for output.\00", align 1
@bfd_core = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"note0\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to create 'note' section for corefile: %s\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"gcore: failed to get corefile memory sections from target.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"writing note section (%s)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Saved corefile %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gcore_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcore_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @target_has_execution, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @noprocess()
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %6, align 8
  br label %32

26:                                               ; preds = %19, %16
  %27 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %28 = load i32, i32* @inferior_ptid, align 4
  %29 = call i32 @PIDGET(i32 %28)
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i64, i64* @info_verbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @gdb_stdout, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @fprintf_filtered(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (...) @default_gcore_target()
  %42 = call i32* @bfd_openw(i8* %40, i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32*, i32** %9, align 8
  %50 = call %struct.cleanup* @make_cleanup_bfd_close(i32* %49)
  store %struct.cleanup* %50, %struct.cleanup** %5, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @bfd_core, align 4
  %53 = call i32 @bfd_set_format(i32* %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 (...) @default_gcore_arch()
  %56 = call i32 (...) @default_gcore_mach()
  %57 = call i32 @bfd_set_arch_mach(i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i8* @target_make_corefile_notes(i32* %58, i32* %11)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %93

62:                                               ; preds = %48
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = call i32* @bfd_make_section_anyway(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %67, i32** %8, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (...) @bfd_get_error()
  %72 = call i32 @bfd_errmsg(i32 %71)
  %73 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @bfd_set_section_vma(i32* %75, i32* %76, i32 0)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %81 = load i32, i32* @SEC_READONLY, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SEC_ALLOC, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @bfd_set_section_flags(i32* %78, i32* %79, i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @bfd_set_section_alignment(i32* %86, i32* %87, i32 0)
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @bfd_set_section_size(i32* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %74, %62, %48
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @gcore_memory_sections(i32* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @bfd_set_section_contents(i32* %106, i32* %107, i8* %108, i32 0, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = call i32 (...) @bfd_get_error()
  %114 = call i32 @bfd_errmsg(i32 %113)
  %115 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %105
  br label %117

117:                                              ; preds = %116, %102, %99
  %118 = load i32, i32* @gdb_stdout, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @fprintf_filtered(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  %121 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %122 = call i32 @do_cleanups(%struct.cleanup* %121)
  ret void
}

declare dso_local i32 @noprocess(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, i8*) #1

declare dso_local i32* @bfd_openw(i8*, i32) #1

declare dso_local i32 @default_gcore_target(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.cleanup* @make_cleanup_bfd_close(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local i32 @default_gcore_arch(...) #1

declare dso_local i32 @default_gcore_mach(...) #1

declare dso_local i8* @target_make_corefile_notes(i32*, i32*) #1

declare dso_local i32* @bfd_make_section_anyway(i32*, i8*) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_section_vma(i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_flags(i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_alignment(i32*, i32*, i32) #1

declare dso_local i32 @bfd_set_section_size(i32*, i32*, i32) #1

declare dso_local i64 @gcore_memory_sections(i32*) #1

declare dso_local i32 @bfd_set_section_contents(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
