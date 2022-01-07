; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_allocate_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_allocate_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, i32, i32, i32, %struct.objfile*, i32*, i32*, i32*, i32, i32*, i32, i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"Can't find the file sections in `%s': %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"<<anonymous objfile>>\00", align 1
@object_files = common dso_local global %struct.objfile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.objfile* @allocate_objfile(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.objfile*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.objfile* null, %struct.objfile** %5, align 8
  store %struct.objfile* null, %struct.objfile** %6, align 8
  %7 = load %struct.objfile*, %struct.objfile** %5, align 8
  %8 = icmp eq %struct.objfile* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = call i64 @xmalloc(i32 96)
  %11 = inttoptr i64 %10 to %struct.objfile*
  store %struct.objfile* %11, %struct.objfile** %5, align 8
  %12 = load %struct.objfile*, %struct.objfile** %5, align 8
  %13 = call i32 @memset(%struct.objfile* %12, i32 0, i32 96)
  %14 = load %struct.objfile*, %struct.objfile** %5, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 7
  store i32* null, i32** %15, align 8
  %16 = call i8* (...) @bcache_xmalloc()
  %17 = load %struct.objfile*, %struct.objfile** %5, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 13
  store i8* %16, i8** %18, align 8
  %19 = call i8* (...) @bcache_xmalloc()
  %20 = load %struct.objfile*, %struct.objfile** %5, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 12
  store i8* %19, i8** %21, align 8
  %22 = load %struct.objfile*, %struct.objfile** %5, align 8
  %23 = getelementptr inbounds %struct.objfile, %struct.objfile* %22, i32 0, i32 11
  %24 = call i32 @obstack_init(i32* %23)
  %25 = load %struct.objfile*, %struct.objfile** %5, align 8
  %26 = call i32 @terminate_minimal_symbol_table(%struct.objfile* %25)
  br label %27

27:                                               ; preds = %9, %2
  %28 = load %struct.objfile*, %struct.objfile** %5, align 8
  %29 = call i32 @objfile_alloc_data(%struct.objfile* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.objfile*, %struct.objfile** %5, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 10
  store i32* %30, i32** %32, align 8
  %33 = load %struct.objfile*, %struct.objfile** %5, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.objfile*, %struct.objfile** %5, align 8
  %39 = getelementptr inbounds %struct.objfile, %struct.objfile* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.objfile*, %struct.objfile** %5, align 8
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @xmfree(i32* %40, i32* %43)
  br label %45

45:                                               ; preds = %37, %27
  %46 = load i32*, i32** %3, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load %struct.objfile*, %struct.objfile** %5, align 8
  %50 = getelementptr inbounds %struct.objfile, %struct.objfile* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i8* @bfd_get_filename(i32* %52)
  %54 = call i8* @mstrsave(i32* %51, i8* %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.objfile*, %struct.objfile** %5, align 8
  %57 = getelementptr inbounds %struct.objfile, %struct.objfile* %56, i32 0, i32 8
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @bfd_get_mtime(i32* %58)
  %60 = load %struct.objfile*, %struct.objfile** %5, align 8
  %61 = getelementptr inbounds %struct.objfile, %struct.objfile* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.objfile*, %struct.objfile** %5, align 8
  %63 = call i64 @build_objfile_section_table(%struct.objfile* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %48
  %66 = load %struct.objfile*, %struct.objfile** %5, align 8
  %67 = getelementptr inbounds %struct.objfile, %struct.objfile* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 (...) @bfd_get_error()
  %70 = call i8* @bfd_errmsg(i32 %69)
  %71 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %68, i8* %70)
  br label %72

72:                                               ; preds = %65, %48
  br label %81

73:                                               ; preds = %45
  %74 = load %struct.objfile*, %struct.objfile** %5, align 8
  %75 = getelementptr inbounds %struct.objfile, %struct.objfile* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @mstrsave(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.objfile*, %struct.objfile** %5, align 8
  %80 = getelementptr inbounds %struct.objfile, %struct.objfile* %79, i32 0, i32 8
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %73, %72
  %82 = load %struct.objfile*, %struct.objfile** %5, align 8
  %83 = getelementptr inbounds %struct.objfile, %struct.objfile* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = load %struct.objfile*, %struct.objfile** %5, align 8
  %85 = getelementptr inbounds %struct.objfile, %struct.objfile* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.objfile*, %struct.objfile** %5, align 8
  %87 = getelementptr inbounds %struct.objfile, %struct.objfile* %86, i32 0, i32 2
  store i32 -1, i32* %87, align 8
  %88 = load %struct.objfile*, %struct.objfile** %5, align 8
  %89 = getelementptr inbounds %struct.objfile, %struct.objfile* %88, i32 0, i32 3
  store i32 -1, i32* %89, align 4
  %90 = load %struct.objfile*, %struct.objfile** %5, align 8
  %91 = getelementptr inbounds %struct.objfile, %struct.objfile* %90, i32 0, i32 6
  store i32* null, i32** %91, align 8
  %92 = load %struct.objfile*, %struct.objfile** %5, align 8
  %93 = getelementptr inbounds %struct.objfile, %struct.objfile* %92, i32 0, i32 5
  store %struct.objfile* null, %struct.objfile** %93, align 8
  %94 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  %95 = icmp eq %struct.objfile* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load %struct.objfile*, %struct.objfile** %5, align 8
  store %struct.objfile* %97, %struct.objfile** @object_files, align 8
  br label %114

98:                                               ; preds = %81
  %99 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %99, %struct.objfile** %6, align 8
  br label %100

100:                                              ; preds = %106, %98
  %101 = load %struct.objfile*, %struct.objfile** %6, align 8
  %102 = getelementptr inbounds %struct.objfile, %struct.objfile* %101, i32 0, i32 5
  %103 = load %struct.objfile*, %struct.objfile** %102, align 8
  %104 = icmp ne %struct.objfile* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.objfile*, %struct.objfile** %6, align 8
  %108 = getelementptr inbounds %struct.objfile, %struct.objfile* %107, i32 0, i32 5
  %109 = load %struct.objfile*, %struct.objfile** %108, align 8
  store %struct.objfile* %109, %struct.objfile** %6, align 8
  br label %100

110:                                              ; preds = %100
  %111 = load %struct.objfile*, %struct.objfile** %5, align 8
  %112 = load %struct.objfile*, %struct.objfile** %6, align 8
  %113 = getelementptr inbounds %struct.objfile, %struct.objfile* %112, i32 0, i32 5
  store %struct.objfile* %111, %struct.objfile** %113, align 8
  br label %114

114:                                              ; preds = %110, %96
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.objfile*, %struct.objfile** %5, align 8
  %117 = getelementptr inbounds %struct.objfile, %struct.objfile* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.objfile*, %struct.objfile** %5, align 8
  ret %struct.objfile* %120
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.objfile*, i32, i32) #1

declare dso_local i8* @bcache_xmalloc(...) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @terminate_minimal_symbol_table(%struct.objfile*) #1

declare dso_local i32 @objfile_alloc_data(%struct.objfile*) #1

declare dso_local i32 @xmfree(i32*, i32*) #1

declare dso_local i8* @mstrsave(i32*, i8*) #1

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_get_mtime(i32*) #1

declare dso_local i64 @build_objfile_section_table(%struct.objfile*) #1

declare dso_local i32 @error(i8*, i32*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
