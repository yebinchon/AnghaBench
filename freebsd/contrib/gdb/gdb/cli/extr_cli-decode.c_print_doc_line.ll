; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_print_doc_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-decode.c_print_doc_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@print_doc_line.line_buffer = internal global i8* null, align 8
@print_doc_line.line_size = internal global i32 0, align 4
@uiout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_doc_line(%struct.ui_file* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ui_file* %0, %struct.ui_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  store i32 80, i32* @print_doc_line.line_size, align 4
  %9 = load i32, i32* @print_doc_line.line_size, align 4
  %10 = call i64 @xmalloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @print_doc_line.line_buffer, align 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %36, %12
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 46
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 44
  br label %34

34:                                               ; preds = %29, %24, %19, %14
  %35 = phi i1 [ false, %24 ], [ false, %19 ], [ false, %14 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %14

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i32, i32* @print_doc_line.line_size, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* @print_doc_line.line_size, align 4
  %57 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %58 = call i32 @xfree(i8* %57)
  %59 = load i32, i32* @print_doc_line.line_size, align 4
  %60 = call i64 @xmalloc(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @print_doc_line.line_buffer, align 8
  br label %62

62:                                               ; preds = %49, %39
  %63 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @strncpy(i8* %63, i8* %64, i32 %70)
  %72 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @islower(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %62
  %85 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = call signext i8 @toupper(i8 signext %87)
  %89 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 %88, i8* %90, align 1
  br label %91

91:                                               ; preds = %84, %62
  %92 = load i32, i32* @uiout, align 4
  %93 = load i8*, i8** @print_doc_line.line_buffer, align 8
  %94 = call i32 @ui_out_text(i32 %92, i8* %93)
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
