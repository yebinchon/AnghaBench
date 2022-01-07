; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_forget_B_and_K_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_forget_B_and_K_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_stuff = type { i32, i32, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_stuff*)* @forget_B_and_K_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forget_B_and_K_types(%struct.work_stuff* %0) #0 {
  %2 = alloca %struct.work_stuff*, align 8
  %3 = alloca i32, align 4
  store %struct.work_stuff* %0, %struct.work_stuff** %2, align 8
  br label %4

4:                                                ; preds = %37, %1
  %5 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %6 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %11 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %15 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %14, i32 0, i32 3
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %9
  %23 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %24 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %23, i32 0, i32 3
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @free(i32* %29)
  %31 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %32 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %22, %9
  br label %4

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %72, %38
  %40 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %41 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %46 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  store i32 %48, i32* %3, align 4
  %49 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %50 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %44
  %58 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %59 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @free(i32* %64)
  %66 = load %struct.work_stuff*, %struct.work_stuff** %2, align 8
  %67 = getelementptr inbounds %struct.work_stuff, %struct.work_stuff* %66, i32 0, i32 2
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %57, %44
  br label %39

73:                                               ; preds = %39
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
