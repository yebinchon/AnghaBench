; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_set_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_set_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32*, i32*, i32*, %struct.debug_unit*, %struct.debug_unit*, %struct.debug_unit* }
%struct.debug_unit = type { i8*, %struct.debug_unit*, %struct.debug_unit* }
%struct.debug_file = type { i8*, %struct.debug_file*, %struct.debug_file* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_set_filename(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_handle*, align 8
  %6 = alloca %struct.debug_file*, align 8
  %7 = alloca %struct.debug_unit*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.debug_handle*
  store %struct.debug_handle* %9, %struct.debug_handle** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i64 @xmalloc(i32 24)
  %15 = inttoptr i64 %14 to %struct.debug_file*
  store %struct.debug_file* %15, %struct.debug_file** %6, align 8
  %16 = load %struct.debug_file*, %struct.debug_file** %6, align 8
  %17 = bitcast %struct.debug_file* %16 to %struct.debug_unit*
  %18 = call i32 @memset(%struct.debug_unit* %17, i32 0, i32 24)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.debug_file*, %struct.debug_file** %6, align 8
  %21 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = call i64 @xmalloc(i32 24)
  %23 = inttoptr i64 %22 to %struct.debug_unit*
  store %struct.debug_unit* %23, %struct.debug_unit** %7, align 8
  %24 = load %struct.debug_unit*, %struct.debug_unit** %7, align 8
  %25 = call i32 @memset(%struct.debug_unit* %24, i32 0, i32 24)
  %26 = load %struct.debug_file*, %struct.debug_file** %6, align 8
  %27 = bitcast %struct.debug_file* %26 to %struct.debug_unit*
  %28 = load %struct.debug_unit*, %struct.debug_unit** %7, align 8
  %29 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %28, i32 0, i32 2
  store %struct.debug_unit* %27, %struct.debug_unit** %29, align 8
  %30 = load %struct.debug_file*, %struct.debug_file** %6, align 8
  %31 = bitcast %struct.debug_file* %30 to %struct.debug_unit*
  %32 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %33 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %32, i32 0, i32 5
  store %struct.debug_unit* %31, %struct.debug_unit** %33, align 8
  %34 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %35 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %34, i32 0, i32 3
  %36 = load %struct.debug_unit*, %struct.debug_unit** %35, align 8
  %37 = icmp ne %struct.debug_unit* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %13
  %39 = load %struct.debug_unit*, %struct.debug_unit** %7, align 8
  %40 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %41 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %40, i32 0, i32 3
  %42 = load %struct.debug_unit*, %struct.debug_unit** %41, align 8
  %43 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %42, i32 0, i32 1
  store %struct.debug_unit* %39, %struct.debug_unit** %43, align 8
  br label %54

44:                                               ; preds = %13
  %45 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %46 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %45, i32 0, i32 4
  %47 = load %struct.debug_unit*, %struct.debug_unit** %46, align 8
  %48 = icmp eq %struct.debug_unit* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.debug_unit*, %struct.debug_unit** %7, align 8
  %52 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %53 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %52, i32 0, i32 4
  store %struct.debug_unit* %51, %struct.debug_unit** %53, align 8
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.debug_unit*, %struct.debug_unit** %7, align 8
  %56 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %57 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %56, i32 0, i32 3
  store %struct.debug_unit* %55, %struct.debug_unit** %57, align 8
  %58 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %59 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %61 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.debug_handle*, %struct.debug_handle** %5, align 8
  %63 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* @TRUE, align 4
  ret i32 %64
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_unit*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
