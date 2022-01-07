; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_push_undo_stack.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_undo.c_push_undo_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8* }

@ustack = common dso_local global %struct.TYPE_6__* null, align 8
@u_p = common dso_local global i32 0, align 4
@usize = common dso_local global i32 0, align 4
@USIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @push_undo_stack(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %8, align 8
  %10 = load i32, i32* @u_p, align 4
  %11 = load i32, i32* @usize, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %15 = load i32, i32* @USIZE, align 4
  %16 = load i32, i32* @usize, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @usize, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 24
  %20 = trunc i64 %19 to i32
  %21 = call i64 @realloc(%struct.TYPE_6__* %14, i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %13, %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** @ustack, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %28 = load i32, i32* @u_p, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i8* @get_addressed_line_node(i64 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %35 = load i32, i32* @u_p, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i8* %33, i8** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i8* @get_addressed_line_node(i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %42 = load i32, i32* @u_p, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* %40, i8** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %47 = load i32, i32* @u_p, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @u_p, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %49
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %4, align 8
  br label %59

51:                                               ; preds = %13
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %54)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  %56 = call i32 (...) @clear_undo_stack()
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ustack, align 8
  %58 = call i32 @free(%struct.TYPE_6__* %57)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @ustack, align 8
  store i32 0, i32* @usize, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %59

59:                                               ; preds = %51, %24
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %60
}

declare dso_local i64 @realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @get_addressed_line_node(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @clear_undo_stack(...) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
