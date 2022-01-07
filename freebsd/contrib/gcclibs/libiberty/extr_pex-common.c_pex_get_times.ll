; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_get_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_get_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32, i32*, i32* }
%struct.pex_time = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pex_get_times(%struct.pex_obj* %0, i32 %1, %struct.pex_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pex_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pex_time*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pex_time* %2, %struct.pex_time** %7, align 8
  %10 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %11 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %16 = call i32 @pex_get_status_and_time(%struct.pex_obj* %15, i32 0, i8** %8, i32* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %61

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %3
  %21 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %22 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %61

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %29 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.pex_time*, %struct.pex_time** %7, align 8
  %34 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %35 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pex_time, %struct.pex_time* %33, i64 %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %41 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(%struct.pex_time* %38, i32 0, i32 %46)
  %48 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %49 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %32, %26
  %52 = load %struct.pex_time*, %struct.pex_time** %7, align 8
  %53 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %54 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memcpy(%struct.pex_time* %52, i32* %55, i32 %59)
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %51, %25, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @pex_get_status_and_time(%struct.pex_obj*, i32, i8**, i32*) #1

declare dso_local i32 @memset(%struct.pex_time*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.pex_time*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
