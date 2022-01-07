; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_init_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_request.c_smb_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32, i32 }
%struct.smb_request = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@SMB_HEADER_LEN = common dso_local global i32 0, align 4
@smb_wct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wct too large, %d > 20\0A\00", align 1
@SMB_RECV_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"header length: %d   smb_wct: %2d\0A\00", align 1
@SMB_RECV_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.smb_request*)* @smb_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_init_request(%struct.smb_sb_info* %0, %struct.smb_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.smb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.smb_request* %1, %struct.smb_request** %5, align 8
  %8 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %9 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SMB_HEADER_LEN, align 4
  %15 = call i32 @memcpy(i32* %10, i32 %13, i32 %14)
  %16 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %17 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @smb_wct, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 20
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PARANOIA(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @SMB_RECV_DROP, align 4
  %29 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %30 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %68

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %34 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @SMB_HEADER_LEN, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 %35, %37
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @VERBOSE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @SMB_HEADER_LEN, align 4
  %44 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %45 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %48 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %50 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %53 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %51, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %59 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 8
  %63 = load %struct.smb_request*, %struct.smb_request** %5, align 8
  %64 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %63, i32 0, i32 4
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @SMB_RECV_PARAM, align 4
  %66 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %67 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %31, %25
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @PARANOIA(i8*, i32) #1

declare dso_local i32 @VERBOSE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
