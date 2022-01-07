; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objcopy.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@status = common dso_local global i32 0, align 4
@bfd_archive = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@bfd_core = common dso_local global i32 0, align 4
@bfd_error_file_ambiguously_recognized = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @copy_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_file(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @get_file_size(i8* %17)
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* @status, align 4
  br label %145

21:                                               ; preds = %4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @bfd_openr(i8* %22, i8* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @RETURN_NONFATAL(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @bfd_archive, align 4
  %33 = call i64 @bfd_check_format(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  %40 = call i8* @bfd_get_target(i32* %39)
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %12, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32* @bfd_openw(i8* %45, i8* %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @RETURN_NONFATAL(i8* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @copy_archive(i32* %54, i32* %55, i8* %56, i32 %57)
  br label %145

59:                                               ; preds = %30
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @bfd_object, align 4
  %62 = call i64 @bfd_check_format_matches(i32* %60, i32 %61, i8*** %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %114, %64
  %66 = load i8*, i8** %8, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = call i8* @bfd_get_target(i32* %69)
  store i8* %70, i8** %8, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32* @bfd_openw(i8* %72, i8* %73)
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @RETURN_NONFATAL(i8* %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @copy_object(i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 1, i32* @status, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @bfd_close(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @RETURN_NONFATAL(i8* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @bfd_close(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @RETURN_NONFATAL(i8* %98)
  br label %100

100:                                              ; preds = %97, %93
  br label %144

101:                                              ; preds = %59
  %102 = call i64 (...) @bfd_get_error()
  store i64 %102, i64* %15, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* @bfd_core, align 4
  %105 = call i64 @bfd_check_format_matches(i32* %103, i32 %104, i8*** %11)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i8**, i8*** %10, align 8
  %113 = call i32 @free(i8** %112)
  br label %114

114:                                              ; preds = %111, %107
  br label %65

115:                                              ; preds = %101
  %116 = call i64 (...) @bfd_get_error()
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @bfd_set_error(i64 %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @bfd_nonfatal(i8* %124)
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load i8**, i8*** %10, align 8
  %131 = call i32 @list_matching_formats(i8** %130)
  %132 = load i8**, i8*** %10, align 8
  %133 = call i32 @free(i8** %132)
  br label %134

134:                                              ; preds = %129, %123
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* @bfd_error_file_ambiguously_recognized, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8**, i8*** %11, align 8
  %140 = call i32 @list_matching_formats(i8** %139)
  %141 = load i8**, i8*** %11, align 8
  %142 = call i32 @free(i8** %141)
  br label %143

143:                                              ; preds = %138, %134
  store i32 1, i32* @status, align 4
  br label %144

144:                                              ; preds = %143, %100
  br label %145

145:                                              ; preds = %20, %144, %53
  ret void
}

declare dso_local i32 @get_file_size(i8*) #1

declare dso_local i32* @bfd_openr(i8*, i8*) #1

declare dso_local i32 @RETURN_NONFATAL(i8*) #1

declare dso_local i64 @bfd_check_format(i32*, i32) #1

declare dso_local i8* @bfd_get_target(i32*) #1

declare dso_local i32* @bfd_openw(i8*, i8*) #1

declare dso_local i32 @copy_archive(i32*, i32*, i8*, i32) #1

declare dso_local i64 @bfd_check_format_matches(i32*, i32, i8***) #1

declare dso_local i32 @copy_object(i32*, i32*) #1

declare dso_local i32 @bfd_close(i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @free(i8**) #1

declare dso_local i32 @bfd_set_error(i64) #1

declare dso_local i32 @bfd_nonfatal(i8*) #1

declare dso_local i32 @list_matching_formats(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
