; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_cpu_topology.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_build_cpu_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topo = type { i8*, i8* }

@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_topo* ()* @build_cpu_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_topo* @build_cpu_topology() #0 {
  %1 = alloca %struct.cpu_topo*, align 8
  %2 = alloca %struct.cpu_topo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %10 = call i64 @sysconf(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store %struct.cpu_topo* null, %struct.cpu_topo** %1, align 8
  br label %67

14:                                               ; preds = %0
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @UINT_MAX, align 8
  %17 = and i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 2, %22
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = call i8* @calloc(i32 1, i32 %25)
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  store %struct.cpu_topo* null, %struct.cpu_topo** %1, align 8
  br label %67

30:                                               ; preds = %14
  %31 = load i8*, i8** %3, align 8
  %32 = bitcast i8* %31 to %struct.cpu_topo*
  store %struct.cpu_topo* %32, %struct.cpu_topo** %2, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr i8, i8* %33, i64 16
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %37 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr i8, i8* %39, i64 %38
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %43 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %56, %30
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @build_cpu_topo(%struct.cpu_topo* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %59

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %44

59:                                               ; preds = %54, %44
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %64 = call i32 @free_cpu_topo(%struct.cpu_topo* %63)
  store %struct.cpu_topo* null, %struct.cpu_topo** %2, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  store %struct.cpu_topo* %66, %struct.cpu_topo** %1, align 8
  br label %67

67:                                               ; preds = %65, %29, %13
  %68 = load %struct.cpu_topo*, %struct.cpu_topo** %1, align 8
  ret %struct.cpu_topo* %68
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @build_cpu_topo(%struct.cpu_topo*, i32) #1

declare dso_local i32 @free_cpu_topo(%struct.cpu_topo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
