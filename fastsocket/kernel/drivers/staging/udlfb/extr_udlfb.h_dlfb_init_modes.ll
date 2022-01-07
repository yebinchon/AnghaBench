; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.h_dlfb_init_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.h_dlfb_init_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@dlfb_video_modes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c" <z\C9\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\F2lH\F9\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pS\FF\FF!'\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\91\F3\FF\FF\FF\F9\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\01\02\C8\19\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"6\18\D5\10\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"`\A9{3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\A1+'2\FF\FF\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"\D9\9A\FF\CA\FF\FF\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\04\03\C82\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\98\F8\0DW\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"*UMT\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\CA\0D\FF\FF\94C\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\9A\A8\FF\FF\FF\F9\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\04\02`T\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"B$86\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\C1R\D9)\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\EA\B82`\FF\FF\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\C9N\FF\FF\FF\F2\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\04\02\1E_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dlfb_init_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_init_modes() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i64 0
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 7
  store i64 0, i64* %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  %7 = call i32 @memcpy(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = call i32 @memcpy(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = call i32 @memcpy(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 800, i32* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = call i32 @memcpy(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 480, i32* %25, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @memcpy(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = call i32 @memcpy(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = call i32 @memcpy(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = call i32 @memcpy(i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1024, i32* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = call i32 @memcpy(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 768, i32* %54, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i32 @memcpy(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = call i32 @memcpy(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  %69 = call i32 @memcpy(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = call i32 @memcpy(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 6)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 1280, i32* %76, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = call i32 @memcpy(i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 1024, i32* %83, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = call i32 @memcpy(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 6
  %94 = call i32 @memcpy(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 4)
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  %98 = call i32 @memcpy(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = call i32 @memcpy(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 6)
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 3
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 1400, i32* %105, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = call i32 @memcpy(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 6)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i32 1050, i32* %112, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dlfb_video_modes, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = call i32 @memcpy(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
