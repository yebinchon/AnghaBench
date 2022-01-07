; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_start_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.debug_block*, i32* }
%struct.debug_block = type { %struct.debug_block*, %struct.debug_block*, i8*, i8*, %struct.debug_block* }

@.str = private unnamed_addr constant [36 x i8] c"debug_start_block: no current block\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_start_block(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_block*, align 8
  %8 = alloca %struct.debug_block**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.debug_handle*
  store %struct.debug_handle* %10, %struct.debug_handle** %6, align 8
  %11 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %12 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %17 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %16, i32 0, i32 0
  %18 = load %struct.debug_block*, %struct.debug_block** %17, align 8
  %19 = icmp eq %struct.debug_block* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %2
  %21 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @debug_error(i32 %21)
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %15
  %25 = call i64 @xmalloc(i32 40)
  %26 = inttoptr i64 %25 to %struct.debug_block*
  store %struct.debug_block* %26, %struct.debug_block** %7, align 8
  %27 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %28 = call i32 @memset(%struct.debug_block* %27, i32 0, i32 40)
  %29 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %30 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %29, i32 0, i32 0
  %31 = load %struct.debug_block*, %struct.debug_block** %30, align 8
  %32 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %33 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %32, i32 0, i32 4
  store %struct.debug_block* %31, %struct.debug_block** %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %36 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %38 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %37, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %38, align 8
  %39 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %40 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %39, i32 0, i32 0
  %41 = load %struct.debug_block*, %struct.debug_block** %40, align 8
  %42 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %41, i32 0, i32 1
  store %struct.debug_block** %42, %struct.debug_block*** %8, align 8
  br label %43

43:                                               ; preds = %48, %24
  %44 = load %struct.debug_block**, %struct.debug_block*** %8, align 8
  %45 = load %struct.debug_block*, %struct.debug_block** %44, align 8
  %46 = icmp ne %struct.debug_block* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.debug_block**, %struct.debug_block*** %8, align 8
  %50 = load %struct.debug_block*, %struct.debug_block** %49, align 8
  %51 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %50, i32 0, i32 0
  store %struct.debug_block** %51, %struct.debug_block*** %8, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %54 = load %struct.debug_block**, %struct.debug_block*** %8, align 8
  store %struct.debug_block* %53, %struct.debug_block** %54, align 8
  %55 = load %struct.debug_block*, %struct.debug_block** %7, align 8
  %56 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %57 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %56, i32 0, i32 0
  store %struct.debug_block* %55, %struct.debug_block** %57, align 8
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
