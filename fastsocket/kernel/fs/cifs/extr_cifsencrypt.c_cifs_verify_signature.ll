; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_verify_signature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TCP_Server_Info = type { i32, i32 }
%struct.smb_hdr = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.smb_com_lock_req = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMB_COM_LOCKING_ANDX = common dso_local global i64 0, align 8
@LOCKING_ANDX_OPLOCK_RELEASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"BSRSPYL \00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"dummy signature received for smb command 0x%x\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_verify_signature(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca [20 x i8], align 16
  %11 = alloca %struct.smb_hdr*, align 8
  %12 = alloca %struct.smb_com_lock_req*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smb_hdr*
  store %struct.smb_hdr* %19, %struct.smb_hdr** %11, align 8
  %20 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %21 = icmp eq %struct.smb_hdr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %24 = icmp eq %struct.TCP_Server_Info* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %103

28:                                               ; preds = %22
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %103

34:                                               ; preds = %28
  %35 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %36 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMB_COM_LOCKING_ANDX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %42 = bitcast %struct.smb_hdr* %41 to %struct.smb_com_lock_req*
  store %struct.smb_com_lock_req* %42, %struct.smb_com_lock_req** %12, align 8
  %43 = load %struct.smb_com_lock_req*, %struct.smb_com_lock_req** %12, align 8
  %44 = getelementptr inbounds %struct.smb_com_lock_req, %struct.smb_com_lock_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LOCKING_ANDX_OPLOCK_RELEASE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %103

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @memcmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %60 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %65 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @memcpy(i8* %64, i8* %68, i32 8)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %73 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 8
  %76 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %77 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %81 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %80, i32 0, i32 0
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %84 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %86 = call i32 @cifs_calc_signature(%struct.smb_rqst* %83, %struct.TCP_Server_Info* %84, i8* %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %88 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %63
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %103

94:                                               ; preds = %63
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %97 = call i64 @memcmp(i8* %95, i8* %96, i32 8)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EACCES, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %99, %92, %49, %33, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cFYI(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_calc_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
