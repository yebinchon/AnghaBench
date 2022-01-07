; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_gdb_readline2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_gdb_readline2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_readline2.done_once = internal global i32 0, align 4
@instream = common dso_local global i64 0, align 8
@stdin = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_readline2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 80, i32* %6, align 4
  %7 = load i32, i32* @gdb_readline2.done_once, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @instream, align 8
  %11 = call i32 @ISATTY(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* @instream, align 8
  %15 = call i32 @setbuf(i64 %14, i32* null)
  store i32 1, i32* @gdb_readline2.done_once, align 4
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @xmalloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %16, %64
  %21 = load i64, i64* @instream, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @instream, align 8
  br label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @stdin, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = call i32 @fgetc(i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @EOF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %65

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @xfree(i8* %38)
  %40 = call i32 @input_handler(i8* null)
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 %47, i8* %52, align 1
  br label %53

53:                                               ; preds = %57, %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %6, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @xrealloc(i8* %60, i32 %61)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %4, align 8
  br label %53

64:                                               ; preds = %53
  br label %20

65:                                               ; preds = %44, %36
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @input_handler(i8* %71)
  ret void
}

declare dso_local i32 @ISATTY(i64) #1

declare dso_local i32 @setbuf(i64, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @fgetc(i64) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @input_handler(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
