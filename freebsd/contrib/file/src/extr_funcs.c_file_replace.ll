; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64 }

@REG_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_replace(%struct.magic_set* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.magic_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store %struct.magic_set* %0, %struct.magic_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @REG_EXTENDED, align 4
  %14 = call i32 @file_regcomp(i32* %7, i8* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %20 = call i32 @file_regerror(i32* %7, i32 %18, %struct.magic_set* %19)
  br label %61

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %24 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @file_regexec(i32* %7, i8* %26, i32 1, %struct.TYPE_5__* %10, i32 0)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %31 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %44 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  br label %51

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i8* [ %49, %42 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = call i32 @file_printf(%struct.magic_set* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %17
  br label %62

62:                                               ; preds = %61, %55
  %63 = call i32 @file_regfree(i32* %7)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @file_regcomp(i32*, i8*, i32) #1

declare dso_local i32 @file_regerror(i32*, i32, %struct.magic_set*) #1

declare dso_local i64 @file_regexec(i32*, i8*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @file_printf(%struct.magic_set*, i8*, i8*, i8*) #1

declare dso_local i32 @file_regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
