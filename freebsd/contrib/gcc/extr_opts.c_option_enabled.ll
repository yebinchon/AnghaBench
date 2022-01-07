; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_option_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_option_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cl_option = type { i32, i32, i64 }

@cl_options = common dso_local global %struct.cl_option* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @option_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cl_option*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.cl_option*, %struct.cl_option** @cl_options, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %5, i64 %7
  store %struct.cl_option* %8, %struct.cl_option** %4, align 8
  %9 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %10 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %1
  %14 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %15 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %61 [
    i32 130, label %17
    i32 129, label %25
    i32 132, label %36
    i32 131, label %48
    i32 128, label %60
  ]

17:                                               ; preds = %13
  %18 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %19 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %13
  %26 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %27 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %32 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %13
  %37 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %38 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %43 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %13
  %49 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %50 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cl_option*, %struct.cl_option** %4, align 8
  %55 = getelementptr inbounds %struct.cl_option, %struct.cl_option* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %13
  br label %61

61:                                               ; preds = %13, %60
  br label %62

62:                                               ; preds = %61, %1
  store i32 -1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %48, %36, %25, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
