; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_opt_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_opt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [20 x i8] c"Invalid option name\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to allocate space for option list\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid options format\00", align 1
@ophead = common dso_local global %struct.TYPE_4__* null, align 8
@optail = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opt_add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %88

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %88

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %7, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %80, %78, %24
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %85

36:                                               ; preds = %34
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 44)
  store i8* %38, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 61)
  store i8* %44, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  store i32 -1, i32* %2, align 4
  br label %88

50:                                               ; preds = %42
  %51 = call i64 @malloc(i32 24)
  %52 = inttoptr i64 %51 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %4, align 8
  %53 = icmp eq %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  store i32 -1, i32* %2, align 4
  br label %88

58:                                               ; preds = %50
  store i8* null, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 0, i8* %59, align 1
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %5, align 8
  br label %75

74:                                               ; preds = %58
  store i8* null, i8** %5, align 8
  br label %75

75:                                               ; preds = %74, %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ophead, align 8
  %77 = icmp eq %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** @ophead, align 8
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** @optail, align 8
  br label %26

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @optail, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** @optail, align 8
  br label %26

85:                                               ; preds = %34
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @free(i8* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %54, %46, %22, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
