; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_free_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_free_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.objfile*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.objfile* }
%struct.TYPE_8__ = type { %struct.objfile* }
%struct.TYPE_7__ = type { %struct.objfile* }
%struct.TYPE_6__ = type { i32 (%struct.objfile*)* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"cannot close \22%s\22: %s\00", align 1
@rt_common_objfile = common dso_local global %struct.objfile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %4 = load %struct.objfile*, %struct.objfile** %2, align 8
  %5 = getelementptr inbounds %struct.objfile, %struct.objfile* %4, i32 0, i32 11
  %6 = load %struct.objfile*, %struct.objfile** %5, align 8
  %7 = icmp ne %struct.objfile* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.objfile*, %struct.objfile** %2, align 8
  %10 = getelementptr inbounds %struct.objfile, %struct.objfile* %9, i32 0, i32 11
  %11 = load %struct.objfile*, %struct.objfile** %10, align 8
  call void @free_objfile(%struct.objfile* %11)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.objfile*, %struct.objfile** %2, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.objfile*, %struct.objfile** %2, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 10
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.objfile*, %struct.objfile** %2, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 9
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.objfile*, %struct.objfile** %2, align 8
  %29 = getelementptr inbounds %struct.objfile, %struct.objfile* %28, i32 0, i32 9
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.objfile*)*, i32 (%struct.objfile*)** %31, align 8
  %33 = load %struct.objfile*, %struct.objfile** %2, align 8
  %34 = call i32 %32(%struct.objfile* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.objfile*, %struct.objfile** %2, align 8
  %37 = getelementptr inbounds %struct.objfile, %struct.objfile* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.objfile*, %struct.objfile** %2, align 8
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @bfd_get_filename(i32* %43)
  store i8* %44, i8** %3, align 8
  %45 = load %struct.objfile*, %struct.objfile** %2, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bfd_close(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (...) @bfd_get_error()
  %53 = call i32 @bfd_errmsg(i32 %52)
  %54 = call i32 @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %40
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @xfree(i8* %56)
  br label %58

58:                                               ; preds = %55, %35
  %59 = load %struct.objfile*, %struct.objfile** %2, align 8
  %60 = call i32 @unlink_objfile(%struct.objfile* %59)
  %61 = load %struct.objfile*, %struct.objfile** %2, align 8
  %62 = load %struct.objfile*, %struct.objfile** @rt_common_objfile, align 8
  %63 = icmp eq %struct.objfile* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store %struct.objfile* null, %struct.objfile** @rt_common_objfile, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = call i32 (...) @clear_pc_function_cache()
  %67 = load %struct.objfile*, %struct.objfile** %2, align 8
  %68 = call i32 @objfile_free_data(%struct.objfile* %67)
  %69 = load %struct.objfile*, %struct.objfile** %2, align 8
  %70 = getelementptr inbounds %struct.objfile, %struct.objfile* %69, i32 0, i32 7
  %71 = load %struct.objfile*, %struct.objfile** %70, align 8
  %72 = icmp ne %struct.objfile* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.objfile*, %struct.objfile** %2, align 8
  %75 = getelementptr inbounds %struct.objfile, %struct.objfile* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.objfile*, %struct.objfile** %2, align 8
  %78 = getelementptr inbounds %struct.objfile, %struct.objfile* %77, i32 0, i32 7
  %79 = load %struct.objfile*, %struct.objfile** %78, align 8
  %80 = call i32 @xmfree(i32 %76, %struct.objfile* %79)
  br label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.objfile*, %struct.objfile** %2, align 8
  %83 = getelementptr inbounds %struct.objfile, %struct.objfile* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.objfile*, %struct.objfile** %84, align 8
  %86 = icmp ne %struct.objfile* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.objfile*, %struct.objfile** %2, align 8
  %89 = getelementptr inbounds %struct.objfile, %struct.objfile* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.objfile*, %struct.objfile** %2, align 8
  %92 = getelementptr inbounds %struct.objfile, %struct.objfile* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load %struct.objfile*, %struct.objfile** %93, align 8
  %95 = call i32 @xmfree(i32 %90, %struct.objfile* %94)
  br label %96

96:                                               ; preds = %87, %81
  %97 = load %struct.objfile*, %struct.objfile** %2, align 8
  %98 = getelementptr inbounds %struct.objfile, %struct.objfile* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.objfile*, %struct.objfile** %99, align 8
  %101 = icmp ne %struct.objfile* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.objfile*, %struct.objfile** %2, align 8
  %104 = getelementptr inbounds %struct.objfile, %struct.objfile* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.objfile*, %struct.objfile** %2, align 8
  %107 = getelementptr inbounds %struct.objfile, %struct.objfile* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.objfile*, %struct.objfile** %108, align 8
  %110 = call i32 @xmfree(i32 %105, %struct.objfile* %109)
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.objfile*, %struct.objfile** %2, align 8
  %113 = getelementptr inbounds %struct.objfile, %struct.objfile* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bcache_xfree(i32 %114)
  %116 = load %struct.objfile*, %struct.objfile** %2, align 8
  %117 = getelementptr inbounds %struct.objfile, %struct.objfile* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bcache_xfree(i32 %118)
  %120 = load %struct.objfile*, %struct.objfile** %2, align 8
  %121 = getelementptr inbounds %struct.objfile, %struct.objfile* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load %struct.objfile*, %struct.objfile** %2, align 8
  %126 = getelementptr inbounds %struct.objfile, %struct.objfile* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @htab_delete(i64 %127)
  br label %129

129:                                              ; preds = %124, %111
  %130 = load %struct.objfile*, %struct.objfile** %2, align 8
  %131 = getelementptr inbounds %struct.objfile, %struct.objfile* %130, i32 0, i32 1
  %132 = call i32 @obstack_free(i32* %131, i32 0)
  %133 = load %struct.objfile*, %struct.objfile** %2, align 8
  %134 = getelementptr inbounds %struct.objfile, %struct.objfile* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.objfile*, %struct.objfile** %2, align 8
  %137 = call i32 @xmfree(i32 %135, %struct.objfile* %136)
  store %struct.objfile* null, %struct.objfile** %2, align 8
  ret void
}

declare dso_local i8* @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i32 @warning(i8*, i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @unlink_objfile(%struct.objfile*) #1

declare dso_local i32 @clear_pc_function_cache(...) #1

declare dso_local i32 @objfile_free_data(%struct.objfile*) #1

declare dso_local i32 @xmfree(i32, %struct.objfile*) #1

declare dso_local i32 @bcache_xfree(i32) #1

declare dso_local i32 @htab_delete(i64) #1

declare dso_local i32 @obstack_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
