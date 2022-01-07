; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_lookup_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_lookup_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, i32 }
%struct.dlm_lkb = type { i32, i32, %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"receive_lookup_reply no lkb\00", align 1
@DLM_MSG_LOOKUP_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"receive_lookup_reply %x unlock %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_lookup_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_lookup_reply(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_lkb(%struct.dlm_ls* %9, i32 %12, %struct.dlm_lkb** %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = call i32 @log_error(%struct.dlm_ls* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

19:                                               ; preds = %2
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 2
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %21, align 8
  store %struct.dlm_rsb* %22, %struct.dlm_rsb** %6, align 8
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %24 = call i32 @hold_rsb(%struct.dlm_rsb* %23)
  %25 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %26 = call i32 @lock_rsb(%struct.dlm_rsb* %25)
  %27 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %28 = load i32, i32* @DLM_MSG_LOOKUP_REPLY, align 4
  %29 = call i32 @remove_from_waiters(%struct.dlm_lkb* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %78

33:                                               ; preds = %19
  %34 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %35 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (...) @dlm_our_nodeid()
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %42 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  store i32 0, i32* %8, align 4
  %43 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %44 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %49

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %48 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %51 = call i64 @is_overlap(%struct.dlm_lkb* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %55 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %56 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %59 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @log_debug(%struct.dlm_ls* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %63 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %64 = call i32 @queue_cast_overlap(%struct.dlm_rsb* %62, %struct.dlm_lkb* %63)
  %65 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %66 = call i32 @unhold_lkb(%struct.dlm_lkb* %65)
  br label %71

67:                                               ; preds = %49
  %68 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %69 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %70 = call i32 @_request_lock(%struct.dlm_rsb* %68, %struct.dlm_lkb* %69)
  br label %71

71:                                               ; preds = %67, %53
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %76 = call i32 @process_lookup_list(%struct.dlm_rsb* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %32
  %79 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %80 = call i32 @unlock_rsb(%struct.dlm_rsb* %79)
  %81 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %82 = call i32 @put_rsb(%struct.dlm_rsb* %81)
  %83 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %84 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %83)
  br label %85

85:                                               ; preds = %78, %16
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @remove_from_waiters(%struct.dlm_lkb*, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i64 @is_overlap(%struct.dlm_lkb*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @queue_cast_overlap(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @unhold_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @_request_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @process_lookup_list(%struct.dlm_rsb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
