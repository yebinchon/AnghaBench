; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_buffer_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_buffer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { %struct.buffer*, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to kmalloc head of TX/RX struct\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to kmalloc TX/RX struct\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @buffer_add(%struct.buffer** %0, i32* %1, i8* %2, %struct.buffer** %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.buffer**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.buffer**, align 8
  %10 = alloca %struct.buffer*, align 8
  store %struct.buffer** %0, %struct.buffer*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.buffer** %3, %struct.buffer*** %9, align 8
  %11 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %12 = load %struct.buffer*, %struct.buffer** %11, align 8
  %13 = icmp ne %struct.buffer* %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 24, i32 %15)
  %17 = bitcast i8* %16 to %struct.buffer*
  %18 = load %struct.buffer**, %struct.buffer*** %6, align 8
  store %struct.buffer* %17, %struct.buffer** %18, align 8
  %19 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %20 = load %struct.buffer*, %struct.buffer** %19, align 8
  %21 = icmp eq %struct.buffer* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @DMESGE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %5, align 2
  br label %85

24:                                               ; preds = %14
  %25 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %26 = load %struct.buffer*, %struct.buffer** %25, align 8
  %27 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %28 = load %struct.buffer*, %struct.buffer** %27, align 8
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 0
  store %struct.buffer* %26, %struct.buffer** %29, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %32 = load %struct.buffer*, %struct.buffer** %31, align 8
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i32 0, i32 2
  store i32* %30, i32** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %36 = load %struct.buffer*, %struct.buffer** %35, align 8
  %37 = getelementptr inbounds %struct.buffer, %struct.buffer* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.buffer**, %struct.buffer*** %9, align 8
  %39 = icmp ne %struct.buffer** %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %42 = load %struct.buffer*, %struct.buffer** %41, align 8
  %43 = load %struct.buffer**, %struct.buffer*** %9, align 8
  store %struct.buffer* %42, %struct.buffer** %43, align 8
  br label %44

44:                                               ; preds = %40, %24
  store i16 0, i16* %5, align 2
  br label %85

45:                                               ; preds = %4
  %46 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %47 = load %struct.buffer*, %struct.buffer** %46, align 8
  store %struct.buffer* %47, %struct.buffer** %10, align 8
  br label %48

48:                                               ; preds = %55, %45
  %49 = load %struct.buffer*, %struct.buffer** %10, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 0
  %51 = load %struct.buffer*, %struct.buffer** %50, align 8
  %52 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %53 = load %struct.buffer*, %struct.buffer** %52, align 8
  %54 = icmp ne %struct.buffer* %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.buffer*, %struct.buffer** %10, align 8
  %57 = getelementptr inbounds %struct.buffer, %struct.buffer* %56, i32 0, i32 0
  %58 = load %struct.buffer*, %struct.buffer** %57, align 8
  store %struct.buffer* %58, %struct.buffer** %10, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i32 24, i32 %60)
  %62 = bitcast i8* %61 to %struct.buffer*
  %63 = load %struct.buffer*, %struct.buffer** %10, align 8
  %64 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 0
  store %struct.buffer* %62, %struct.buffer** %64, align 8
  %65 = icmp eq %struct.buffer* %62, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @DMESGE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i16 -1, i16* %5, align 2
  br label %85

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.buffer*, %struct.buffer** %10, align 8
  %71 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i32 0, i32 0
  %72 = load %struct.buffer*, %struct.buffer** %71, align 8
  %73 = getelementptr inbounds %struct.buffer, %struct.buffer* %72, i32 0, i32 2
  store i32* %69, i32** %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.buffer*, %struct.buffer** %10, align 8
  %76 = getelementptr inbounds %struct.buffer, %struct.buffer* %75, i32 0, i32 0
  %77 = load %struct.buffer*, %struct.buffer** %76, align 8
  %78 = getelementptr inbounds %struct.buffer, %struct.buffer* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  %79 = load %struct.buffer**, %struct.buffer*** %6, align 8
  %80 = load %struct.buffer*, %struct.buffer** %79, align 8
  %81 = load %struct.buffer*, %struct.buffer** %10, align 8
  %82 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 0
  %83 = load %struct.buffer*, %struct.buffer** %82, align 8
  %84 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 0
  store %struct.buffer* %80, %struct.buffer** %84, align 8
  store i16 0, i16* %5, align 2
  br label %85

85:                                               ; preds = %68, %66, %44, %22
  %86 = load i16, i16* %5, align 2
  ret i16 %86
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @DMESGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
