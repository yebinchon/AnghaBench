; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c__cpp_interpret_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c__cpp_interpret_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"converting UCN to source character set\00", align 1
@HT_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cpp_interpret_identifier(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add i64 %14, 1
  %16 = call i64 @alloca(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %105, %3
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %108

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 92
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  br label %104

37:                                               ; preds = %23
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 117
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 8
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %47 = load i64, i64* %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub i64 %47, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 2
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %72, %37
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @ISXDIGIT(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %63, %59, %56
  %71 = phi i1 [ false, %59 ], [ false, %56 ], [ %69, %63 ]
  br i1 %71, label %72, label %85

72:                                               ; preds = %70
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %73, 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @hex_value(i8 signext %78)
  %80 = add nsw i32 %74, %79
  store i32 %80, i32* %11, align 4
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %10, align 4
  br label %56

85:                                               ; preds = %70
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 36
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  store i8 36, i8* %91, align 1
  br label %105

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @one_cppchar_to_utf8(i32 %94, i8** %8, i64* %12)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* @errno, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = load i32, i32* @CPP_DL_ERROR, align 4
  %102 = call i32 @cpp_errno(%struct.TYPE_4__* %100, i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %108

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %30
  br label %105

105:                                              ; preds = %104, %90
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %19

108:                                              ; preds = %98, %19
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @HT_ALLOC, align 4
  %120 = call i32 @ht_lookup(i32 %111, i8* %112, i32 %118, i32 %119)
  %121 = call i32* @CPP_HASHNODE(i32 %120)
  ret i32* %121
}

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @ISXDIGIT(i8 signext) #1

declare dso_local i32 @hex_value(i8 signext) #1

declare dso_local i32 @one_cppchar_to_utf8(i32, i8**, i64*) #1

declare dso_local i32 @cpp_errno(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32* @CPP_HASHNODE(i32) #1

declare dso_local i32 @ht_lookup(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
