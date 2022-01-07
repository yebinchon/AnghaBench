; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_cpp_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_cpp_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@DEBUG_FIELD_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"_vptr$\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unnamed $vb type\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_vb$\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unrecognized C++ abbreviation\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"INVALID_CPLUSPLUS_ABBREV\00", align 1
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8**, i64*)* @parse_stab_cpp_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_cpp_abbrev(i8* %0, %struct.stab_handle* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stab_handle*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %18 = load i64*, i64** %9, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 118
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @bad_stab(i8* %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %132

31:                                               ; preds = %4
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %44 = load i8**, i8*** %8, align 8
  %45 = call i64 @parse_stab_type(i8* %42, %struct.stab_handle* %43, i8* null, i8** %44, i64** null)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %132

51:                                               ; preds = %31
  %52 = load i32, i32* %11, align 4
  switch i32 %52, label %67 [
    i32 102, label %53
    i32 98, label %54
  ]

53:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %71

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i8* @debug_get_type_name(i8* %55, i64 %56)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @warn_stab(i8* %61, i32 %62)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i8*, i8** %14, align 8
  %66 = call i8* @concat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* null)
  store i8* %66, i8** %13, align 8
  br label %71

67:                                               ; preds = %51
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 @warn_stab(i8* %68, i32 %69)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %71

71:                                               ; preds = %67, %64, %53
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 58
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @bad_stab(i8* %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %5, align 4
  br label %132

81:                                               ; preds = %71
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = call i64 @parse_stab_type(i8* %85, %struct.stab_handle* %86, i8* null, i8** %87, i64** null)
  store i64 %88, i64* %15, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 44
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @bad_stab(i8* %95)
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %132

98:                                               ; preds = %81
  %99 = load i8**, i8*** %8, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = call i32 @parse_number(i8** %102, i32* null)
  store i32 %103, i32* %16, align 4
  %104 = load i8**, i8*** %8, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 59
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @bad_stab(i8* %110)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %5, align 4
  br label %132

113:                                              ; preds = %98
  %114 = load i8**, i8*** %8, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %114, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  %122 = call i64 @debug_make_field(i8* %117, i8* %118, i64 %119, i32 %120, i32 0, i32 %121)
  %123 = load i64*, i64** %9, align 8
  store i64 %122, i64* %123, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DEBUG_FIELD_NULL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %113
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %5, align 4
  br label %132

130:                                              ; preds = %113
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %128, %109, %94, %77, %49, %26
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i8* @debug_get_type_name(i8*, i64) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @concat(i8*, i8*, i8*) #1

declare dso_local i32 @parse_number(i8**, i32*) #1

declare dso_local i64 @debug_make_field(i8*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
