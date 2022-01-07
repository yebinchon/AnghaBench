; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_cifs_ssetup_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_cifs_ssetup_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@u32 = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i64 0, align 8
@MAX_CIFS_HDR_SIZE = common dso_local global i64 0, align 8
@USHRT_MAX = common dso_local global i32 0, align 4
@CAP_LARGE_FILES = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@CAP_LEVEL_II_OPLOCKS = common dso_local global i32 0, align 4
@CAP_LARGE_WRITE_X = common dso_local global i32 0, align 4
@CAP_LARGE_READ_X = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@CAP_UNICODE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@CAP_STATUS32 = common dso_local global i32 0, align 4
@SMBFLG2_ERR_STATUS = common dso_local global i32 0, align 4
@CAP_DFS = common dso_local global i32 0, align 4
@SMBFLG2_DFS = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.TYPE_9__*)* @cifs_ssetup_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_ssetup_hdr(%struct.cifs_ses* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.cifs_ses*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.cifs_ses* %0, %struct.cifs_ses** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 255, i32* %8, align 8
  %9 = load i32, i32* @u32, align 4
  %10 = load i64, i64* @CIFSMaxBufSize, align 8
  %11 = load i64, i64* @MAX_CIFS_HDR_SIZE, align 8
  %12 = add nsw i64 %10, %11
  %13 = sub nsw i64 %12, 4
  %14 = load i32, i32* @USHRT_MAX, align 4
  %15 = call i32 @min_t(i32 %9, i64 %13, i32 %14)
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  store i8* %16, i8** %19, align 8
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %21 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %30 = call i32 @get_next_vcnum(%struct.cifs_ses* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @CAP_LARGE_FILES, align 4
  %35 = load i32, i32* @CAP_NT_SMBS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CAP_LEVEL_II_OPLOCKS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CAP_LARGE_WRITE_X, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CAP_LARGE_READ_X, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %5, align 4
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %49 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %2
  %54 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %2
  %62 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %63 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CAP_UNICODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @CAP_UNICODE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %68, %61
  %80 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %81 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAP_STATUS32, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load i32, i32* @SMBFLG2_ERR_STATUS, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %87
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @CAP_STATUS32, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %86, %79
  %98 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %99 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CAP_DFS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load i32, i32* @SMBFLG2_DFS, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @CAP_DFS, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %104, %97
  %116 = load %struct.cifs_ses*, %struct.cifs_ses** %3, align 8
  %117 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CAP_UNIX, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @CAP_UNIX, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i32 @get_next_vcnum(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
