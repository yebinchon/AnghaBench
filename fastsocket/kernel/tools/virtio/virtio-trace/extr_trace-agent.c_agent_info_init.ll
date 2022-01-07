; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_agent_info_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_agent_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_info = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"stdout mode\0A\00", align 1
@CTL_PATH = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.agent_info*)* @agent_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agent_info_init(%struct.agent_info* %0) #0 {
  %2 = alloca %struct.agent_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.agent_info* %0, %struct.agent_info** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %9 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @make_input_path(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %59

18:                                               ; preds = %12
  %19 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %20 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i8* @make_output_path(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %59

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %18
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %37 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %40 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %43 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rw_thread_init(i32 %33, i8* %34, i8* %35, i32 %38, i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %6

53:                                               ; preds = %6
  %54 = load i64, i64* @CTL_PATH, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @rw_ctl_init(i8* %55)
  %57 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %58 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  ret i8* null

59:                                               ; preds = %28, %17
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable
}

declare dso_local i8* @make_input_path(i32) #1

declare dso_local i8* @make_output_path(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @rw_thread_init(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rw_ctl_init(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
