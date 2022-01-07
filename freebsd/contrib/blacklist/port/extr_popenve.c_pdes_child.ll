; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pdes_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_pdes_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, i32, %struct.pid* }

@pidlist = common dso_local global %struct.pid* null, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pdes_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdes_child(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pid*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.pid*, %struct.pid** @pidlist, align 8
  store %struct.pid* %6, %struct.pid** %5, align 8
  br label %7

7:                                                ; preds = %16, %2
  %8 = load %struct.pid*, %struct.pid** %5, align 8
  %9 = icmp ne %struct.pid* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.pid*, %struct.pid** %5, align 8
  %12 = getelementptr inbounds %struct.pid, %struct.pid* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fileno(i32 %13)
  %15 = call i32 @close(i32 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.pid*, %struct.pid** %5, align 8
  %18 = getelementptr inbounds %struct.pid, %struct.pid* %17, i32 0, i32 2
  %19 = load %struct.pid*, %struct.pid** %18, align 8
  store %struct.pid* %19, %struct.pid** %5, align 8
  br label %7

20:                                               ; preds = %7
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 114
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STDOUT_FILENO, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STDOUT_FILENO, align 4
  %41 = call i32 @dup2(i32 %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  br label %46

46:                                               ; preds = %36, %26
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @STDOUT_FILENO, align 4
  %54 = load i32, i32* @STDIN_FILENO, align 4
  %55 = call i32 @dup2(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  br label %78

57:                                               ; preds = %20
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @STDIN_FILENO, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STDIN_FILENO, align 4
  %72 = call i32 @dup2(i32 %70, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  br label %77

77:                                               ; preds = %67, %57
  br label %78

78:                                               ; preds = %77, %56
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
