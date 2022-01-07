; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_apply_vpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_mkdeps.c_apply_vpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.deps*, i8*)* @apply_vpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @apply_vpath(%struct.deps* %0, i8* %1) #0 {
  %3 = alloca %struct.deps*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.deps* %0, %struct.deps** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.deps*, %struct.deps** %3, align 8
  %8 = getelementptr inbounds %struct.deps, %struct.deps* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %89

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %85, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.deps*, %struct.deps** %3, align 8
  %15 = getelementptr inbounds %struct.deps, %struct.deps* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %88

18:                                               ; preds = %12
  %19 = load %struct.deps*, %struct.deps** %3, align 8
  %20 = getelementptr inbounds %struct.deps, %struct.deps* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.deps*, %struct.deps** %3, align 8
  %28 = getelementptr inbounds %struct.deps, %struct.deps* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strncmp(i32 %25, i8* %26, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %83, label %36

36:                                               ; preds = %18
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.deps*, %struct.deps** %3, align 8
  %39 = getelementptr inbounds %struct.deps, %struct.deps* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %37, i64 %45
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @IS_DIR_SEPARATOR(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  br label %84

52:                                               ; preds = %36
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @IS_DIR_SEPARATOR(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %84

71:                                               ; preds = %64, %58, %52
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.deps*, %struct.deps** %3, align 8
  %74 = getelementptr inbounds %struct.deps, %struct.deps* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %72, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %4, align 8
  br label %88

83:                                               ; preds = %18
  br label %84

84:                                               ; preds = %83, %70, %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %12

88:                                               ; preds = %71, %12
  br label %89

89:                                               ; preds = %88, %2
  br label %90

90:                                               ; preds = %116, %89
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = call i64 @IS_DIR_SEPARATOR(i8 signext %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i1 [ false, %90 ], [ %101, %96 ]
  br i1 %103, label %104, label %117

104:                                              ; preds = %102
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  store i8* %106, i8** %4, align 8
  br label %107

107:                                              ; preds = %113, %104
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = call i64 @IS_DIR_SEPARATOR(i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %4, align 8
  br label %107

116:                                              ; preds = %107
  br label %90

117:                                              ; preds = %102
  %118 = load i8*, i8** %4, align 8
  ret i8* %118
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
