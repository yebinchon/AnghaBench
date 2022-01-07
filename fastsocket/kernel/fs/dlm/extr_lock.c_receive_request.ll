; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { i32 }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32 }

@DLM_IFL_MSTCPY = common dso_local global i32 0, align 4
@R_MASTER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_request(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = call i32 @create_lkb(%struct.dlm_ls* %9, %struct.dlm_lkb** %5)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %16 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %17 = call i32 @receive_flags(%struct.dlm_lkb* %15, %struct.dlm_message* %16)
  %18 = load i32, i32* @DLM_IFL_MSTCPY, align 4
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %24 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %25 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %26 = call i32 @receive_request_args(%struct.dlm_ls* %23, %struct.dlm_lkb* %24, %struct.dlm_message* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %32 = call i32 @__put_lkb(%struct.dlm_ls* %30, %struct.dlm_lkb* %31)
  br label %82

33:                                               ; preds = %14
  %34 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %35 = call i32 @receive_extralen(%struct.dlm_message* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %37 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @R_MASTER, align 4
  %42 = call i32 @find_rsb(%struct.dlm_ls* %36, i32 %39, i32 %40, i32 %41, %struct.dlm_rsb** %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = call i32 @__put_lkb(%struct.dlm_ls* %46, %struct.dlm_lkb* %47)
  br label %82

49:                                               ; preds = %33
  %50 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %51 = call i32 @lock_rsb(%struct.dlm_rsb* %50)
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %54 = call i32 @attach_lkb(%struct.dlm_rsb* %52, %struct.dlm_lkb* %53)
  %55 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %56 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %57 = call i32 @do_request(%struct.dlm_rsb* %55, %struct.dlm_lkb* %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @send_request_reply(%struct.dlm_rsb* %58, %struct.dlm_lkb* %59, i32 %60)
  %62 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %63 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @do_request_effects(%struct.dlm_rsb* %62, %struct.dlm_lkb* %63, i32 %64)
  %66 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %67 = call i32 @unlock_rsb(%struct.dlm_rsb* %66)
  %68 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %69 = call i32 @put_rsb(%struct.dlm_rsb* %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @EINPROGRESS, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %80 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %92

82:                                               ; preds = %45, %29, %13
  %83 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %84 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %85 = call i32 @setup_stub_lkb(%struct.dlm_ls* %83, %struct.dlm_message* %84)
  %86 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %87 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %86, i32 0, i32 1
  %88 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %89 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @send_request_reply(%struct.dlm_rsb* %87, %struct.dlm_lkb* %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %81
  ret void
}

declare dso_local i32 @create_lkb(%struct.dlm_ls*, %struct.dlm_lkb**) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_request_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @__put_lkb(%struct.dlm_ls*, %struct.dlm_lkb*) #1

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #1

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_request(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @send_request_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @do_request_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @setup_stub_lkb(%struct.dlm_ls*, %struct.dlm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
