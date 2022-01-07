; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_xfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_mem.c_snd_gf1_mem_xfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gf1_mem = type { %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block*, i32 }
%struct.snd_gf1_mem_block = type { %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_mem_xfree(%struct.snd_gf1_mem* %0, %struct.snd_gf1_mem_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_gf1_mem*, align 8
  %5 = alloca %struct.snd_gf1_mem_block*, align 8
  store %struct.snd_gf1_mem* %0, %struct.snd_gf1_mem** %4, align 8
  store %struct.snd_gf1_mem_block* %1, %struct.snd_gf1_mem_block** %5, align 8
  %6 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %7 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %12 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %16 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  store i32 0, i32* %3, align 4
  br label %111

18:                                               ; preds = %2
  %19 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %20 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %19, i32 0, i32 1
  %21 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %20, align 8
  %22 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %23 = icmp eq %struct.snd_gf1_mem_block* %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %26 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %25, i32 0, i32 1
  %27 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %26, align 8
  %28 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %29 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %28, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %27, %struct.snd_gf1_mem_block** %29, align 8
  %30 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %31 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %30, i32 0, i32 1
  %32 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %31, align 8
  %33 = icmp ne %struct.snd_gf1_mem_block* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %36 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %35, i32 0, i32 1
  %37 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %36, align 8
  %38 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %37, i32 0, i32 2
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %38, align 8
  br label %39

39:                                               ; preds = %34, %24
  br label %61

40:                                               ; preds = %18
  %41 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %42 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %41, i32 0, i32 1
  %43 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %42, align 8
  %44 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %45 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %44, i32 0, i32 2
  %46 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %45, align 8
  %47 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %46, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %43, %struct.snd_gf1_mem_block** %47, align 8
  %48 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %49 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %48, i32 0, i32 1
  %50 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %49, align 8
  %51 = icmp ne %struct.snd_gf1_mem_block* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %54 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %53, i32 0, i32 2
  %55 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %54, align 8
  %56 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %57 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %56, i32 0, i32 1
  %58 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %57, align 8
  %59 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %58, i32 0, i32 2
  store %struct.snd_gf1_mem_block* %55, %struct.snd_gf1_mem_block** %59, align 8
  br label %60

60:                                               ; preds = %52, %40
  br label %61

61:                                               ; preds = %60, %39
  %62 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %63 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %62, i32 0, i32 0
  %64 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %63, align 8
  %65 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %66 = icmp eq %struct.snd_gf1_mem_block* %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %69 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %68, i32 0, i32 2
  %70 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %69, align 8
  %71 = load %struct.snd_gf1_mem*, %struct.snd_gf1_mem** %4, align 8
  %72 = getelementptr inbounds %struct.snd_gf1_mem, %struct.snd_gf1_mem* %71, i32 0, i32 0
  store %struct.snd_gf1_mem_block* %70, %struct.snd_gf1_mem_block** %72, align 8
  %73 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %74 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %73, i32 0, i32 2
  %75 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %74, align 8
  %76 = icmp ne %struct.snd_gf1_mem_block* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %79 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %78, i32 0, i32 2
  %80 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %79, align 8
  %81 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %80, i32 0, i32 1
  store %struct.snd_gf1_mem_block* null, %struct.snd_gf1_mem_block** %81, align 8
  br label %82

82:                                               ; preds = %77, %67
  br label %104

83:                                               ; preds = %61
  %84 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %85 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %84, i32 0, i32 2
  %86 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %85, align 8
  %87 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %88 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %87, i32 0, i32 1
  %89 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %88, align 8
  %90 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %89, i32 0, i32 2
  store %struct.snd_gf1_mem_block* %86, %struct.snd_gf1_mem_block** %90, align 8
  %91 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %92 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %91, i32 0, i32 2
  %93 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %92, align 8
  %94 = icmp ne %struct.snd_gf1_mem_block* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %83
  %96 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %97 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %96, i32 0, i32 1
  %98 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %97, align 8
  %99 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %100 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %99, i32 0, i32 2
  %101 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %100, align 8
  %102 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %101, i32 0, i32 1
  store %struct.snd_gf1_mem_block* %98, %struct.snd_gf1_mem_block** %102, align 8
  br label %103

103:                                              ; preds = %95, %83
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %106 = getelementptr inbounds %struct.snd_gf1_mem_block, %struct.snd_gf1_mem_block* %105, i32 0, i32 0
  %107 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %106, align 8
  %108 = call i32 @kfree(%struct.snd_gf1_mem_block* %107)
  %109 = load %struct.snd_gf1_mem_block*, %struct.snd_gf1_mem_block** %5, align 8
  %110 = call i32 @kfree(%struct.snd_gf1_mem_block* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %10
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_gf1_mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
