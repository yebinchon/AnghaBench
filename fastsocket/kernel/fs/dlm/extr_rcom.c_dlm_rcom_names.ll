; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_rcom_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_dlm_rcom_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dlm_ls = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_rcom = type { i32, i32 }
%struct.dlm_mhandle = type { i32 }

@dlm_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DLM_RCOM_NAMES = common dso_local global i32 0, align 4
@rcom_response = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_rcom_names(%struct.dlm_ls* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_rcom*, align 8
  %10 = alloca %struct.dlm_mhandle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlm_config, i32 0, i32 0), align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (...) @dlm_our_nodeid()
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlm_config, i32 0, i32 0), align 4
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dlm_copy_master_names(%struct.dlm_ls* %30, i8* %31, i32 %32, i32 %37, i32 %38, i32 %39)
  br label %74

41:                                               ; preds = %4
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DLM_RCOM_NAMES, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @create_rcom(%struct.dlm_ls* %42, i32 %43, i32 %44, i32 %45, %struct.dlm_rcom** %9, %struct.dlm_mhandle** %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %74

50:                                               ; preds = %41
  %51 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %52 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memcpy(i32 %53, i8* %54, i32 %55)
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %58 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %59 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %58, i32 0, i32 0
  %60 = call i32 @allow_sync_reply(%struct.dlm_ls* %57, i32* %59)
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlm_config, i32 0, i32 0), align 4
  %65 = call i32 @memset(%struct.TYPE_5__* %63, i32 0, i32 %64)
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %67 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %10, align 8
  %68 = load %struct.dlm_rcom*, %struct.dlm_rcom** %9, align 8
  %69 = call i32 @send_rcom(%struct.dlm_ls* %66, %struct.dlm_mhandle* %67, %struct.dlm_rcom* %68)
  %70 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %71 = call i32 @dlm_wait_function(%struct.dlm_ls* %70, i32* @rcom_response)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %73 = call i32 @disallow_sync_reply(%struct.dlm_ls* %72)
  br label %74

74:                                               ; preds = %50, %49, %23
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @dlm_copy_master_names(%struct.dlm_ls*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @create_rcom(%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @allow_sync_reply(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @send_rcom(%struct.dlm_ls*, %struct.dlm_mhandle*, %struct.dlm_rcom*) #1

declare dso_local i32 @dlm_wait_function(%struct.dlm_ls*, i32*) #1

declare dso_local i32 @disallow_sync_reply(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
