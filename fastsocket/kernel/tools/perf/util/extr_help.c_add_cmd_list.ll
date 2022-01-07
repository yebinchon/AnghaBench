; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_add_cmd_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_help.c_add_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*, %struct.cmdnames*)* @add_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cmd_list(%struct.cmdnames* %0, %struct.cmdnames* %1) #0 {
  %3 = alloca %struct.cmdnames*, align 8
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %3, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %4, align 8
  %6 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %7 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %10 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %13 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %11, %14
  %16 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %17 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ALLOC_GROW(i32* %8, i32 %15, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %43, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %23 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %28 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %35 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.cmdnames*, %struct.cmdnames** %3, align 8
  %38 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 %33, i32* %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %48 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  %51 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %52 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %54 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
