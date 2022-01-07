; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_doio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i64, i64, i32 }

@CONN_VALID = common dso_local global i64 0, align 8
@CONN_INVALID = common dso_local global i8* null, align 8
@SMB_RECV_REQUEST = common dso_local global i64 0, align 8
@SMBIOD_DATA_READY = common dso_local global i32 0, align 4
@smbiod_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_sb_info*)* @smbiod_doio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbiod_doio(%struct.smb_sb_info* %0) #0 {
  %2 = alloca %struct.smb_sb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %2, align 8
  store i32 7, i32* %4, align 4
  %5 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CONN_VALID, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %84

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %42, %11
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %14 = call i32 @smb_request_recv(%struct.smb_sb_info* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i8*, i8** @CONN_INVALID, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %21 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %23 = call i32 @smbiod_retry(%struct.smb_sb_info* %22)
  br label %84

24:                                               ; preds = %12
  %25 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %26 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMB_RECV_REQUEST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %32 = call i32 @smbiod_handle_request(%struct.smb_sb_info* %31)
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %4, align 4
  %41 = icmp sgt i32 %39, 0
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %12, label %44

44:                                               ; preds = %42
  %45 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %46 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CONN_VALID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %84

51:                                               ; preds = %44
  %52 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %53 = call i64 @smb_recv_available(%struct.smb_sb_info* %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @SMBIOD_DATA_READY, align 4
  %57 = call i32 @set_bit(i32 %56, i32* @smbiod_flags)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %72, %58
  %60 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %61 = call i32 @smb_request_send_server(%struct.smb_sb_info* %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i8*, i8** @CONN_INVALID, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %68 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %70 = call i32 @smbiod_retry(%struct.smb_sb_info* %69)
  br label %84

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %59, label %75

75:                                               ; preds = %72
  %76 = load %struct.smb_sb_info*, %struct.smb_sb_info** %2, align 8
  %77 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %76, i32 0, i32 2
  %78 = call i32 @list_empty(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @SMBIOD_DATA_READY, align 4
  %82 = call i32 @set_bit(i32 %81, i32* @smbiod_flags)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %64, %50, %17, %10
  ret void
}

declare dso_local i32 @smb_request_recv(%struct.smb_sb_info*) #1

declare dso_local i32 @smbiod_retry(%struct.smb_sb_info*) #1

declare dso_local i32 @smbiod_handle_request(%struct.smb_sb_info*) #1

declare dso_local i64 @smb_recv_available(%struct.smb_sb_info*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smb_request_send_server(%struct.smb_sb_info*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
