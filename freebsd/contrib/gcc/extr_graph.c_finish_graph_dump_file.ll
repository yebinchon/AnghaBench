; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_graph.c_finish_graph_dump_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_graph.c_finish_graph_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@graph_ext = common dso_local global i8** null, align 8
@graph_dump_format = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@vcg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_graph_dump_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i8**, i8*** @graph_ext, align 8
  %11 = load i64, i64* @graph_dump_format, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = add i64 %17, %18
  %20 = call i8* @alloca(i64 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8**, i8*** @graph_ext, align 8
  %29 = load i64, i64* @graph_dump_format, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @memcpy(i8* %27, i8* %31, i64 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %1
  %39 = load i64, i64* @graph_dump_format, align 8
  %40 = load i64, i64* @vcg, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @fclose(i32* %46)
  br label %48

48:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
