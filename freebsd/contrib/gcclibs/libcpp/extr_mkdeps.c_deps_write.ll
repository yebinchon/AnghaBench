; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_deps_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_deps_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i32, i8**, i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c" \\\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deps_write(%struct.deps* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.deps*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.deps* %0, %struct.deps** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %13, 34
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 34, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %12, %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %64, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.deps*, %struct.deps** %4, align 8
  %20 = getelementptr inbounds %struct.deps, %struct.deps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %17
  %24 = load %struct.deps*, %struct.deps** %4, align 8
  %25 = getelementptr inbounds %struct.deps, %struct.deps* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = add i32 1, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %37, %23
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @putc(i8 signext 32, i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.deps*, %struct.deps** %4, align 8
  %56 = getelementptr inbounds %struct.deps, %struct.deps* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @fputs(i8* %61, i32* %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @putc(i8 signext 58, i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @putc(i8 signext 32, i32* %70)
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 2
  store i32 %73, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %121, %67
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.deps*, %struct.deps** %4, align 8
  %77 = getelementptr inbounds %struct.deps, %struct.deps* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %124

80:                                               ; preds = %74
  %81 = load %struct.deps*, %struct.deps** %4, align 8
  %82 = getelementptr inbounds %struct.deps, %struct.deps* %81, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlen(i8* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %99)
  %101 = load i32, i32* %7, align 4
  %102 = add i32 1, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %98, %94, %80
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @putc(i8 signext 32, i32* %107)
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load %struct.deps*, %struct.deps** %4, align 8
  %113 = getelementptr inbounds %struct.deps, %struct.deps* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @fputs(i8* %118, i32* %119)
  br label %121

121:                                              ; preds = %111
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %74

124:                                              ; preds = %74
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @putc(i8 signext 10, i32* %125)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
