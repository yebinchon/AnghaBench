; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_event__attr_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_event__attr_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event__attr_swap(%struct.perf_event_attr* %0) #0 {
  %2 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %2, align 8
  %3 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %3, i32 0, i32 9
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @bswap_32(i8* %5)
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %7, i32 0, i32 9
  store i8* %6, i8** %8, align 8
  %9 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @bswap_32(i8* %11)
  %13 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  %15 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i32 0, i32 7
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @bswap_64(i8* %17)
  %19 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @bswap_64(i8* %23)
  %25 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @bswap_64(i8* %29)
  %31 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @bswap_64(i8* %35)
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @bswap_32(i8* %41)
  %43 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @bswap_32(i8* %47)
  %49 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %52 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @bswap_64(i8* %53)
  %55 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %58 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @bswap_64(i8* %59)
  %61 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %62 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.perf_event_attr*, %struct.perf_event_attr** %2, align 8
  %64 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %63, i32 0, i32 0
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = bitcast i8** %65 to i32*
  %67 = call i32 @swap_bitfield(i32* %66, i32 4)
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i8* @bswap_64(i8*) #1

declare dso_local i32 @swap_bitfield(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
