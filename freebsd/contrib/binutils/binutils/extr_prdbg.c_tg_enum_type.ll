; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_enum_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_enum_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s\09%s\090;\22\09kind:e\09type:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s\09%s\090;\22\09kind:g\09enum:%s\09value:%s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i32*)* @tg_enum_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_enum_type(i8* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [20 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.pr_handle*
  store %struct.pr_handle* %15, %struct.pr_handle** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @pr_enum_type(i8* %16, i8* %17, i8** %18, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %89

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %29 ]
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %36 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %40 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %43 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %41, i8* %46)
  br label %48

48:                                               ; preds = %34, %30
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i8**, i8*** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @print_vma(i32 %64, i8* %65, i32 %66, i32 %67)
  %69 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %70 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %78 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %82 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %79, i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %59
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %52

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %22
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @pr_enum_type(i8*, i8*, i8**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
