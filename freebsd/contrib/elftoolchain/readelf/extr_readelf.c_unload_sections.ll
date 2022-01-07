; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_unload_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_unload_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i32*, i64, i32*, i32*, i32*, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @unload_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_sections(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %3 = load %struct.readelf*, %struct.readelf** %2, align 8
  %4 = getelementptr inbounds %struct.readelf, %struct.readelf* %3, i32 0, i32 8
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.readelf*, %struct.readelf** %2, align 8
  %9 = getelementptr inbounds %struct.readelf, %struct.readelf* %8, i32 0, i32 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @free(i32* %10)
  %12 = load %struct.readelf*, %struct.readelf** %2, align 8
  %13 = getelementptr inbounds %struct.readelf, %struct.readelf* %12, i32 0, i32 8
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.readelf*, %struct.readelf** %2, align 8
  %16 = getelementptr inbounds %struct.readelf, %struct.readelf* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.readelf*, %struct.readelf** %2, align 8
  %18 = getelementptr inbounds %struct.readelf, %struct.readelf* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.readelf*, %struct.readelf** %2, align 8
  %20 = getelementptr inbounds %struct.readelf, %struct.readelf* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.readelf*, %struct.readelf** %2, align 8
  %22 = getelementptr inbounds %struct.readelf, %struct.readelf* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.readelf*, %struct.readelf** %2, align 8
  %24 = getelementptr inbounds %struct.readelf, %struct.readelf* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.readelf*, %struct.readelf** %2, align 8
  %26 = getelementptr inbounds %struct.readelf, %struct.readelf* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.readelf*, %struct.readelf** %2, align 8
  %28 = getelementptr inbounds %struct.readelf, %struct.readelf* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %14
  %32 = load %struct.readelf*, %struct.readelf** %2, align 8
  %33 = getelementptr inbounds %struct.readelf, %struct.readelf* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load %struct.readelf*, %struct.readelf** %2, align 8
  %37 = getelementptr inbounds %struct.readelf, %struct.readelf* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.readelf*, %struct.readelf** %2, align 8
  %39 = getelementptr inbounds %struct.readelf, %struct.readelf* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %14
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
