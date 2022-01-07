; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_user_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__process_user_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_tool = type { i32 (%struct.perf_tool*, %union.perf_event*, i32*)*, i32 (%struct.perf_tool*, %union.perf_event*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.0*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.1*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.2*)* }
%struct.perf_session.0 = type opaque
%struct.perf_session.1 = type opaque
%struct.perf_session.2 = type opaque

@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_tool*, i32)* @perf_session__process_user_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__process_user_event(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_tool* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca %struct.perf_tool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store %struct.perf_tool* %2, %struct.perf_tool** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %12 = load %union.perf_event*, %union.perf_event** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @dump_event(%struct.perf_session* %11, %union.perf_event* %12, i32 %13, i32* null)
  %15 = load %union.perf_event*, %union.perf_event** %7, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %75 [
    i32 131, label %19
    i32 129, label %35
    i32 128, label %42
    i32 130, label %57
    i32 132, label %66
  ]

19:                                               ; preds = %4
  %20 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %21 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %20, i32 0, i32 0
  %22 = load i32 (%struct.perf_tool*, %union.perf_event*, i32*)*, i32 (%struct.perf_tool*, %union.perf_event*, i32*)** %21, align 8
  %23 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %24 = load %union.perf_event*, %union.perf_event** %7, align 8
  %25 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %26 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %25, i32 0, i32 1
  %27 = call i32 %22(%struct.perf_tool* %23, %union.perf_event* %24, i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %32 = call i32 @perf_session__set_id_hdr_size(%struct.perf_session* %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %4
  %36 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %37 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %36, i32 0, i32 1
  %38 = load i32 (%struct.perf_tool*, %union.perf_event*)*, i32 (%struct.perf_tool*, %union.perf_event*)** %37, align 8
  %39 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %40 = load %union.perf_event*, %union.perf_event** %7, align 8
  %41 = call i32 %38(%struct.perf_tool* %39, %union.perf_event* %40)
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %4
  %43 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %44 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @lseek(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %50 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %49, i32 0, i32 2
  %51 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.0*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.0*)** %50, align 8
  %52 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %53 = load %union.perf_event*, %union.perf_event** %7, align 8
  %54 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %55 = bitcast %struct.perf_session* %54 to %struct.perf_session.0*
  %56 = call i32 %51(%struct.perf_tool* %52, %union.perf_event* %53, %struct.perf_session.0* %55)
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %4
  %58 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %59 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %58, i32 0, i32 3
  %60 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.1*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.1*)** %59, align 8
  %61 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %62 = load %union.perf_event*, %union.perf_event** %7, align 8
  %63 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %64 = bitcast %struct.perf_session* %63 to %struct.perf_session.1*
  %65 = call i32 %60(%struct.perf_tool* %61, %union.perf_event* %62, %struct.perf_session.1* %64)
  store i32 %65, i32* %5, align 4
  br label %78

66:                                               ; preds = %4
  %67 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %68 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %67, i32 0, i32 4
  %69 = load i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.2*)*, i32 (%struct.perf_tool*, %union.perf_event*, %struct.perf_session.2*)** %68, align 8
  %70 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %71 = load %union.perf_event*, %union.perf_event** %7, align 8
  %72 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %73 = bitcast %struct.perf_session* %72 to %struct.perf_session.2*
  %74 = call i32 %69(%struct.perf_tool* %70, %union.perf_event* %71, %struct.perf_session.2* %73)
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %4
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %66, %57, %42, %35, %33
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @dump_event(%struct.perf_session*, %union.perf_event*, i32, i32*) #1

declare dso_local i32 @perf_session__set_id_hdr_size(%struct.perf_session*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
