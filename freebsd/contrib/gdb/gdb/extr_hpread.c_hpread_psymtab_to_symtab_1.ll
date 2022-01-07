; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_psymtab_to_symtab_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_psymtab_to_symtab_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, i32, i32, i32, i64, i64, i32, i32, %struct.partial_symtab** }
%struct.cleanup = type { i32 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Psymtab for %s already read in.  Shouldn't happen.\0A\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"and \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s...\00", align 1
@really_free_pendings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @hpread_psymtab_to_symtab_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpread_psymtab_to_symtab_1(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca %struct.cleanup*, align 8
  %4 = alloca i32, align 4
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %5 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %6 = icmp ne %struct.partial_symtab* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %111

8:                                                ; preds = %1
  %9 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %10 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @gdb_stderr, align 4
  %15 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %16 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fprintf_unfiltered(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %111

19:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %23 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %28 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %27, i32 0, i32 8
  %29 = load %struct.partial_symtab**, %struct.partial_symtab*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %29, i64 %31
  %33 = load %struct.partial_symtab*, %struct.partial_symtab** %32, align 8
  %34 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %26
  %38 = load i64, i64* @info_verbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, i32* @gdb_stdout, align 4
  %42 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @gdb_stdout, align 4
  %45 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %48 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %47, i32 0, i32 8
  %49 = load %struct.partial_symtab**, %struct.partial_symtab*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %49, i64 %51
  %53 = load %struct.partial_symtab*, %struct.partial_symtab** %52, align 8
  %54 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @gdb_stdout, align 4
  %59 = call i32 @gdb_flush(i32 %58)
  br label %60

60:                                               ; preds = %40, %37
  %61 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %62 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %61, i32 0, i32 8
  %63 = load %struct.partial_symtab**, %struct.partial_symtab*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.partial_symtab*, %struct.partial_symtab** %63, i64 %65
  %67 = load %struct.partial_symtab*, %struct.partial_symtab** %66, align 8
  call void @hpread_psymtab_to_symtab_1(%struct.partial_symtab* %67)
  br label %68

68:                                               ; preds = %60, %26
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %74 = call i64 @LDSYMLEN(%struct.partial_symtab* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %72
  %77 = call i32 (...) @buildsym_init()
  %78 = load i32, i32* @really_free_pendings, align 4
  %79 = call %struct.cleanup* @make_cleanup(i32 %78, i32 0)
  store %struct.cleanup* %79, %struct.cleanup** %3, align 8
  %80 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %81 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %84 = call i32 @LDSYMOFF(%struct.partial_symtab* %83)
  %85 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %86 = call i64 @LDSYMLEN(%struct.partial_symtab* %85)
  %87 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %88 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %91 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %94 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %98 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %101 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @hpread_expand_symtab(i32 %82, i32 %84, i64 %86, i64 %89, i64 %96, i32 %99, i32 %102)
  %104 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %105 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load %struct.cleanup*, %struct.cleanup** %3, align 8
  %107 = call i32 @do_cleanups(%struct.cleanup* %106)
  br label %108

108:                                              ; preds = %76, %72
  %109 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %110 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %13, %7
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i64 @LDSYMLEN(%struct.partial_symtab*) #1

declare dso_local i32 @buildsym_init(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @hpread_expand_symtab(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @LDSYMOFF(%struct.partial_symtab*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
