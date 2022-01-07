; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_create_rcom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_rcom.c_create_rcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32 }
%struct.dlm_rcom = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.dlm_mhandle = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"create_rcom to %d type %d len %d ENOBUFS\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@DLM_HEADER_MAJOR = common dso_local global i32 0, align 4
@DLM_HEADER_MINOR = common dso_local global i32 0, align 4
@DLM_RCOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32, i32, i32, %struct.dlm_rcom**, %struct.dlm_mhandle**)* @create_rcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_rcom(%struct.dlm_ls* %0, i32 %1, i32 %2, i32 %3, %struct.dlm_rcom** %4, %struct.dlm_mhandle** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_ls*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_rcom**, align 8
  %13 = alloca %struct.dlm_mhandle**, align 8
  %14 = alloca %struct.dlm_rcom*, align 8
  %15 = alloca %struct.dlm_mhandle*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.dlm_rcom** %4, %struct.dlm_rcom*** %12, align 8
  store %struct.dlm_mhandle** %5, %struct.dlm_mhandle*** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 28, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @GFP_NOFS, align 4
  %25 = call %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32 %22, i32 %23, i32 %24, i8** %16)
  store %struct.dlm_mhandle* %25, %struct.dlm_mhandle** %15, align 8
  %26 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %15, align 8
  %27 = icmp ne %struct.dlm_mhandle* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @log_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @ENOBUFS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %83

35:                                               ; preds = %6
  %36 = load i8*, i8** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @memset(i8* %36, i32 0, i32 %37)
  %39 = load i8*, i8** %16, align 8
  %40 = bitcast i8* %39 to %struct.dlm_rcom*
  store %struct.dlm_rcom* %40, %struct.dlm_rcom** %14, align 8
  %41 = load i32, i32* @DLM_HEADER_MAJOR, align 4
  %42 = load i32, i32* @DLM_HEADER_MINOR, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %45 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %48 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %51 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = call i32 (...) @dlm_our_nodeid()
  %54 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %55 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %59 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @DLM_RCOM, align 4
  %62 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %63 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %67 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %69 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %72 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %75 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dlm_ls*, %struct.dlm_ls** %8, align 8
  %77 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.dlm_mhandle*, %struct.dlm_mhandle** %15, align 8
  %80 = load %struct.dlm_mhandle**, %struct.dlm_mhandle*** %13, align 8
  store %struct.dlm_mhandle* %79, %struct.dlm_mhandle** %80, align 8
  %81 = load %struct.dlm_rcom*, %struct.dlm_rcom** %14, align 8
  %82 = load %struct.dlm_rcom**, %struct.dlm_rcom*** %12, align 8
  store %struct.dlm_rcom* %81, %struct.dlm_rcom** %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %35, %28
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.dlm_mhandle* @dlm_lowcomms_get_buffer(i32, i32, i32, i8**) #1

declare dso_local i32 @log_print(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
