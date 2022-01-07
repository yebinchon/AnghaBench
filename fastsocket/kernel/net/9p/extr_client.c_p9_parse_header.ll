; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_parse_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fcall = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dbw\00", align 1
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"<<< size=%d type: %d tag: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_parse_header(%struct.p9_fcall* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.p9_fcall*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.p9_fcall* %0, %struct.p9_fcall** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %17 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %20 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %22 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %27 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %26, i32 0, i32 1
  store i32 7, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %30 = call i32 @p9pdu_readf(%struct.p9_fcall* %29, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %11, i32* %12)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %73

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %37 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %40 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %43 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @P9_DEBUG_9P, align 4
  %45 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %46 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %49 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %52 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @P9_DPRINTK(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %34
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.p9_fcall*, %struct.p9_fcall** %6, align 8
  %79 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %15, align 4
  ret i32 %81
}

declare dso_local i32 @p9pdu_readf(%struct.p9_fcall*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
