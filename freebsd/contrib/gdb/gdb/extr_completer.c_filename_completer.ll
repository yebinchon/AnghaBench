; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_filename_completer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_completer.c_filename_completer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rl_completer_word_break_characters = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @filename_completer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i8* @xmalloc(i32 %14)
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %6, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %2, %54, %133
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @rl_filename_completion_function(i8* %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @xrealloc(i8** %27, i32 %31)
  %33 = inttoptr i64 %32 to i8**
  store i8** %33, i8*** %6, align 8
  br label %34

34:                                               ; preds = %24, %17
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  store i8* %38, i8** %43, align 8
  br label %134

44:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 126
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %17

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  store i8* %60, i8** %65, align 8
  br label %133

66:                                               ; preds = %55
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = add nsw i32 %72, 5
  %74 = call i8* @xmalloc(i32 %73)
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  %83 = call i32 @strcpy(i8* %75, i8* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = load i8**, i8*** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %84, i8** %89, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @xfree(i8* %90)
  br label %132

92:                                               ; preds = %66
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = sext i32 %94 to i64
  %96 = load i8*, i8** %3, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = add nsw i64 %95, %100
  %102 = add nsw i64 %101, 5
  %103 = trunc i64 %102 to i32
  %104 = call i8* @xmalloc(i32 %103)
  store i8* %104, i8** %10, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @strncpy(i8* %105, i8* %106, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @strcat(i8* %121, i8* %122)
  %124 = load i8*, i8** %10, align 8
  %125 = load i8**, i8*** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  store i8* %124, i8** %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @xfree(i8* %130)
  br label %132

132:                                              ; preds = %92, %70
  br label %133

133:                                              ; preds = %132, %59
  br label %17

134:                                              ; preds = %37
  %135 = load i8**, i8*** %6, align 8
  ret i8** %135
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @rl_filename_completion_function(i8*, i32) #1

declare dso_local i64 @xrealloc(i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
