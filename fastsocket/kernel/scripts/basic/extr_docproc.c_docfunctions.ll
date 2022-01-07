; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_docfunctions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_docfunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symfile = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@symfilecnt = common dso_local global i32 0, align 4
@symfilelist = common dso_local global %struct.symfile* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"docproc: \00", align 1
@KERNELDOC = common dso_local global i8* null, align 8
@DOCBOOK = common dso_local global i8* null, align 8
@NODOCSECTIONS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"<!-- %s -->\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @docfunctions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docfunctions(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.symfile*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @symfilecnt, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.symfile*, %struct.symfile** @symfilelist, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.symfile, %struct.symfile* %16, i64 %18
  %20 = getelementptr inbounds %struct.symfile, %struct.symfile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 2, %29
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i8** @malloc(i32 %34)
  store i8** %35, i8*** %9, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %27
  %42 = load i8*, i8** @KERNELDOC, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  store i8* %42, i8** %47, align 8
  %48 = load i8*, i8** @DOCBOOK, align 8
  %49 = load i8**, i8*** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load i8*, i8** @NODOCSECTIONS, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  store i8* %54, i8** %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %99, %41
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @symfilecnt, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load %struct.symfile*, %struct.symfile** @symfilelist, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.symfile, %struct.symfile* %65, i64 %67
  store %struct.symfile* %68, %struct.symfile** %10, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %95, %64
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.symfile*, %struct.symfile** %10, align 8
  %72 = getelementptr inbounds %struct.symfile, %struct.symfile* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %76, i8** %81, align 8
  %82 = load %struct.symfile*, %struct.symfile** %10, align 8
  %83 = getelementptr inbounds %struct.symfile, %struct.symfile* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %9, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  store i8* %89, i8** %94, align 8
  br label %95

95:                                               ; preds = %75
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %69

98:                                               ; preds = %69
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %60

102:                                              ; preds = %60
  %103 = load i8*, i8** %3, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* %103, i8** %108, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* null, i8** %112, align 8
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  %115 = load i8**, i8*** %9, align 8
  %116 = call i32 @exec_kernel_doc(i8** %115)
  %117 = load i32, i32* @stdout, align 4
  %118 = call i32 @fflush(i32 %117)
  %119 = load i8**, i8*** %9, align 8
  %120 = call i32 @free(i8** %119)
  ret void
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @exec_kernel_doc(i8**) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
