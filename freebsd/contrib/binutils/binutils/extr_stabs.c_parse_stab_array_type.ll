; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.stab_handle*, i8**, i64)* @parse_stab_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_stab_array_type(i8* %0, %struct.stab_handle* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stab_handle*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %23 = call i32 @parse_stab_type_number(i8** %11, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %26, i64* %5, align 8
  br label %167

27:                                               ; preds = %4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 61
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @debug_find_named_type(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i64 @debug_make_int_type(i8* %48, i32 4, i64 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %55, i64* %5, align 8
  br label %167

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i8*, i8** %11, align 8
  %59 = load i8**, i8*** %8, align 8
  store i8* %58, i8** %59, align 8
  br label %65

60:                                               ; preds = %35, %31, %27
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %63 = load i8**, i8*** %8, align 8
  %64 = call i64 @parse_stab_type(i8* %61, %struct.stab_handle* %62, i8* null, i8** %63, i64** null)
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i8**, i8*** %8, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 59
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @bad_stab(i8* %72)
  %74 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %74, i64* %5, align 8
  br label %167

75:                                               ; preds = %65
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %76, align 8
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %14, align 8
  %80 = load i8**, i8*** %8, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @ISDIGIT(i8 signext %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %75
  %86 = load i8**, i8*** %8, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 45
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i8**, i8*** %8, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %14, align 8
  br label %96

96:                                               ; preds = %91, %85, %75
  %97 = load i8**, i8*** %8, align 8
  %98 = call i64 @parse_number(i8** %97, i64* null)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load i8**, i8*** %8, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 59
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @bad_stab(i8* %106)
  %108 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %108, i64* %5, align 8
  br label %167

109:                                              ; preds = %96
  %110 = load i8**, i8*** %8, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  %113 = load i8**, i8*** %8, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @ISDIGIT(i8 signext %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %109
  %119 = load i8**, i8*** %8, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 45
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load i8**, i8*** %8, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %125, align 8
  %128 = load i64, i64* @TRUE, align 8
  store i64 %128, i64* %14, align 8
  br label %129

129:                                              ; preds = %124, %118, %109
  %130 = load i8**, i8*** %8, align 8
  %131 = call i64 @parse_number(i8** %130, i64* null)
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %16, align 4
  %133 = load i8**, i8*** %8, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 59
  br i1 %137, label %138, label %142

138:                                              ; preds = %129
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @bad_stab(i8* %139)
  %141 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %141, i64* %5, align 8
  br label %167

142:                                              ; preds = %129
  %143 = load i8**, i8*** %8, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %143, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load %struct.stab_handle*, %struct.stab_handle** %7, align 8
  %148 = load i8**, i8*** %8, align 8
  %149 = call i64 @parse_stab_type(i8* %146, %struct.stab_handle* %147, i8* null, i8** %148, i64** null)
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i64, i64* @DEBUG_TYPE_NULL, align 8
  store i64 %154, i64* %5, align 8
  br label %167

155:                                              ; preds = %142
  %156 = load i64, i64* %14, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* %13, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i64, i64* %9, align 8
  %166 = call i64 @debug_make_array_type(i8* %160, i64 %161, i64 %162, i32 %163, i32 %164, i64 %165)
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %159, %153, %138, %105, %71, %54, %25
  %168 = load i64, i64* %5, align 8
  ret i64 %168
}

declare dso_local i32 @parse_stab_type_number(i8**, i32*) #1

declare dso_local i64 @debug_find_named_type(i8*, i8*) #1

declare dso_local i64 @debug_make_int_type(i8*, i32, i64) #1

declare dso_local i64 @parse_stab_type(i8*, %struct.stab_handle*, i8*, i8**, i64**) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i64 @parse_number(i8**, i64*) #1

declare dso_local i64 @debug_make_array_type(i8*, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
