; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.dlm_lkb, %struct.dlm_rsb }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_convert(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_lkb(%struct.dlm_ls* %9, i32 %12, %struct.dlm_lkb** %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 0
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %19, align 8
  store %struct.dlm_rsb* %20, %struct.dlm_rsb** %6, align 8
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %22 = call i32 @hold_rsb(%struct.dlm_rsb* %21)
  %23 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %24 = call i32 @lock_rsb(%struct.dlm_rsb* %23)
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %26 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %27 = call i32 @validate_message(%struct.dlm_lkb* %25, %struct.dlm_message* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %67

31:                                               ; preds = %17
  %32 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %33 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %34 = call i32 @receive_flags(%struct.dlm_lkb* %32, %struct.dlm_message* %33)
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %37 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %38 = call i32 @receive_convert_args(%struct.dlm_ls* %35, %struct.dlm_lkb* %36, %struct.dlm_message* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @send_convert_reply(%struct.dlm_rsb* %42, %struct.dlm_lkb* %43, i32 %44)
  br label %67

46:                                               ; preds = %31
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %48 = call i32 @down_conversion(%struct.dlm_lkb* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %53 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %54 = call i32 @do_convert(%struct.dlm_rsb* %52, %struct.dlm_lkb* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @send_convert_reply(%struct.dlm_rsb* %58, %struct.dlm_lkb* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %46
  %63 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %64 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @do_convert_effects(%struct.dlm_rsb* %63, %struct.dlm_lkb* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %41, %30
  %68 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %69 = call i32 @unlock_rsb(%struct.dlm_rsb* %68)
  %70 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %71 = call i32 @put_rsb(%struct.dlm_rsb* %70)
  %72 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %73 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %72)
  br label %84

74:                                               ; preds = %16
  %75 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %76 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %77 = call i32 @setup_stub_lkb(%struct.dlm_ls* %75, %struct.dlm_message* %76)
  %78 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %79 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %78, i32 0, i32 1
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %81 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @send_convert_reply(%struct.dlm_rsb* %79, %struct.dlm_lkb* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_flags(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @receive_convert_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @send_convert_reply(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @down_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @do_convert(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @do_convert_effects(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

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
