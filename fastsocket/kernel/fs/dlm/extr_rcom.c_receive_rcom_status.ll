; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_receive_rcom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_mhandle = type { i32 }
%struct.rcom_config = type { i32 }

@DLM_RCOM_STATUS_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_rcom*)* @receive_rcom_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_rcom_status(%struct.dlm_ls* %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_rcom*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_mhandle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %4, align 8
  %9 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DLM_RCOM_STATUS_REPLY, align 4
  %16 = call i32 @create_rcom(%struct.dlm_ls* %13, i32 %14, i32 %15, i32 4, %struct.dlm_rcom** %5, %struct.dlm_mhandle** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %25 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dlm_rcom*, %struct.dlm_rcom** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %30 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = call i32 @dlm_recover_status(%struct.dlm_ls* %31)
  %33 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %37 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.rcom_config*
  %40 = call i32 @make_config(%struct.dlm_ls* %35, %struct.rcom_config* %39)
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %42 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %6, align 8
  %43 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %44 = call i32 @send_rcom(%struct.dlm_ls* %41, %struct.dlm_mhandle* %42, %struct.dlm_rcom* %43)
  br label %45

45:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @dlm_recover_status(%struct.dlm_ls*) #1

declare dso_local i32 @make_config(%struct.dlm_ls*, %struct.rcom_config*) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
