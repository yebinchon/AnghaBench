; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_popenve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_popenve.c_popenve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32* }

@errno = common dso_local global i32 0, align 4
@pidlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @popenve(i8* %0, i8** %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pid*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %15 = call %struct.pid* @pdes_get(i32* %14, i8** %9)
  store %struct.pid* %15, %struct.pid** %10, align 8
  %16 = icmp eq %struct.pid* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %44

18:                                               ; preds = %4
  %19 = call i32 @vfork() #4
  store i32 %19, i32* %13, align 4
  switch i32 %19, label %35 [
    i32 -1, label %20
    i32 0, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %23 = load %struct.pid*, %struct.pid** %10, align 8
  %24 = call i32 @pdes_error(i32* %22, %struct.pid* %23)
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* @errno, align 4
  store i32* null, i32** %5, align 8
  br label %44

26:                                               ; preds = %18
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @pdes_child(i32* %27, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = call i32 @execve(i8* %30, i8** %31, i8** %32)
  %34 = call i32 @_exit(i32 127) #5
  unreachable

35:                                               ; preds = %18
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %37 = load %struct.pid*, %struct.pid** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @pdes_parent(i32* %36, %struct.pid* %37, i32 %38, i8* %39)
  %41 = load %struct.pid*, %struct.pid** %10, align 8
  %42 = getelementptr inbounds %struct.pid, %struct.pid* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %35, %20, %17
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local %struct.pid* @pdes_get(i32*, i8**) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @pdes_error(i32*, %struct.pid*) #1

declare dso_local i32 @pdes_child(i32*, i8*) #1

declare dso_local i32 @execve(i8*, i8**, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @pdes_parent(i32*, %struct.pid*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
