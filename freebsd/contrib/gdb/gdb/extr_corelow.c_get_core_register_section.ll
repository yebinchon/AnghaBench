; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_get_core_register_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_get_core_register_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i32, i32, i32)* }
%struct.bfd_section = type { i32 }
%struct.regset = type { i32 (%struct.regset*, i32, i32, i8*, i32)* }

@get_core_register_section.section_name = internal global i8* null, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@core_bfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Couldn't find %s registers in core file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Couldn't read %s registers from `%s' section in core file.\0A\00", align 1
@core_gdbarch = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Couldn't recognize %s registers in core file.\0A\00", align 1
@current_regcache = common dso_local global i32 0, align 4
@core_vec = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @get_core_register_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_core_register_section(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfd_section*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.regset*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** @get_core_register_section.section_name, align 8
  %14 = call i32 @xfree(i8* %13)
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i64 @PIDGET(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @inferior_ptid, align 4
  %21 = call i64 @PIDGET(i32 %20)
  %22 = call i8* @xstrprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %21)
  store i8* %22, i8** @get_core_register_section.section_name, align 8
  br label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** @get_core_register_section.section_name, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @core_bfd, align 4
  %28 = load i8*, i8** @get_core_register_section.section_name, align 8
  %29 = call %struct.bfd_section* @bfd_get_section_by_name(i32 %27, i8* %28)
  store %struct.bfd_section* %29, %struct.bfd_section** %9, align 8
  %30 = load %struct.bfd_section*, %struct.bfd_section** %9, align 8
  %31 = icmp ne %struct.bfd_section* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %99

39:                                               ; preds = %26
  %40 = load i32, i32* @core_bfd, align 4
  %41 = load %struct.bfd_section*, %struct.bfd_section** %9, align 8
  %42 = call i32 @bfd_section_size(i32 %40, %struct.bfd_section* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @alloca(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* @core_bfd, align 4
  %46 = load %struct.bfd_section*, %struct.bfd_section** %9, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bfd_get_section_contents(i32 %45, %struct.bfd_section* %46, i8* %47, i32 0, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53)
  br label %99

55:                                               ; preds = %39
  %56 = load i64, i64* @core_gdbarch, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i64, i64* @core_gdbarch, align 8
  %60 = call i64 @gdbarch_regset_from_core_section_p(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i64, i64* @core_gdbarch, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.regset* @gdbarch_regset_from_core_section(i64 %63, i8* %64, i32 %65)
  store %struct.regset* %66, %struct.regset** %12, align 8
  %67 = load %struct.regset*, %struct.regset** %12, align 8
  %68 = icmp eq %struct.regset* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %99

76:                                               ; preds = %62
  %77 = load %struct.regset*, %struct.regset** %12, align 8
  %78 = getelementptr inbounds %struct.regset, %struct.regset* %77, i32 0, i32 0
  %79 = load i32 (%struct.regset*, i32, i32, i8*, i32)*, i32 (%struct.regset*, i32, i32, i8*, i32)** %78, align 8
  %80 = load %struct.regset*, %struct.regset** %12, align 8
  %81 = load i32, i32* @current_regcache, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 %79(%struct.regset* %80, i32 %81, i32 -1, i8* %82, i32 %83)
  br label %99

85:                                               ; preds = %58, %55
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @core_vec, align 8
  %87 = call i32 @gdb_assert(%struct.TYPE_3__* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @core_vec, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %89, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @core_bfd, align 4
  %95 = load %struct.bfd_section*, %struct.bfd_section** %9, align 8
  %96 = call i64 @bfd_section_vma(i32 %94, %struct.bfd_section* %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 %90(i8* %91, i32 %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %85, %76, %75, %51, %38
  ret void
}

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i8* @xstrprintf(i8*, i8*, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.bfd_section* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i32 @bfd_section_size(i32, %struct.bfd_section*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @bfd_get_section_contents(i32, %struct.bfd_section*, i8*, i32, i32) #1

declare dso_local i64 @gdbarch_regset_from_core_section_p(i64) #1

declare dso_local %struct.regset* @gdbarch_regset_from_core_section(i64, i8*, i32) #1

declare dso_local i32 @gdb_assert(%struct.TYPE_3__*) #1

declare dso_local i64 @bfd_section_vma(i32, %struct.bfd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
