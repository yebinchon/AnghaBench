; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_get_term_dimensions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_get_term_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@TIOCGWINSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_term_dimensions(%struct.winsize* %0) #0 {
  %2 = alloca %struct.winsize*, align 8
  %3 = alloca i8*, align 8
  store %struct.winsize* %0, %struct.winsize** %2, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @atoi(i8* %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.winsize*, %struct.winsize** %2, align 8
  %12 = getelementptr inbounds %struct.winsize, %struct.winsize* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %7
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @atoi(i8* %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.winsize*, %struct.winsize** %2, align 8
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.winsize*, %struct.winsize** %2, align 8
  %23 = getelementptr inbounds %struct.winsize, %struct.winsize* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.winsize*, %struct.winsize** %2, align 8
  %28 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %26, %16
  br label %33

33:                                               ; preds = %32, %7
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.winsize*, %struct.winsize** %2, align 8
  %36 = getelementptr inbounds %struct.winsize, %struct.winsize* %35, i32 0, i32 0
  store i32 25, i32* %36, align 4
  %37 = load %struct.winsize*, %struct.winsize** %2, align 8
  %38 = getelementptr inbounds %struct.winsize, %struct.winsize* %37, i32 0, i32 1
  store i32 80, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %31
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
