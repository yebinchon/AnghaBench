; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_format_ifdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_format_ifdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i8*, i32* }

@files = common dso_local global i32* null, align 8
@outfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @format_ifdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_ifdef(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x %struct.group], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32*, i32** @files, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 0
  %15 = getelementptr inbounds %struct.group, %struct.group* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 16
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.group, %struct.group* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 0
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 16
  %22 = load i32*, i32** @files, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 1
  %25 = getelementptr inbounds %struct.group, %struct.group* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 1
  %28 = getelementptr inbounds %struct.group, %struct.group* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 1
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @outfile, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds [2 x %struct.group], [2 x %struct.group]* %11, i64 0, i64 0
  %35 = call i32 @format_group(i32 %32, i8* %33, i32 0, %struct.group* %34)
  ret void
}

declare dso_local i32 @format_group(i32, i8*, i32, %struct.group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
