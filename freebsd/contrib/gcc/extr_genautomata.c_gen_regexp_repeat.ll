; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_regexp_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_gen_regexp_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid `%s' in reservation `%s'\00", align 1
@reserv_str = common dso_local global i32 0, align 4
@rm_repeat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"repetition `%s' <= 1 in reservation `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @gen_regexp_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @gen_regexp_repeat(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i8** @get_str_vect(i8* %9, i32* %7, i8 signext 42, i32 %10)
  store i8** %11, i8*** %6, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @reserv_str, align 4
  %17 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call %struct.TYPE_7__* @gen_regexp_el(i8* %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %59, %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %26
  %31 = call %struct.TYPE_7__* @create_node(i32 4)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %5, align 8
  %32 = load i32, i32* @rm_repeat, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = call %struct.TYPE_8__* @REGEXP_REPEAT(%struct.TYPE_7__* %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %38, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @atoi(i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = call %struct.TYPE_8__* @REGEXP_REPEAT(%struct.TYPE_7__* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call %struct.TYPE_8__* @REGEXP_REPEAT(%struct.TYPE_7__* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sle i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %30
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @reserv_str, align 4
  %56 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %30
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %4, align 8
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %26

62:                                               ; preds = %26
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %2, align 8
  br label %67

64:                                               ; preds = %18
  %65 = load i8*, i8** %3, align 8
  %66 = call %struct.TYPE_7__* @gen_regexp_el(i8* %65)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %2, align 8
  br label %67

67:                                               ; preds = %64, %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %68
}

declare dso_local i8** @get_str_vect(i8*, i32*, i8 signext, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @gen_regexp_el(i8*) #1

declare dso_local %struct.TYPE_7__* @create_node(i32) #1

declare dso_local %struct.TYPE_8__* @REGEXP_REPEAT(%struct.TYPE_7__*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
