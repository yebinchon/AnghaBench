; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_appendarglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_appendarglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32, i32, i8** }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Too many entries in arglist\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendarglist(%struct.arglist* %0, i8* %1) #0 {
  %3 = alloca %struct.arglist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.arglist* %0, %struct.arglist** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.arglist*, %struct.arglist** %3, align 8
  %8 = getelementptr inbounds %struct.arglist, %struct.arglist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.arglist*, %struct.arglist** %3, align 8
  %11 = getelementptr inbounds %struct.arglist, %struct.arglist* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.arglist*, %struct.arglist** %3, align 8
  %16 = getelementptr inbounds %struct.arglist, %struct.arglist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 16, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @INT_MAX, align 4
  %25 = sdiv i32 %24, 8
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i8** @stalloc(i32 %33)
  store i8** %34, i8*** %5, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load %struct.arglist*, %struct.arglist** %3, align 8
  %37 = getelementptr inbounds %struct.arglist, %struct.arglist* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.arglist*, %struct.arglist** %3, align 8
  %40 = getelementptr inbounds %struct.arglist, %struct.arglist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i8** %35, i8** %38, i32 %44)
  %46 = load i8**, i8*** %5, align 8
  %47 = load %struct.arglist*, %struct.arglist** %3, align 8
  %48 = getelementptr inbounds %struct.arglist, %struct.arglist* %47, i32 0, i32 2
  store i8** %46, i8*** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.arglist*, %struct.arglist** %3, align 8
  %51 = getelementptr inbounds %struct.arglist, %struct.arglist* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %29, %2
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.arglist*, %struct.arglist** %3, align 8
  %55 = getelementptr inbounds %struct.arglist, %struct.arglist* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.arglist*, %struct.arglist** %3, align 8
  %58 = getelementptr inbounds %struct.arglist, %struct.arglist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %56, i64 %61
  store i8* %53, i8** %62, align 8
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8** @stalloc(i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
