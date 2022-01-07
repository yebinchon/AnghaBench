; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_file_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_file_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.dieinfo = type { i64, i64, i32, i32, i32, i32* }
%struct.objfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.cleanup = type { i32 }
%struct.symtab = type { i32 }

@numutypes = common dso_local global i32 0, align 4
@utypes = common dso_local global %struct.type** null, align 8
@free_utypes = common dso_local global i32 0, align 4
@ftypes = common dso_local global %struct.type** null, align 8
@FT_NUM_MEMBERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DWARF 1\00", align 1
@lnbase = common dso_local global i32 0, align 4
@cu_language = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, i8*, i8*, %struct.objfile*)* @read_file_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_file_scope(%struct.dieinfo* %0, i8* %1, i8* %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.dieinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca %struct.symtab*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %11 = load %struct.objfile*, %struct.objfile** %8, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %16 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load %struct.objfile*, %struct.objfile** %8, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %25 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %30 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.objfile*, %struct.objfile** %8, align 8
  %33 = getelementptr inbounds %struct.objfile, %struct.objfile* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %36 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.objfile*, %struct.objfile** %8, align 8
  %39 = getelementptr inbounds %struct.objfile, %struct.objfile* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %28, %19, %4
  %42 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %43 = call i32 @set_cu_language(%struct.dieinfo* %42)
  %44 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %45 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %50 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @handle_producer(i32* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @numutypes, align 4
  %61 = load i32, i32* @numutypes, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @xmalloc(i32 %64)
  %66 = inttoptr i64 %65 to %struct.type**
  store %struct.type** %66, %struct.type*** @utypes, align 8
  %67 = load i32, i32* @free_utypes, align 4
  %68 = call %struct.cleanup* @make_cleanup(i32 %67, i32* null)
  store %struct.cleanup* %68, %struct.cleanup** %9, align 8
  %69 = load %struct.type**, %struct.type*** @utypes, align 8
  %70 = load i32, i32* @numutypes, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(%struct.type** %69, i32 0, i32 %73)
  %75 = load %struct.type**, %struct.type*** @ftypes, align 8
  %76 = load i32, i32* @FT_NUM_MEMBERS, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(%struct.type** %75, i32 0, i32 %79)
  %81 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %82 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %85 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %88 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @start_symtab(i32 %83, i32 %86, i64 %89)
  %91 = call i32 @record_debugformat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @lnbase, align 4
  %93 = call i32 @decode_line_numbers(i32 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %96 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.objfile*, %struct.objfile** %8, align 8
  %102 = call i32 @process_dies(i8* %99, i8* %100, %struct.objfile* %101)
  %103 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %104 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.objfile*, %struct.objfile** %8, align 8
  %107 = call %struct.symtab* @end_symtab(i64 %105, %struct.objfile* %106, i32 0)
  store %struct.symtab* %107, %struct.symtab** %10, align 8
  %108 = load %struct.symtab*, %struct.symtab** %10, align 8
  %109 = icmp ne %struct.symtab* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %53
  %111 = load i32, i32* @cu_language, align 4
  %112 = load %struct.symtab*, %struct.symtab** %10, align 8
  %113 = getelementptr inbounds %struct.symtab, %struct.symtab* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %53
  %115 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %116 = call i32 @do_cleanups(%struct.cleanup* %115)
  ret void
}

declare dso_local i32 @set_cu_language(%struct.dieinfo*) #1

declare dso_local i32 @handle_producer(i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @memset(%struct.type**, i32, i32) #1

declare dso_local i32 @start_symtab(i32, i32, i64) #1

declare dso_local i32 @record_debugformat(i8*) #1

declare dso_local i32 @decode_line_numbers(i32) #1

declare dso_local i32 @process_dies(i8*, i8*, %struct.objfile*) #1

declare dso_local %struct.symtab* @end_symtab(i64, %struct.objfile*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
