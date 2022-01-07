; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_query_cifsunix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_query_cifsunix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.smb_request = type { i32, i32, i8*, i32*, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SMB_QUERY_CIFS_UNIX_INFO = common dso_local global i32 0, align 4
@TRANSACT2_QFSINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Not enough data\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Server implements CIFS Extensions for UNIX systems v%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Server capabilities 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*)* @smb_proc_query_cifsunix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_query_cifsunix(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %12 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %11, i32 100)
  store %struct.smb_request* %12, %struct.smb_request** %8, align 8
  %13 = icmp ne %struct.smb_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* @SMB_QUERY_CIFS_UNIX_INFO, align 4
  %18 = call i32 @WSET(i8* %16, i32 0, i32 %17)
  %19 = load i32, i32* @TRANSACT2_QFSINFO, align 4
  %20 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %21 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %23 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %25 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %27 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %29 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %30 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %32 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %34 = call i32 @smb_add_request(%struct.smb_request* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %63

38:                                               ; preds = %15
  %39 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %40 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 12
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @PARANOIA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %63

45:                                               ; preds = %38
  %46 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %47 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @WVAL(i32* %48, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %51 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @WVAL(i32* %52, i32 2)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, i32, ...) @DEBUG1(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %58 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @LVAL(i32* %59, i32 4)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, i32, ...) @DEBUG1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %45, %43, %37
  %64 = load %struct.smb_request*, %struct.smb_request** %8, align 8
  %65 = call i32 @smb_rput(%struct.smb_request* %64)
  br label %66

66:                                               ; preds = %63, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @WSET(i8*, i32, i32) #1

declare dso_local i32 @smb_add_request(%struct.smb_request*) #1

declare dso_local i32 @PARANOIA(i8*) #1

declare dso_local i32 @WVAL(i32*, i32) #1

declare dso_local i32 @DEBUG1(i8*, i32, ...) #1

declare dso_local i32 @LVAL(i32*, i32) #1

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
