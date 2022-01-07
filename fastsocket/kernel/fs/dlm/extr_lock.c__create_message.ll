; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__create_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c__create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.dlm_mhandle = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DLM_HEADER_MAJOR = common dso_local global i32 0, align 4
@DLM_HEADER_MINOR = common dso_local global i32 0, align 4
@DLM_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32, i32, i32, %struct.dlm_message**, %struct.dlm_mhandle**)* @_create_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_create_message(%struct.dlm_ls* %0, i32 %1, i32 %2, i32 %3, %struct.dlm_message** %4, %struct.dlm_mhandle** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_ls*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_message**, align 8
  %13 = alloca %struct.dlm_mhandle**, align 8
  %14 = alloca %struct.dlm_message*, align 8
  %15 = alloca %struct.dlm_mhandle*, align 8
  %16 = alloca i8*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dlm_message** %4, %struct.dlm_message*** %12, align 8
  store %struct.dlm_mhandle** %5, %struct.dlm_mhandle*** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32 %17, i32 %18, i32 %19, i8** %16)
  store %struct.dlm_mhandle* %20, %struct.dlm_mhandle** %15, align 8
  %21 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %15, align 8
  %22 = icmp ne %struct.dlm_mhandle* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOBUFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %63

26:                                               ; preds = %6
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load i8*, i8** %16, align 8
  %31 = bitcast i8* %30 to %struct.dlm_message*
  store %struct.dlm_message* %31, %struct.dlm_message** %14, align 8
  %32 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %33 = load i32, i32* @DLM_HEADER_MINOR, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %36 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %39 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %42 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 4
  %44 = call i32 (...) @dlm_our_nodeid()
  %45 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %46 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %50 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @DLM_MSG, align 4
  %53 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %54 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %58 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %15, align 8
  %60 = load %struct.dlm_mhandle**, %struct.dlm_mhandle*** %13, align 8
  store %struct.dlm_mhandle* %59, %struct.dlm_mhandle** %60, align 8
  %61 = load %struct.dlm_message*, %struct.dlm_message** %14, align 8
  %62 = load %struct.dlm_message**, %struct.dlm_message*** %12, align 8
  store %struct.dlm_message* %61, %struct.dlm_message** %62, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %26, %23
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32, i32, i32, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
