; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_set_active_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_glbl.c_set_active_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@active_last = common dso_local global i64 0, align 8
@active_size = common dso_local global i64 0, align 8
@active_list = common dso_local global i32** null, align 8
@MINBUFSZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_active_node(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @active_last, align 8
  %7 = add i64 %6, 1
  %8 = load i64, i64* @active_size, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i64, i64* @active_size, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32 (...) @SPL1()
  %13 = load i32**, i32*** @active_list, align 8
  %14 = load i32, i32* @MINBUFSZ, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @realloc(i32** %13, i32 %19)
  %21 = inttoptr i64 %20 to i32**
  store i32** %21, i32*** %5, align 8
  %22 = icmp eq i32** %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  %28 = call i32 (...) @SPL0()
  %29 = load i32, i32* @ERR, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %10
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* @active_size, align 8
  %32 = load i32**, i32*** %5, align 8
  store i32** %32, i32*** @active_list, align 8
  %33 = call i32 (...) @SPL0()
  br label %34

34:                                               ; preds = %30, %1
  %35 = load i32*, i32** %3, align 8
  %36 = load i32**, i32*** @active_list, align 8
  %37 = load i64, i64* @active_last, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @active_last, align 8
  %39 = getelementptr inbounds i32*, i32** %36, i64 %37
  store i32* %35, i32** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @SPL1(...) #1

declare dso_local i64 @realloc(i32**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @SPL0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
