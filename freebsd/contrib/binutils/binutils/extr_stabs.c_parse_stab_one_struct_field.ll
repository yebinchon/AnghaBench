; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_one_struct_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_one_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@DEBUG_VISIBILITY_PUBLIC = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PROTECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown visibility character for field\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8**, i8*, i32*, i32*)* @parse_stab_one_struct_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_one_struct_field(i8* %0, %struct.stab_handle* %1, i8** %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stab_handle*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i8**, i8*** %10, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i8* @savestring(i8* %24, i32 %31)
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8**, i8*** %10, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %10, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %42, i32* %16, align 4
  br label %66

43:                                               ; preds = %6
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load i8**, i8*** %10, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %57 [
    i32 48, label %51
    i32 49, label %53
    i32 50, label %55
  ]

51:                                               ; preds = %43
  %52 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  store i32 %52, i32* %16, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32, i32* @DEBUG_VISIBILITY_PROTECTED, align 4
  store i32 %54, i32* %16, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %56, i32* %16, align 4
  br label %62

57:                                               ; preds = %43
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @warn_stab(i8* %58, i32 %59)
  %61 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %57, %55, %53, %51
  %63 = load i8**, i8*** %10, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %63, align 8
  br label %66

66:                                               ; preds = %62, %41
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.stab_handle*, %struct.stab_handle** %9, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = call i64 @parse_stab_type(i8* %67, %struct.stab_handle* %68, i8* null, i8** %69, i64** null)
  store i64 %70, i64* %17, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %7, align 4
  br label %180

76:                                               ; preds = %66
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 58
  br i1 %81, label %82, label %119

82:                                               ; preds = %76
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %83, align 8
  %86 = load i8**, i8*** %10, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 59)
  store i8* %88, i8** %11, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @bad_stab(i8* %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %7, align 4
  br label %180

95:                                               ; preds = %82
  %96 = load i8**, i8*** %10, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8**, i8*** %10, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = ptrtoint i8* %98 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @savestring(i8* %97, i32 %104)
  store i8* %105, i8** %20, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8**, i8*** %10, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i8*, i8** %20, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @debug_make_static_member(i8* %109, i8* %110, i64 %111, i8* %112, i32 %113)
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %7, align 4
  br label %180

119:                                              ; preds = %76
  %120 = load i8**, i8*** %10, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 44
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 @bad_stab(i8* %126)
  %128 = load i32, i32* @FALSE, align 4
  store i32 %128, i32* %7, align 4
  br label %180

129:                                              ; preds = %119
  %130 = load i8**, i8*** %10, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %130, align 8
  %133 = load i8**, i8*** %10, align 8
  %134 = call i64 @parse_number(i8** %133, i32* null)
  store i64 %134, i64* %18, align 8
  %135 = load i8**, i8*** %10, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 44
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load i8*, i8** %14, align 8
  %142 = call i32 @bad_stab(i8* %141)
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %7, align 4
  br label %180

144:                                              ; preds = %129
  %145 = load i8**, i8*** %10, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %145, align 8
  %148 = load i8**, i8*** %10, align 8
  %149 = call i64 @parse_number(i8** %148, i32* null)
  store i64 %149, i64* %19, align 8
  %150 = load i8**, i8*** %10, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 59
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 @bad_stab(i8* %156)
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %7, align 4
  br label %180

159:                                              ; preds = %144
  %160 = load i8**, i8*** %10, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %160, align 8
  %163 = load i64, i64* %18, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load i64, i64* %19, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* @DEBUG_VISIBILITY_IGNORE, align 4
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %168, %165, %159
  %171 = load i8*, i8** %8, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %18, align 8
  %175 = load i64, i64* %19, align 8
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @debug_make_field(i8* %171, i8* %172, i64 %173, i64 %174, i64 %175, i32 %176)
  %178 = load i32*, i32** %12, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @TRUE, align 4
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %170, %155, %140, %125, %95, %91, %74
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @debug_make_static_member(i8*, i8*, i64, i8*, i32) #1

declare dso_local i64 @parse_number(i8**, i32*) #1

declare dso_local i32 @debug_make_field(i8*, i8*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
