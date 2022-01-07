; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_build_ntlmssp_negotiate_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_build_ntlmssp_negotiate_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@NTLMSSP_SIGNATURE = common dso_local global i32 0, align 4
@NtLmNegotiate = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_56 = common dso_local global i32 0, align 4
@NTLMSSP_REQUEST_TARGET = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_128 = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_UNICODE = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_NTLM = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_EXTENDED_SEC = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_SIGN = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_KEY_XCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cifs_ses*)* @build_ntlmssp_negotiate_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_ntlmssp_negotiate_blob(i8* %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cifs_ses* %1, %struct.cifs_ses** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @memset(i8* %9, i32 0, i32 64)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NTLMSSP_SIGNATURE, align 4
  %15 = call i32 @memcpy(i32 %13, i32 %14, i32 8)
  %16 = load i32, i32* @NtLmNegotiate, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @NTLMSSP_NEGOTIATE_56, align 4
  %20 = load i32, i32* @NTLMSSP_REQUEST_TARGET, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NTLMSSP_NEGOTIATE_128, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NTLMSSP_NEGOTIATE_UNICODE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NTLMSSP_NEGOTIATE_NTLM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NTLMSSP_NEGOTIATE_EXTENDED_SEC, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %31 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %36 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %2
  %41 = load i32, i32* @NTLMSSP_NEGOTIATE_SIGN, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %45 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @NTLMSSP_NEGOTIATE_KEY_XCH, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %40
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
