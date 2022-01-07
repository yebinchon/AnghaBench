; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_open_inarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_open_inarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.stat = type { i32 }

@bfd_error_no_error = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@operation_alters_arch = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@program_name = common dso_local global i8* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@silent_create = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"creating %s\00", align 1
@output_filename = common dso_local global i8* null, align 8
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@bfd_error_no_more_archived_files = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @open_inarch(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @bfd_error_no_error, align 4
  %14 = call i32 @bfd_set_error(i32 %13)
  store i8* null, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %2
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @bfd_fatal(i8* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @operation_alters_arch, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @program_name, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @perror(i8* %32)
  %34 = call i32 (...) @maybequit()
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %137

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = call %struct.TYPE_13__* @bfd_openr(i8* %39, i8* null)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %12, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %42 = icmp ne %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %45 = load i32, i32* @bfd_object, align 4
  %46 = call i64 @bfd_check_format(%struct.TYPE_13__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = call i8* @bfd_get_target(%struct.TYPE_13__* %49)
  store i8* %50, i8** %6, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = call i32 @bfd_close(%struct.TYPE_13__* %52)
  br label %54

54:                                               ; preds = %51, %38
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call %struct.TYPE_13__* @bfd_openw(i8* %56, i8* %57)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = icmp eq %struct.TYPE_13__* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = load i32, i32* @bfd_archive, align 4
  %64 = call i32 @bfd_set_format(%struct.TYPE_13__* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = call i32 @bfd_close(%struct.TYPE_13__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66, %61, %55
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @bfd_fatal(i8* %71)
  br label %81

73:                                               ; preds = %66
  %74 = load i32, i32* @silent_create, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @non_fatal(i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i8*, i8** %4, align 8
  store i8* %82, i8** @output_filename, align 8
  br label %83

83:                                               ; preds = %81, %2
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call %struct.TYPE_13__* @bfd_openr(i8* %84, i8* %85)
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %10, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = icmp eq %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %134, %89
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @bfd_fatal(i8* %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = load i32, i32* @bfd_archive, align 4
  %96 = call i32 @bfd_check_format_matches(%struct.TYPE_13__* %94, i32 %95, i8*** %11)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @bfd_nonfatal(i8* %99)
  %101 = call i64 (...) @bfd_get_error()
  %102 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8**, i8*** %11, align 8
  %106 = call i32 @list_matching_formats(i8** %105)
  %107 = load i8**, i8*** %11, align 8
  %108 = call i32 @free(i8** %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = call i32 @xexit(i32 1)
  br label %111

111:                                              ; preds = %109, %93
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store %struct.TYPE_13__** %113, %struct.TYPE_13__*** %7, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = call %struct.TYPE_13__* @bfd_openr_next_archived_file(%struct.TYPE_13__* %114, %struct.TYPE_13__* null)
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %8, align 8
  br label %116

116:                                              ; preds = %125, %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = call i32 @PROGRESS(i32 1)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store %struct.TYPE_13__** %124, %struct.TYPE_13__*** %7, align 8
  br label %125

125:                                              ; preds = %119
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = call %struct.TYPE_13__* @bfd_openr_next_archived_file(%struct.TYPE_13__* %126, %struct.TYPE_13__* %127)
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %8, align 8
  br label %116

129:                                              ; preds = %116
  %130 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %130, align 8
  %131 = call i64 (...) @bfd_get_error()
  %132 = load i64, i64* @bfd_error_no_more_archived_files, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %90

135:                                              ; preds = %129
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %3, align 8
  br label %137

137:                                              ; preds = %135, %28
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %138
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @bfd_fatal(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @maybequit(...) #1

declare dso_local %struct.TYPE_13__* @bfd_openr(i8*, i8*) #1

declare dso_local i64 @bfd_check_format(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @bfd_get_target(%struct.TYPE_13__*) #1

declare dso_local i32 @bfd_close(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @bfd_openw(i8*, i8*) #1

declare dso_local i32 @bfd_set_format(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @non_fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_check_format_matches(%struct.TYPE_13__*, i32, i8***) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @list_matching_formats(i8**) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local %struct.TYPE_13__* @bfd_openr_next_archived_file(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @PROGRESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
