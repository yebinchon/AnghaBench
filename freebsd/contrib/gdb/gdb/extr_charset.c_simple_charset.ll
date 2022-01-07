; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_simple_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_simple_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charset = type { i8*, i32, i32 (i8*, i32)*, i32 (i8*, i32, i32*)*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.charset* (i8*, i32, i32 (i8*, i32)*, i8*, i32 (i8*, i32, i32*)*, i8*)* @simple_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.charset* @simple_charset(i8* %0, i32 %1, i32 (i8*, i32)* %2, i8* %3, i32 (i8*, i32, i32*)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, i32)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.charset*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, i32)* %2, i32 (i8*, i32)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i32*)* %4, i32 (i8*, i32, i32*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = call %struct.charset* @xmalloc(i32 48)
  store %struct.charset* %14, %struct.charset** %13, align 8
  %15 = load %struct.charset*, %struct.charset** %13, align 8
  %16 = call i32 @memset(%struct.charset* %15, i32 0, i32 48)
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.charset*, %struct.charset** %13, align 8
  %19 = getelementptr inbounds %struct.charset, %struct.charset* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.charset*, %struct.charset** %13, align 8
  %22 = getelementptr inbounds %struct.charset, %struct.charset* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32 (i8*, i32)*, i32 (i8*, i32)** %9, align 8
  %24 = load %struct.charset*, %struct.charset** %13, align 8
  %25 = getelementptr inbounds %struct.charset, %struct.charset* %24, i32 0, i32 2
  store i32 (i8*, i32)* %23, i32 (i8*, i32)** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.charset*, %struct.charset** %13, align 8
  %28 = getelementptr inbounds %struct.charset, %struct.charset* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %11, align 8
  %30 = load %struct.charset*, %struct.charset** %13, align 8
  %31 = getelementptr inbounds %struct.charset, %struct.charset* %30, i32 0, i32 3
  store i32 (i8*, i32, i32*)* %29, i32 (i8*, i32, i32*)** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.charset*, %struct.charset** %13, align 8
  %34 = getelementptr inbounds %struct.charset, %struct.charset* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.charset*, %struct.charset** %13, align 8
  ret %struct.charset* %35
}

declare dso_local %struct.charset* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.charset*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
