; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_make-relative-prefix.c_split_directories.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_make-relative-prefix.c_split_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*)* @split_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @split_directories(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %8, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load i32, i32* %10, align 4
  %20 = trunc i32 %19 to i8
  %21 = call i64 @IS_DIR_SEPARATOR(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %31, %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @IS_DIR_SEPARATOR(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  br label %26

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %18
  br label %12

36:                                               ; preds = %12
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i8**
  store i8** %43, i8*** %7, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i8** null, i8*** %3, align 8
  br label %147

47:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %100, %47
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i64 @IS_DIR_SEPARATOR(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @IS_DIR_SEPARATOR(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %62

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = call i8* @save_string(i8* %71, i32 %77)
  %79 = load i8**, i8*** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %70
  %92 = load i8**, i8*** %7, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* null, i8** %95, align 8
  %96 = load i8**, i8*** %7, align 8
  %97 = call i32 @free_split_directories(i8** %96)
  store i8** null, i8*** %3, align 8
  br label %147

98:                                               ; preds = %70
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %98, %56
  br label %50

101:                                              ; preds = %50
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  %104 = load i8*, i8** %9, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %101
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 -1
  %113 = load i8*, i8** %9, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i8* @save_string(i8* %110, i32 %117)
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  store i8* %118, i8** %123, align 8
  br label %124

124:                                              ; preds = %109, %101
  %125 = load i8**, i8*** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* null, i8** %128, align 8
  %129 = load i8**, i8*** %7, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i8**, i8*** %7, align 8
  %138 = call i32 @free_split_directories(i8** %137)
  store i8** null, i8*** %3, align 8
  br label %147

139:                                              ; preds = %124
  %140 = load i32*, i32** %5, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load i32*, i32** %5, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i8**, i8*** %7, align 8
  store i8** %146, i8*** %3, align 8
  br label %147

147:                                              ; preds = %145, %136, %91, %46
  %148 = load i8**, i8*** %3, align 8
  ret i8** %148
}

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @save_string(i8*, i32) #1

declare dso_local i32 @free_split_directories(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
