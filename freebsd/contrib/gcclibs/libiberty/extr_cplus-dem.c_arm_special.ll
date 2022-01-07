; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_arm_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_arm_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_VTABLE_STRING = common dso_local global i32 0, align 4
@ARM_VTABLE_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" virtual table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @arm_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_special(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i32, i32* @ARM_VTABLE_STRING, align 4
  %12 = load i32, i32* @ARM_VTABLE_STRLEN, align 4
  %13 = call i64 @strncmp(i8* %10, i32 %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %110

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @ARM_VTABLE_STRLEN, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %50, %15
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = call i32 @consume_count(i8** %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %113

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 95
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 95
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %47, %41, %31
  br label %21

51:                                               ; preds = %21
  %52 = load i32, i32* @ARM_VTABLE_STRLEN, align 4
  %53 = load i8**, i8*** %4, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %53, align 8
  br label %57

57:                                               ; preds = %106, %51
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load i8**, i8*** %4, align 8
  %65 = call i32 @consume_count(i8** %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = load i8**, i8*** %4, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %63
  store i32 0, i32* %3, align 4
  br label %113

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = load i8**, i8*** %4, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @string_prependn(i32* %77, i8* %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i8**, i8*** %4, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %83, align 8
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 95
  br i1 %92, label %93, label %106

93:                                               ; preds = %76
  %94 = load i8**, i8*** %4, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 95
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @string_prepend(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %103 = load i8**, i8*** %4, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %103, align 8
  br label %106

106:                                              ; preds = %100, %93, %76
  br label %57

107:                                              ; preds = %57
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @string_append(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %111

110:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %75, %30
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @consume_count(i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @string_prependn(i32*, i8*, i32) #1

declare dso_local i32 @string_prepend(i32*, i8*) #1

declare dso_local i32 @string_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
