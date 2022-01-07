; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_check_smb_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_misc.c_check_smb_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_hdr = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"Bad protocol string signature header 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Mids do not match. received=%u expected=%u\00", align 1
@SMBFLG_RESPONSE = common dso_local global i32 0, align 4
@SMB_COM_LOCKING_ANDX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Server sent request, not response. mid=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_hdr*, i32)* @check_smb_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_smb_hdr(%struct.smb_hdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca i32, align 4
  store %struct.smb_hdr* %0, %struct.smb_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %7 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @cpu_to_le32(i32 1112364031)
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 1, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  store i32 1, i32* %3, align 4
  br label %52

32:                                               ; preds = %20
  %33 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SMBFLG_RESPONSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMB_COM_LOCKING_ANDX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, i32, ...) @cERROR(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %46, %39, %26, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @cERROR(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
