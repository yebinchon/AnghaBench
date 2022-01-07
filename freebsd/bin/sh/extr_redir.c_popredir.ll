; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_popredir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_redir.c_popredir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redirtab = type { i64*, i64, %struct.redirtab*, i32 }

@redirlist = common dso_local global %struct.redirtab* null, align 8
@INTOFF = common dso_local global i32 0, align 4
@empty_redirs = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i64 0, align 8
@fd0_redirected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @popredir() #0 {
  %1 = alloca %struct.redirtab*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.redirtab*, %struct.redirtab** @redirlist, align 8
  store %struct.redirtab* %3, %struct.redirtab** %1, align 8
  %4 = load i32, i32* @INTOFF, align 4
  %5 = load i64, i64* @empty_redirs, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i64, i64* @empty_redirs, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @empty_redirs, align 8
  %10 = load i32, i32* @INTON, align 4
  br label %74

11:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %58, %11
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %17 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EMPTY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %15
  %26 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %27 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %36 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @dup2(i64 %41, i32 %42)
  %44 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %45 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @close(i32 %51)
  br label %56

53:                                               ; preds = %25
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @close(i32 %54)
  br label %56

56:                                               ; preds = %53, %34
  br label %57

57:                                               ; preds = %56, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %12

61:                                               ; preds = %12
  %62 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %63 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* @fd0_redirected, align 4
  %65 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %66 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* @empty_redirs, align 8
  %68 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %69 = getelementptr inbounds %struct.redirtab, %struct.redirtab* %68, i32 0, i32 2
  %70 = load %struct.redirtab*, %struct.redirtab** %69, align 8
  store %struct.redirtab* %70, %struct.redirtab** @redirlist, align 8
  %71 = load %struct.redirtab*, %struct.redirtab** %1, align 8
  %72 = call i32 @ckfree(%struct.redirtab* %71)
  %73 = load i32, i32* @INTON, align 4
  br label %74

74:                                               ; preds = %61, %7
  ret void
}

declare dso_local i32 @dup2(i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ckfree(%struct.redirtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
