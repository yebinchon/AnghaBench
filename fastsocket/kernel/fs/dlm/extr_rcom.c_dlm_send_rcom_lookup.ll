; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_send_rcom_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_send_rcom_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i64, i32 }
%struct.dlm_mhandle = type { i32 }

@DLM_RCOM_LOOKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_send_rcom_lookup(%struct.dlm_rsb* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %9, i32 0, i32 2
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %10, align 8
  store %struct.dlm_ls* %11, %struct.dlm_ls** %7, align 8
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DLM_RCOM_LOOKUP, align 4
  %15 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @create_rcom(%struct.dlm_ls* %12, i32 %13, i32 %14, i32 %17, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %24 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %30 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memcpy(i32 %25, i32 %28, i32 %31)
  %33 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %34 = ptrtoint %struct.dlm_rsb* %33 to i64
  %35 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %36 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %38 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %39 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %40 = call i32 @send_rcom(%struct.dlm_ls* %37, %struct.dlm_mhandle* %38, %struct.dlm_rcom* %39)
  br label %41

41:                                               ; preds = %22, %21
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
