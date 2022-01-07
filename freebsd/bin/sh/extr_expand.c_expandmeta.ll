; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expandmeta.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_expandmeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32, i32* }

@INTOFF = common dso_local global i32 0, align 4
@expdir = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@expsortcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.arglist*)* @expandmeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expandmeta(i8* %0, %struct.arglist* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arglist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.arglist* %1, %struct.arglist** %4, align 8
  %8 = load %struct.arglist*, %struct.arglist** %4, align 8
  %9 = getelementptr inbounds %struct.arglist, %struct.arglist* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 63
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 91
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21, %17
  %30 = load i32, i32* @INTOFF, align 4
  %31 = load i32, i32* @expdir, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.arglist*, %struct.arglist** %4, align 8
  %34 = call i32 @expmeta(i32 %31, i8* %32, %struct.arglist* %33)
  %35 = load i32, i32* @INTON, align 4
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  br label %12

40:                                               ; preds = %29, %12
  %41 = load %struct.arglist*, %struct.arglist** %4, align 8
  %42 = getelementptr inbounds %struct.arglist, %struct.arglist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @rmescapes(i8* %47)
  %49 = load %struct.arglist*, %struct.arglist** %4, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @appendarglist(%struct.arglist* %49, i8* %50)
  br label %66

52:                                               ; preds = %40
  %53 = load %struct.arglist*, %struct.arglist** %4, align 8
  %54 = getelementptr inbounds %struct.arglist, %struct.arglist* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.arglist*, %struct.arglist** %4, align 8
  %60 = getelementptr inbounds %struct.arglist, %struct.arglist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* @expsortcmp, align 4
  %65 = call i32 @qsort(i32* %58, i32 %63, i32 4, i32 %64)
  br label %66

66:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @expmeta(i32, i8*, %struct.arglist*) #1

declare dso_local i32 @rmescapes(i8*) #1

declare dso_local i32 @appendarglist(%struct.arglist*, i8*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
