; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_push_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_push_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { %struct.pr_stack* }
%struct.pr_stack = type { %struct.pr_stack*, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@DEBUG_VISIBILITY_IGNORE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pr_handle*, i8*)* @push_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_type(%struct.pr_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pr_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pr_stack*, align 8
  store %struct.pr_handle* %0, %struct.pr_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = call i64 @xmalloc(i32 24)
  %13 = inttoptr i64 %12 to %struct.pr_stack*
  store %struct.pr_stack* %13, %struct.pr_stack** %6, align 8
  %14 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %15 = call i32 @memset(%struct.pr_stack* %14, i32 0, i32 24)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @xstrdup(i8* %16)
  %18 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %19 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @DEBUG_VISIBILITY_IGNORE, align 4
  %21 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %22 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %24 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %26 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %25, i32 0, i32 0
  %27 = load %struct.pr_stack*, %struct.pr_stack** %26, align 8
  %28 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %29 = getelementptr inbounds %struct.pr_stack, %struct.pr_stack* %28, i32 0, i32 0
  store %struct.pr_stack* %27, %struct.pr_stack** %29, align 8
  %30 = load %struct.pr_stack*, %struct.pr_stack** %6, align 8
  %31 = load %struct.pr_handle*, %struct.pr_handle** %4, align 8
  %32 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %31, i32 0, i32 0
  store %struct.pr_stack* %30, %struct.pr_stack** %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %11, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.pr_stack*, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
