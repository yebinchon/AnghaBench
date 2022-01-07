; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_baseclasses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_baseclasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unknown virtual character for baseclass\00", align 1
@DEBUG_VISIBILITY_PRIVATE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PROTECTED = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_PUBLIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"unknown visibility character for baseclass\00", align 1
@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@DEBUG_BASECLASS_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8**, i64**)* @parse_stab_baseclasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_baseclasses(i8* %0, %struct.stab_handle* %1, i8** %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stab_handle*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64** %3, i64*** %9, align 8
  %18 = load i64**, i64*** %9, align 8
  store i64* null, i64** %18, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 33
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %5, align 4
  br label %164

28:                                               ; preds = %4
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = call i64 @parse_number(i8** %32, i32* null)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 44
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @bad_stab(i8* %41)
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %164

44:                                               ; preds = %28
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %45, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @xmalloc(i32 %52)
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %152, %44
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %155

59:                                               ; preds = %55
  %60 = load i8**, i8*** %8, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %68 [
    i32 48, label %64
    i32 49, label %66
  ]

64:                                               ; preds = %59
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %14, align 4
  br label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %14, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @warn_stab(i8* %69, i32 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %68, %66, %64
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %87 [
    i32 48, label %81
    i32 49, label %83
    i32 50, label %85
  ]

81:                                               ; preds = %73
  %82 = load i32, i32* @DEBUG_VISIBILITY_PRIVATE, align 4
  store i32 %82, i32* %15, align 4
  br label %92

83:                                               ; preds = %73
  %84 = load i32, i32* @DEBUG_VISIBILITY_PROTECTED, align 4
  store i32 %84, i32* %15, align 4
  br label %92

85:                                               ; preds = %73
  %86 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %86, i32* %15, align 4
  br label %92

87:                                               ; preds = %73
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i32 @warn_stab(i8* %88, i32 %89)
  %91 = load i32, i32* @DEBUG_VISIBILITY_PUBLIC, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %87, %85, %83, %81
  %93 = load i8**, i8*** %8, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  %96 = load i8**, i8*** %8, align 8
  %97 = call i64 @parse_number(i8** %96, i32* null)
  store i64 %97, i64* %16, align 8
  %98 = load i8**, i8*** %8, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 44
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @bad_stab(i8* %104)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %5, align 4
  br label %164

107:                                              ; preds = %92
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %113 = load i8**, i8*** %8, align 8
  %114 = call i64 @parse_stab_type(i8* %111, %struct.stab_handle* %112, i8* null, i8** %113, i64** null)
  store i64 %114, i64* %17, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %5, align 4
  br label %164

120:                                              ; preds = %107
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @debug_make_baseclass(i8* %121, i64 %122, i64 %123, i32 %124, i32 %125)
  %127 = load i64*, i64** %13, align 8
  %128 = load i32, i32* %12, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  %131 = load i64*, i64** %13, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DEBUG_BASECLASS_NULL, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %120
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %5, align 4
  br label %164

140:                                              ; preds = %120
  %141 = load i8**, i8*** %8, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 59
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %5, align 4
  br label %164

148:                                              ; preds = %140
  %149 = load i8**, i8*** %8, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %149, align 8
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %12, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %55

155:                                              ; preds = %55
  %156 = load i64, i64* @DEBUG_BASECLASS_NULL, align 8
  %157 = load i64*, i64** %13, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64 %156, i64* %160, align 8
  %161 = load i64*, i64** %13, align 8
  %162 = load i64**, i64*** %9, align 8
  store i64* %161, i64** %162, align 8
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %155, %146, %138, %118, %103, %40, %26
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i64 @parse_number(i8**, i32*) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @warn_stab(i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i64 @debug_make_baseclass(i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
