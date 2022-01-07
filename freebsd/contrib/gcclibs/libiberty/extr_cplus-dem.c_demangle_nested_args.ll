; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_nested_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_demangle_nested_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_stuff*, i8**, i32*)* @demangle_nested_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demangle_nested_args(%struct.work_stuff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.work_stuff*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %11 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %15 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %18 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %21 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %23 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @demangle_args(%struct.work_stuff* %24, i8** %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %29 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %34 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @string_delete(i32* %35)
  %37 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %38 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %32, %3
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %45 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %47 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.work_stuff*, %struct.work_stuff** %4, align 8
  %52 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @demangle_args(%struct.work_stuff*, i8**, i32*) #1

declare dso_local i32 @string_delete(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
