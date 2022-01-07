; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_merge_tlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_merge_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlist = type { i64, %struct.tlist*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlist**, %struct.tlist*, i32)* @merge_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_tlist(%struct.tlist** %0, %struct.tlist* %1, i32 %2) #0 {
  %4 = alloca %struct.tlist**, align 8
  %5 = alloca %struct.tlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlist**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlist*, align 8
  %10 = alloca %struct.tlist*, align 8
  store %struct.tlist** %0, %struct.tlist*** %4, align 8
  store %struct.tlist* %1, %struct.tlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tlist**, %struct.tlist*** %4, align 8
  store %struct.tlist** %11, %struct.tlist*** %7, align 8
  br label %12

12:                                               ; preds = %16, %3
  %13 = load %struct.tlist**, %struct.tlist*** %7, align 8
  %14 = load %struct.tlist*, %struct.tlist** %13, align 8
  %15 = icmp ne %struct.tlist* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.tlist**, %struct.tlist*** %7, align 8
  %18 = load %struct.tlist*, %struct.tlist** %17, align 8
  %19 = getelementptr inbounds %struct.tlist, %struct.tlist* %18, i32 0, i32 1
  store %struct.tlist** %19, %struct.tlist*** %7, align 8
  br label %12

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %81, %20
  %22 = load %struct.tlist*, %struct.tlist** %5, align 8
  %23 = icmp ne %struct.tlist* %22, null
  br i1 %23, label %24, label %83

24:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %25 = load %struct.tlist*, %struct.tlist** %5, align 8
  %26 = getelementptr inbounds %struct.tlist, %struct.tlist* %25, i32 0, i32 1
  %27 = load %struct.tlist*, %struct.tlist** %26, align 8
  store %struct.tlist* %27, %struct.tlist** %10, align 8
  %28 = load %struct.tlist**, %struct.tlist*** %4, align 8
  %29 = load %struct.tlist*, %struct.tlist** %28, align 8
  store %struct.tlist* %29, %struct.tlist** %9, align 8
  br label %30

30:                                               ; preds = %54, %24
  %31 = load %struct.tlist*, %struct.tlist** %9, align 8
  %32 = icmp ne %struct.tlist* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.tlist*, %struct.tlist** %9, align 8
  %35 = getelementptr inbounds %struct.tlist, %struct.tlist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tlist*, %struct.tlist** %5, align 8
  %38 = getelementptr inbounds %struct.tlist, %struct.tlist* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  %42 = load %struct.tlist*, %struct.tlist** %9, align 8
  %43 = getelementptr inbounds %struct.tlist, %struct.tlist* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.tlist*, %struct.tlist** %5, align 8
  %48 = getelementptr inbounds %struct.tlist, %struct.tlist* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tlist*, %struct.tlist** %9, align 8
  %51 = getelementptr inbounds %struct.tlist, %struct.tlist* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.tlist*, %struct.tlist** %9, align 8
  %56 = getelementptr inbounds %struct.tlist, %struct.tlist* %55, i32 0, i32 1
  %57 = load %struct.tlist*, %struct.tlist** %56, align 8
  store %struct.tlist* %57, %struct.tlist** %9, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load %struct.tlist*, %struct.tlist** %5, align 8
  br label %74

66:                                               ; preds = %61
  %67 = load %struct.tlist*, %struct.tlist** %5, align 8
  %68 = getelementptr inbounds %struct.tlist, %struct.tlist* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.tlist*, %struct.tlist** %5, align 8
  %71 = getelementptr inbounds %struct.tlist, %struct.tlist* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.tlist* @new_tlist(i32* null, i64 %69, i64 %72)
  br label %74

74:                                               ; preds = %66, %64
  %75 = phi %struct.tlist* [ %65, %64 ], [ %73, %66 ]
  %76 = load %struct.tlist**, %struct.tlist*** %7, align 8
  store %struct.tlist* %75, %struct.tlist** %76, align 8
  %77 = load %struct.tlist**, %struct.tlist*** %7, align 8
  %78 = load %struct.tlist*, %struct.tlist** %77, align 8
  %79 = getelementptr inbounds %struct.tlist, %struct.tlist* %78, i32 0, i32 1
  store %struct.tlist** %79, %struct.tlist*** %7, align 8
  %80 = load %struct.tlist**, %struct.tlist*** %7, align 8
  store %struct.tlist* null, %struct.tlist** %80, align 8
  br label %81

81:                                               ; preds = %74, %58
  %82 = load %struct.tlist*, %struct.tlist** %10, align 8
  store %struct.tlist* %82, %struct.tlist** %5, align 8
  br label %21

83:                                               ; preds = %21
  ret void
}

declare dso_local %struct.tlist* @new_tlist(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
