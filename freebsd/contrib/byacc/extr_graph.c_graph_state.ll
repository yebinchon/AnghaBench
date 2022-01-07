; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_graph.c_graph_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_graph.c_graph_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookaheads = common dso_local global i64* null, align 8
@larno = common dso_local global i32 0, align 4
@graph_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\0A\09q%d [label=\22%d:\\l\00", align 1
@itemset = common dso_local global i32* null, align 8
@itemsetend = common dso_local global i32* null, align 8
@ritem = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"  %s -> \00", align 1
@symbol_pname = common dso_local global i8** null, align 8
@rlhs = common dso_local global i64* null, align 8
@rrhs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\l\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\22];\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @graph_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i64*, i64** @lookaheads, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @larno, align 4
  %13 = load i32, i32* @graph_file, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32*, i32** @itemset, align 8
  store i32* %17, i32** %3, align 8
  br label %18

18:                                               ; preds = %103, %1
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** @itemsetend, align 8
  %21 = icmp ult i32* %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %18
  %23 = load i32*, i32** @ritem, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %5, align 8
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %32, %22
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  br label %28

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @graph_file, align 4
  %40 = load i8**, i8*** @symbol_pname, align 8
  %41 = load i64*, i64** @rlhs, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8*, i8** %40, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** @ritem, align 8
  %50 = load i32*, i32** @rrhs, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %70, %35
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ult i32* %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* @graph_file, align 4
  %63 = load i8**, i8*** @symbol_pname, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  br label %57

73:                                               ; preds = %57
  %74 = load i32, i32* @graph_file, align 4
  %75 = call i32 @putc(i8 signext 46, i32 %74)
  br label %76

76:                                               ; preds = %80, %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* @graph_file, align 4
  %82 = load i8**, i8*** @symbol_pname, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %5, align 8
  br label %76

91:                                               ; preds = %76
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @graph_LA(i32 %98)
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i32, i32* @graph_file, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %3, align 8
  br label %18

106:                                              ; preds = %18
  %107 = load i32, i32* @graph_file, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @graph_LA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
