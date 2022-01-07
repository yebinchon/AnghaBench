; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBEcho.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBEcho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.kvec = type { i64, %struct.TYPE_5__* }
%struct.smb_rqst = type { i32, %struct.kvec* }

@.str = private unnamed_addr constant [16 x i8] c"In echo request\00", align 1
@SMB_COM_ECHO = common dso_local global i32 0, align 4
@cifs_echo_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Echo request failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBEcho(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvec, align 8
  %7 = alloca %struct.smb_rqst, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 1
  store %struct.kvec* %6, %struct.kvec** %9, align 8
  %10 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @SMB_COM_ECHO, align 4
  %12 = bitcast %struct.TYPE_5__** %4 to i8**
  %13 = call i32 @small_smb_init(i32 %11, i32 0, i32* null, i8** %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 65535, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = call i32 @put_unaligned_le16(i32 1, i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @put_bcc(i32 1, %struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 97, i8* %34, align 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = call i32 @inc_rfc1001_len(%struct.TYPE_5__* %35, i32 3)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 1
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @be32_to_cpu(i32 %42)
  %44 = add nsw i64 %43, 4
  %45 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %47 = load i32, i32* @cifs_echo_callback, align 4
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %49 = call i32 @cifs_call_async(%struct.TCP_Server_Info* %46, %struct.smb_rqst* %7, i32* null, i32 %47, %struct.TCP_Server_Info* %48, i32 1)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %18
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %18
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = call i32 @cifs_small_buf_release(%struct.TYPE_5__* %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @small_smb_init(i32, i32, i32*, i8**) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @put_bcc(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cifs_call_async(%struct.TCP_Server_Info*, %struct.smb_rqst*, i32*, i32, %struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @cifs_small_buf_release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
