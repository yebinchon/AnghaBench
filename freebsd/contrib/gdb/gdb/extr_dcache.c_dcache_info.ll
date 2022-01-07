; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dcache.c_dcache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dcache_block* }
%struct.dcache_block = type { i32*, i32*, i32, i32, %struct.dcache_block* }

@.str = private unnamed_addr constant [32 x i8] c"Dcache line width %d, depth %d\0A\00", align 1
@LINE_SIZE = common dso_local global i32 0, align 4
@DCACHE_SIZE = common dso_local global i32 0, align 4
@last_cache = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Cache state:\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Line at %s, referenced %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dcache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcache_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcache_block*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LINE_SIZE, align 4
  %8 = load i32, i32* @DCACHE_SIZE, align 4
  %9 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @last_cache, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @last_cache, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dcache_block*, %struct.dcache_block** %15, align 8
  store %struct.dcache_block* %16, %struct.dcache_block** %5, align 8
  br label %17

17:                                               ; preds = %66, %12
  %18 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %19 = icmp ne %struct.dcache_block* %18, null
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  %21 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %22 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @paddr(i32 %23)
  %25 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %26 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @LINE_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %35 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %29

46:                                               ; preds = %29
  %47 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %61, %46
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LINE_SIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %54 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %48

64:                                               ; preds = %48
  %65 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64
  %67 = load %struct.dcache_block*, %struct.dcache_block** %5, align 8
  %68 = getelementptr inbounds %struct.dcache_block, %struct.dcache_block* %67, i32 0, i32 4
  %69 = load %struct.dcache_block*, %struct.dcache_block** %68, align 8
  store %struct.dcache_block* %69, %struct.dcache_block** %5, align 8
  br label %17

70:                                               ; preds = %17
  br label %71

71:                                               ; preds = %70, %2
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @paddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
