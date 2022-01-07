; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_struct_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_parse_stab_struct_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_FIELD_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*, i8**, i32**, i32*)* @parse_stab_struct_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stab_struct_fields(i8* %0, %struct.stab_handle* %1, i8** %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32**, i32*** %10, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 10, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i64 @xmalloc(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %14, align 8
  br label %28

28:                                               ; preds = %115, %82, %5
  %29 = load i8**, i8*** %9, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 59
  br i1 %33, label %34, label %118

34:                                               ; preds = %28
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %13, align 8
  %37 = load i32, i32* %15, align 4
  %38 = add i32 %37, 1
  %39 = load i32, i32* %16, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* %16, align 4
  %43 = add i32 %42, 10
  store i32 %43, i32* %16, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %16, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i64 @xrealloc(i32* %44, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %14, align 8
  br label %51

51:                                               ; preds = %41, %34
  %52 = load i8*, i8** %13, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 36
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %85

61:                                               ; preds = %56, %51
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 95
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i8**, i8*** %9, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @parse_stab_cpp_abbrev(i8* %71, %struct.stab_handle* %72, i8** %73, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %6, align 4
  br label %127

82:                                               ; preds = %67
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %28

85:                                               ; preds = %61, %56
  %86 = load i8*, i8** %13, align 8
  %87 = call i8* @strchr(i8* %86, i8 signext 58)
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @bad_stab(i8* %91)
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %6, align 4
  br label %127

94:                                               ; preds = %85
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 58
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %118

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @parse_stab_one_struct_field(i8* %102, %struct.stab_handle* %103, i8** %104, i8* %105, i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %6, align 4
  br label %127

115:                                              ; preds = %101
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %28

118:                                              ; preds = %100, %28
  %119 = load i32, i32* @DEBUG_FIELD_NULL, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32**, i32*** %10, align 8
  store i32* %124, i32** %125, align 8
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %118, %113, %90, %80
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @xrealloc(i32*, i32) #1

declare dso_local i32 @parse_stab_cpp_abbrev(i8*, %struct.stab_handle*, i8**, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @bad_stab(i8*) #1

declare dso_local i32 @parse_stab_one_struct_field(i8*, %struct.stab_handle*, i8**, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
