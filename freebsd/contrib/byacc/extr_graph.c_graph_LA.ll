; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_graph.c_graph_LA.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_graph.c_graph_LA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntokens = common dso_local global i32 0, align 4
@LAruleno = common dso_local global i32* null, align 8
@larno = common dso_local global i64 0, align 8
@LA = common dso_local global i32* null, align 8
@graph_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" { \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@symbol_pname = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @graph_LA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_LA(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @ntokens, align 4
  %7 = call i64 @WORDSIZE(i32 %6)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32*, i32** @LAruleno, align 8
  %11 = load i64, i64* @larno, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %1
  %16 = load i32*, i32** @LA, align 8
  %17 = load i64, i64* @larno, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %17, %19
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @graph_file, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ntokens, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %43, %15
  %27 = load i32, i32* %3, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @BIT(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @graph_file, align 4
  %36 = load i8**, i8*** @symbol_pname, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %34, %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  br label %26

46:                                               ; preds = %26
  %47 = load i32, i32* @graph_file, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i64, i64* @larno, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* @larno, align 8
  br label %51

51:                                               ; preds = %46, %1
  ret void
}

declare dso_local i64 @WORDSIZE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @BIT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
