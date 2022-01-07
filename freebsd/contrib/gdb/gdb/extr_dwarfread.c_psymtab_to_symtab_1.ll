; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_psymtab_to_symtab_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_psymtab_to_symtab_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, i32, %struct.partial_symtab**, i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"psymtab for %s already read in.  Shouldn't happen.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"and \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@really_free_pendings = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"%d DIE's, sorting...\00", align 1
@diecount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @psymtab_to_symtab_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psymtab_to_symtab_1(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cleanup*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %5 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %6 = icmp ne %struct.partial_symtab* %5, null
  br i1 %6, label %7, label %95

7:                                                ; preds = %1
  %8 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %9 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %14 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %94

17:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %21 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  %25 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %26 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %25, i32 0, i32 2
  %27 = load %struct.partial_symtab**, %struct.partial_symtab*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %27, i64 %29
  %31 = load %struct.partial_symtab*, %struct.partial_symtab** %30, align 8
  %32 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* @info_verbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32, i32* @gdb_stdout, align 4
  %40 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @gdb_stdout, align 4
  %43 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %46 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %45, i32 0, i32 2
  %47 = load %struct.partial_symtab**, %struct.partial_symtab*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %47, i64 %49
  %51 = load %struct.partial_symtab*, %struct.partial_symtab** %50, align 8
  %52 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @gdb_stdout, align 4
  %57 = call i32 @gdb_flush(i32 %56)
  br label %58

58:                                               ; preds = %38, %35
  %59 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %60 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %59, i32 0, i32 2
  %61 = load %struct.partial_symtab**, %struct.partial_symtab*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %61, i64 %63
  %65 = load %struct.partial_symtab*, %struct.partial_symtab** %64, align 8
  call void @psymtab_to_symtab_1(%struct.partial_symtab* %65)
  br label %66

66:                                               ; preds = %58, %24
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %18

70:                                               ; preds = %18
  %71 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %72 = call i64 @DBLENGTH(%struct.partial_symtab* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = call i32 (...) @buildsym_init()
  %76 = load i32, i32* @really_free_pendings, align 4
  %77 = call %struct.cleanup* @make_cleanup(i32 %76, i32 0)
  store %struct.cleanup* %77, %struct.cleanup** %4, align 8
  %78 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %79 = call i32 @read_ofile_symtab(%struct.partial_symtab* %78)
  %80 = load i64, i64* @info_verbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load i32, i32* @diecount, align 4
  %84 = call i32 @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @gdb_stdout, align 4
  %87 = call i32 @gdb_flush(i32 %86)
  br label %88

88:                                               ; preds = %82, %74
  %89 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %90 = call i32 @do_cleanups(%struct.cleanup* %89)
  br label %91

91:                                               ; preds = %88, %70
  %92 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %93 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %12
  br label %95

95:                                               ; preds = %94, %1
  ret void
}

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i64 @DBLENGTH(%struct.partial_symtab*) #1

declare dso_local i32 @buildsym_init(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @read_ofile_symtab(%struct.partial_symtab*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
