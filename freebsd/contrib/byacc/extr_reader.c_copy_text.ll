; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_copy_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ainfo = type { i32, i32, i32 }

@text_file = common dso_local global i32* null, align 8
@lineno = common dso_local global i32 0, align 4
@cptr = common dso_local global i8* null, align 8
@line = common dso_local global i8* null, align 8
@lflag = common dso_local global i32 0, align 4
@line_format = common dso_local global i8* null, align 8
@input_file_name = common dso_local global i32 0, align 4
@R_CURL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_text() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ainfo, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32*, i32** @text_file, align 8
  store i32* %7, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @lineno, align 4
  %9 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = call i32 (...) @dup_line()
  %11 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8*, i8** @cptr, align 8
  %16 = load i8*, i8** @line, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sub nsw i64 %19, 2
  %21 = add nsw i64 %14, %20
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** @cptr, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %0
  %29 = call i32 (...) @get_line()
  %30 = load i8*, i8** @line, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @unterminated_text(%struct.ainfo* %4)
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, i32* @lflag, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = load i8*, i8** @line_format, align 8
  %41 = load i32, i32* @lineno, align 4
  %42 = load i32, i32* @input_file_name, align 4
  %43 = call i32 @fprintf(i32* %39, i8* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %101, %71, %60, %57, %44
  %46 = load i8*, i8** @cptr, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** @cptr, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  switch i32 %50, label %101 [
    i32 10, label %51
    i32 39, label %60
    i32 34, label %60
    i32 47, label %71
    i32 37, label %81
    i32 92, label %81
  ]

51:                                               ; preds = %45
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @putc(i32 10, i32* %52)
  store i32 0, i32* %3, align 4
  %54 = call i32 (...) @get_line()
  %55 = load i8*, i8** @line, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %45

58:                                               ; preds = %51
  %59 = call i32 @unterminated_text(%struct.ainfo* %4)
  br label %60

60:                                               ; preds = %45, %45, %58
  %61 = load i32, i32* %1, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @putc(i32 %61, i32* %62)
  %64 = load i32, i32* %1, align 4
  %65 = call i8* @copy_string(i32 %64)
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @fputs(i8* %66, i32* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @free(i8* %69)
  store i32 1, i32* %3, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load i32, i32* %1, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @putc(i32 %72, i32* %73)
  %75 = call i8* (...) @copy_comment()
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @fputs(i8* %76, i32* %77)
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @free(i8* %79)
  store i32 1, i32* %3, align 4
  br label %45

81:                                               ; preds = %45, %45
  %82 = load i8*, i8** @cptr, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @R_CURL, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @putc(i32 10, i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i8*, i8** @cptr, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** @cptr, align 8
  %97 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @FREE(i32 %98)
  ret void

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %45, %100
  %102 = load i32, i32* %1, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @putc(i32 %102, i32* %103)
  store i32 1, i32* %3, align 4
  br label %45
}

declare dso_local i32 @dup_line(...) #1

declare dso_local i32 @get_line(...) #1

declare dso_local i32 @unterminated_text(%struct.ainfo*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i8* @copy_string(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @copy_comment(...) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
