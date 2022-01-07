; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_add_solib_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_solib_add_solib_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { %struct.TYPE_10__, %struct.TYPE_13__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.so_list*, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.section_addr_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.cleanup = type { i32 }

@gnutarget = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\22%s\22 is not an object file: %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@find_lowest_section = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@OBJF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.so_list*, i8*, i32, i32)* @pa64_solib_add_solib_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pa64_solib_add_solib_objfile(%struct.so_list* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.section_addr_info*, align 8
  %13 = alloca %struct.cleanup*, align 8
  store %struct.so_list* %0, %struct.so_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @gnutarget, align 4
  %16 = call i32* @bfd_openr(i8* %14, i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @perror_with_name(i8* %20)
  br label %144

22:                                               ; preds = %4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* @bfd_object, align 4
  %25 = call i32 @bfd_check_format(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @bfd_close(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (...) @bfd_get_error()
  %32 = call i8* @bfd_errmsg(i32 %31)
  %33 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %32)
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.TYPE_12__* @bfd_get_section_by_name(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = call i64 @bfd_section_vma(i32* %37, %struct.TYPE_12__* %38)
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @find_lowest_section, align 4
  %46 = call i32 @bfd_map_over_sections(i32* %44, i32 %45, %struct.TYPE_12__** %10)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %34
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = call i64 @bfd_section_vma(i32* %50, %struct.TYPE_12__* %51)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %49, %34
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @bfd_count_sections(i32* %65)
  %67 = call %struct.section_addr_info* @alloc_section_addr_info(i32 %66)
  store %struct.section_addr_info* %67, %struct.section_addr_info** %12, align 8
  %68 = load i32, i32* @xfree, align 4
  %69 = load %struct.section_addr_info*, %struct.section_addr_info** %12, align 8
  %70 = call %struct.cleanup* @make_cleanup(i32 %68, %struct.section_addr_info* %69)
  store %struct.cleanup* %70, %struct.cleanup** %13, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @bfd_close(i32* %71)
  store i32* null, i32** %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.section_addr_info*, %struct.section_addr_info** %12, align 8
  %75 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 8
  %79 = load %struct.section_addr_info*, %struct.section_addr_info** %12, align 8
  %80 = getelementptr inbounds %struct.section_addr_info, %struct.section_addr_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.section_addr_info*, %struct.section_addr_info** %12, align 8
  %87 = load i32, i32* @OBJF_SHARED, align 4
  %88 = call %struct.TYPE_13__* @symbol_file_add(i8* %84, i32 %85, %struct.section_addr_info* %86, i32 0, i32 %87)
  %89 = load %struct.so_list*, %struct.so_list** %5, align 8
  %90 = getelementptr inbounds %struct.so_list, %struct.so_list* %89, i32 0, i32 1
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %90, align 8
  %91 = load %struct.so_list*, %struct.so_list** %5, align 8
  %92 = getelementptr inbounds %struct.so_list, %struct.so_list* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.so_list*, %struct.so_list** %5, align 8
  %97 = getelementptr inbounds %struct.so_list, %struct.so_list* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @OBJF_SHARED, align 4
  %99 = load %struct.so_list*, %struct.so_list** %5, align 8
  %100 = getelementptr inbounds %struct.so_list, %struct.so_list* %99, i32 0, i32 1
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load %struct.so_list*, %struct.so_list** %5, align 8
  %106 = getelementptr inbounds %struct.so_list, %struct.so_list* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = icmp eq %struct.TYPE_11__* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %64
  %112 = load %struct.so_list*, %struct.so_list** %5, align 8
  %113 = getelementptr inbounds %struct.so_list, %struct.so_list* %112, i32 0, i32 1
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = call i64 @obstack_alloc(i32* %115, i32 24)
  %117 = inttoptr i64 %116 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %11, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store %struct.so_list* null, %struct.so_list** %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = load %struct.so_list*, %struct.so_list** %5, align 8
  %124 = getelementptr inbounds %struct.so_list, %struct.so_list* %123, i32 0, i32 1
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %126, align 8
  br label %127

127:                                              ; preds = %111, %64
  %128 = load %struct.so_list*, %struct.so_list** %5, align 8
  %129 = getelementptr inbounds %struct.so_list, %struct.so_list* %128, i32 0, i32 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %11, align 8
  %133 = load %struct.so_list*, %struct.so_list** %5, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  store %struct.so_list* %133, %struct.so_list** %135, align 8
  %136 = load %struct.so_list*, %struct.so_list** %5, align 8
  %137 = getelementptr inbounds %struct.so_list, %struct.so_list* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %143 = call i32 @do_cleanups(%struct.cleanup* %142)
  br label %144

144:                                              ; preds = %127, %19
  ret void
}

declare dso_local i32* @bfd_openr(i8*, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i32 @bfd_check_format(i32*, i32) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local %struct.TYPE_12__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i64 @bfd_section_vma(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, %struct.TYPE_12__**) #1

declare dso_local %struct.section_addr_info* @alloc_section_addr_info(i32) #1

declare dso_local i32 @bfd_count_sections(i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.section_addr_info*) #1

declare dso_local %struct.TYPE_13__* @symbol_file_add(i8*, i32, %struct.section_addr_info*, i32, i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
