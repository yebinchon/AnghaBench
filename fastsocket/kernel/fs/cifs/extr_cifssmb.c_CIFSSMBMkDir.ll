; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBMkDir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBMkDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"In CIFSSMBMkDir\00", align 1
@SMB_COM_CREATE_DIRECTORY = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Error in Mkdir = %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBMkDir(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.nls_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.nls_table* %3, %struct.nls_table** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  store i32* null, i32** %14, align 8
  %17 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %98, %5
  %19 = load i32, i32* @SMB_COM_CREATE_DIRECTORY, align 4
  %20 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %21 = bitcast %struct.TYPE_6__** %13 to i8**
  %22 = bitcast i32** %14 to i8**
  %23 = call i32 @smb_init(i32 %19, i32 0, %struct.cifs_tcon* %20, i8** %21, i8** %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %101

28:                                               ; preds = %18
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @PATH_MAX, align 4
  %43 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @cifsConvertToUCS(i32* %40, i8* %41, i32 %42, %struct.nls_table* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %16, align 4
  br label %62

50:                                               ; preds = %28
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @PATH_MAX, align 4
  %53 = call i32 @strnlen(i8* %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @strncpy(i64 %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %50, %36
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @inc_rfc1001_len(%struct.TYPE_6__* %65, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %76 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = bitcast %struct.TYPE_6__* %78 to %struct.smb_hdr*
  %80 = load i32*, i32** %14, align 8
  %81 = bitcast i32* %80 to %struct.smb_hdr*
  %82 = call i32 @SendReceive(i32 %74, i32 %77, %struct.smb_hdr* %79, %struct.smb_hdr* %81, i32* %15, i32 0)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %84 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %83, i32 0, i32 0
  %85 = call i32 @cifs_stats_inc(i32* %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %62
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %62
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = call i32 @cifs_buf_release(%struct.TYPE_6__* %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %18

99:                                               ; preds = %91
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %26
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUCS(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
