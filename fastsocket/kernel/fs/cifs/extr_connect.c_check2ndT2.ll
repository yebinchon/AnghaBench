; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_check2ndT2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_check2ndT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i64, i32 }
%struct.smb_t2_rsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_COM_TRANSACTION2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid transact2 word count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"total data %d smaller than data in frame %d\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"missing %d bytes from transact2, check next response\00", align 1
@CIFSMaxBufSize = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"TotalDataSize %d is over maximum buffer %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check2ndT2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check2ndT2(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.smb_t2_rsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.smb_hdr*
  store %struct.smb_hdr* %10, %struct.smb_hdr** %4, align 8
  %11 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SMB_COM_TRANSACTION2, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %28 = bitcast %struct.smb_hdr* %27 to %struct.smb_t2_rsp*
  store %struct.smb_t2_rsp* %28, %struct.smb_t2_rsp** %5, align 8
  %29 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %5, align 8
  %30 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i64 @get_unaligned_le16(i32* %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.smb_t2_rsp*, %struct.smb_t2_rsp** %5, align 8
  %34 = getelementptr inbounds %struct.smb_t2_rsp, %struct.smb_t2_rsp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i64 @get_unaligned_le16(i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %70

41:                                               ; preds = %26
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %70

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @CIFSMaxBufSize, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @CIFSMaxBufSize, align 8
  %65 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %62, %45, %40, %22, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cERROR(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
