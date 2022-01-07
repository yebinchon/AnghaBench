; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/lib/extr_carlfw.c___carlfw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlfw_file = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carlfw_file*)* @__carlfw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__carlfw_release(%struct.carlfw_file* %0) #0 {
  %2 = alloca %struct.carlfw_file*, align 8
  store %struct.carlfw_file* %0, %struct.carlfw_file** %2, align 8
  %3 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %4 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %6 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %11 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @free(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %16 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %18 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %23 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.carlfw_file*, %struct.carlfw_file** %2, align 8
  %28 = getelementptr inbounds %struct.carlfw_file, %struct.carlfw_file* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
