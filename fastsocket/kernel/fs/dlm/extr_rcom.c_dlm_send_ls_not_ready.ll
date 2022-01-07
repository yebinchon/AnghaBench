; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_send_ls_not_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_send_ls_not_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rcom = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.rcom_config = type { i32 }
%struct.dlm_mhandle = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DLM_HEADER_MAJOR = common dso_local global i32 0, align 4
@DLM_HEADER_MINOR = common dso_local global i32 0, align 4
@DLM_RCOM = common dso_local global i32 0, align 4
@DLM_RCOM_STATUS_REPLY = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_send_ls_not_ready(i32 %0, %struct.dlm_rcom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_rcom*, align 8
  %7 = alloca %struct.rcom_config*, align 8
  %8 = alloca %struct.dlm_mhandle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %5, align 8
  store i32 52, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32 %11, i32 %12, i32 %13, i8** %9)
  store %struct.dlm_mhandle* %14, %struct.dlm_mhandle** %8, align 8
  %15 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %8, align 8
  %16 = icmp ne %struct.dlm_mhandle* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to %struct.dlm_rcom*
  store %struct.dlm_rcom* %25, %struct.dlm_rcom** %6, align 8
  %26 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %27 = load i32, i32* @DLM_HEADER_MINOR, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = call i32 (...) @dlm_our_nodeid()
  %40 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @DLM_RCOM, align 4
  %48 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @DLM_RCOM_STATUS_REPLY, align 4
  %52 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %53 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %58 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %63 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ESRCH, align 4
  %65 = sub nsw i32 0, %64
  %66 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %67 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %69 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.rcom_config*
  store %struct.rcom_config* %71, %struct.rcom_config** %7, align 8
  %72 = call i32 @cpu_to_le32(i32 -1)
  %73 = load %struct.rcom_config*, %struct.rcom_config** %7, align 8
  %74 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dlm_rcom*, %struct.dlm_rcom** %6, align 8
  %76 = call i32 @dlm_rcom_out(%struct.dlm_rcom* %75)
  %77 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %8, align 8
  %78 = call i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %20, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32, i32, i32, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dlm_rcom_out(%struct.dlm_rcom*) #1

declare dso_local i32 @dlm_lowcomms_commit_buffer(%struct.dlm_mhandle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
