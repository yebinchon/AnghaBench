; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_get_base_file_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_get_base_file_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_BASE_FILES = common dso_local global i64 0, align 8
@lang_dir_names = common dso_local global i8** null, align 8
@NUM_LANG_FILES = common dso_local global i32 0, align 4
@lang_files = common dso_local global i32* null, align 8
@langs_for_lang_files = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_base_file_bitmap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @get_file_basename(i8* %9)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  store i64 1, i64* %8, align 8
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @NUM_BASE_FILES, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = load i8**, i8*** @lang_dir_names, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %20
  %33 = load i8*, i8** %3, align 8
  %34 = load i8**, i8*** @lang_dir_names, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** @lang_dir_names, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i64 @memcmp(i8* %33, i8* %37, i64 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i64, i64* %8, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %32, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %16

53:                                               ; preds = %16
  br label %54

54:                                               ; preds = %53, %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %98, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NUM_LANG_FILES, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = load i32*, i32** @lang_files, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcmp(i8* %60, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %97, label %68

68:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %93, %68
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* @NUM_BASE_FILES, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load i8**, i8*** @lang_dir_names, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32*, i32** @langs_for_lang_files, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @strcmp(i8* %79, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %74
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %69

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %59
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %55

101:                                              ; preds = %55
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* @NUM_BASE_FILES, align 8
  %106 = trunc i64 %105 to i32
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i8* @get_file_basename(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
