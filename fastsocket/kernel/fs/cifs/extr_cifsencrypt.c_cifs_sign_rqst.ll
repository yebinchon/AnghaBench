; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_sign_rqst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_sign_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TCP_Server_Info = type { i64, i32, i32 }
%struct.smb_hdr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"BSRSPYL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_sign_rqst(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  %10 = alloca %struct.smb_hdr*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %5, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smb_hdr*
  store %struct.smb_hdr* %17, %struct.smb_hdr** %10, align 8
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %19 = icmp eq %struct.smb_hdr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %22 = icmp eq %struct.TCP_Server_Info* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %97

26:                                               ; preds = %20
  %27 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %28 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CifsNeedNegotiate, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %26
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %97

41:                                               ; preds = %33
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %43 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %41
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %59 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 8
  %62 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = sext i32 %68 to i64
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %73 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %78 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %79 = call i32 @cifs_calc_signature(%struct.smb_rqst* %76, %struct.TCP_Server_Info* %77, i8* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %53
  %83 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %84 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memset(i32 %86, i32 0, i32 8)
  br label %95

88:                                               ; preds = %53
  %89 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %94 = call i32 @memcpy(i32 %92, i8* %93, i32 8)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %46, %39, %23
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cifs_calc_signature(%struct.smb_rqst*, %struct.TCP_Server_Info*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
