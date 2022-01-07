; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_requestqueue.c_purge_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_requestqueue.c_purge_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, i32 }

@DLM_MSG_REMOVE = common dso_local global i32 0, align 4
@DLM_MSG_LOOKUP = common dso_local global i32 0, align 4
@DLM_MSG_LOOKUP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_message*, i32)* @purge_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @purge_request(%struct.dlm_ls* %0, %struct.dlm_message* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %10 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @dlm_is_removed(%struct.dlm_ls* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %64

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DLM_MSG_REMOVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @DLM_MSG_LOOKUP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DLM_MSG_LOOKUP_REPLY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23
  store i32 1, i32* %4, align 4
  br label %64

36:                                               ; preds = %31
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %38 = call i32 @dlm_no_directory(%struct.dlm_ls* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %64

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %63 [
    i32 131, label %43
    i32 134, label %43
    i32 129, label %43
    i32 136, label %43
    i32 130, label %53
    i32 133, label %53
    i32 128, label %53
    i32 135, label %53
    i32 132, label %53
  ]

43:                                               ; preds = %41, %41, %41, %41
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %45 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dlm_hash2nodeid(%struct.dlm_ls* %44, i32 %47)
  %49 = call i32 (...) @dlm_our_nodeid()
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %64

52:                                               ; preds = %43
  br label %63

53:                                               ; preds = %41, %41, %41, %41, %41
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %55 = load %struct.dlm_message*, %struct.dlm_message** %6, align 8
  %56 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dlm_hash2nodeid(%struct.dlm_ls* %54, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %64

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %41, %62, %52
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %51, %40, %35, %22, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @dlm_is_removed(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_hash2nodeid(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
