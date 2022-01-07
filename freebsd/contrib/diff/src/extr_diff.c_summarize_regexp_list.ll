; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff.c_summarize_regexp_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff.c_summarize_regexp_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regexp_list = type { i8*, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@CHAR_BIT = common dso_local global i32 0, align 4
@EXIT_TROUBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regexp_list*)* @summarize_regexp_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summarize_regexp_list(%struct.regexp_list* %0) #0 {
  %2 = alloca %struct.regexp_list*, align 8
  %3 = alloca i8*, align 8
  store %struct.regexp_list* %0, %struct.regexp_list** %2, align 8
  %4 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %5 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @CHAR_BIT, align 4
  %10 = shl i32 1, %9
  %11 = call i32 @xmalloc(i32 %10)
  %12 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %13 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %17 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %8
  %21 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %22 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %25 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %28 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i8* @re_compile_pattern(i8* %23, i32 %26, %struct.TYPE_2__* %29)
  store i8* %30, i8** %3, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load i32, i32* @EXIT_TROUBLE, align 4
  %35 = load %struct.regexp_list*, %struct.regexp_list** %2, align 8
  %36 = getelementptr inbounds %struct.regexp_list, %struct.regexp_list* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @error(i32 %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %33, %20
  br label %41

41:                                               ; preds = %40, %8
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i8* @re_compile_pattern(i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
