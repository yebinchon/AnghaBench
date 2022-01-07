; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_readX_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_readX_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_request = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_HEADER_LEN = common dso_local global i32 0, align 4
@smb_vwv6 = common dso_local global i32 0, align 4
@SMB_READX_MAX_PAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"offset is larger than SMB_READX_MAX_PAD or negative!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d > %d || %d < 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_request*)* @smb_proc_readX_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smb_proc_readX_data(%struct.smb_request* %0) #0 {
  %2 = alloca %struct.smb_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smb_request* %0, %struct.smb_request** %2, align 8
  %5 = load i32, i32* @SMB_HEADER_LEN, align 4
  %6 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %7 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %8, 2
  %10 = add nsw i32 %5, %9
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* %3, align 4
  %12 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %13 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @smb_vwv6, align 4
  %16 = call i32 @WVAL(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SMB_READX_MAX_PAD, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23, %1
  %27 = call i32 (i8*, ...) @PARANOIA(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SMB_READX_MAX_PAD, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @PARANOIA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %33 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %37 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %36, i32 0, i32 5
  store i64 %35, i64* %37, align 8
  br label %82

38:                                               ; preds = %23
  %39 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %43 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %49 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %54 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %57 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  %61 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %62 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %65 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %64, i32 0, i32 6
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 4
  %69 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %70 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %69, i32 0, i32 2
  store i32 2, i32* %70, align 8
  %71 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %72 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @smb_len(i32 %73)
  %75 = add nsw i64 %74, 4
  %76 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %77 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load %struct.smb_request*, %struct.smb_request** %2, align 8
  %81 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %38, %26
  ret void
}

declare dso_local i32 @WVAL(i32, i32) #1

declare dso_local i32 @PARANOIA(i8*, ...) #1

declare dso_local i64 @smb_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
