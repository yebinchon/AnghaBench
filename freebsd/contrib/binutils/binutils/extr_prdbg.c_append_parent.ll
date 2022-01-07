; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_append_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_append_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pr_handle*, i8*)* @append_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_parent(%struct.pr_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pr_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.pr_handle* %0, %struct.pr_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %13 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %19 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %26 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  br label %32

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %30, %24 ], [ 0, %31 ]
  store i32 %33, i32* %6, align 4
  %34 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %35 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add i32 %39, %41
  %43 = add i32 %42, 1
  %44 = call i64 @xrealloc(i8* %38, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %47 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %51 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %32, %9
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
