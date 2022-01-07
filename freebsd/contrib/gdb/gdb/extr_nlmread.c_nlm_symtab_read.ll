; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nlmread.c_nlm_symtab_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nlmread.c_nlm_symtab_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.objfile = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Can't read symbols from %s: %s\00", align 1
@xfree = common dso_local global i32 0, align 4
@bfd_abs_section = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@mst_text = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@mst_data = common dso_local global i32 0, align 4
@mst_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.objfile*)* @nlm_symtab_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_symtab_read(i32* %0, i64 %1, %struct.objfile* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cleanup*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.objfile* %2, %struct.objfile** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @bfd_get_symtab_upper_bound(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @bfd_get_filename(i32* %20)
  %22 = call i32 (...) @bfd_get_error()
  %23 = call i8* @bfd_errmsg(i32 %22)
  %24 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @xmalloc(i64 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %31, %struct.TYPE_5__*** %9, align 8
  %32 = load i32, i32* @xfree, align 4
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %34 = call %struct.cleanup* @make_cleanup(i32 %32, %struct.TYPE_5__** %33)
  store %struct.cleanup* %34, %struct.cleanup** %12, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %37 = call i64 @bfd_canonicalize_symtab(i32* %35, %struct.TYPE_5__** %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @bfd_get_filename(i32* %41)
  %43 = call i32 (...) @bfd_get_error()
  %44 = call i8* @bfd_errmsg(i32 %43)
  %45 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %40, %28
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %106, %46
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  store i64 %64, i64* %13, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, @bfd_abs_section
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %69, %51
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SEC_CODE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @mst_text, align 4
  store i32 %83, i32* %14, align 4
  br label %98

84:                                               ; preds = %73
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SEC_DATA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @mst_data, align 4
  store i32 %94, i32* %14, align 4
  br label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @mst_unknown, align 4
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %82
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.objfile*, %struct.objfile** %6, align 8
  %105 = call i32 @prim_record_minimal_symbol(i32 %101, i64 %102, i32 %103, %struct.objfile* %104)
  br label %106

106:                                              ; preds = %98
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %47

109:                                              ; preds = %47
  %110 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %111 = call i32 @do_cleanups(%struct.cleanup* %110)
  br label %112

112:                                              ; preds = %109, %25
  ret void
}

declare dso_local i64 @bfd_get_symtab_upper_bound(i32*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.TYPE_5__**) #1

declare dso_local i64 @bfd_canonicalize_symtab(i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @prim_record_minimal_symbol(i32, i64, i32, %struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
