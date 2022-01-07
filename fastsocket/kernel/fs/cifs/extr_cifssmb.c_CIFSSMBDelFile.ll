; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBDelFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBDelFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.smb_hdr = type { i32 }

@SMB_COM_DELETE = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error in RMFile = %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBDelFile(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.nls_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.nls_table* %3, %struct.nls_table** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %105, %5
  %18 = load i32, i32* @SMB_COM_DELETE, align 4
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %20 = bitcast %struct.TYPE_6__** %12 to i8**
  %21 = bitcast i32** %13 to i8**
  %22 = call i32 @smb_init(i32 %18, i32 1, %struct.cifs_tcon* %19, i8** %20, i8** %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %6, align 4
  br label %108

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @PATH_MAX, align 4
  %42 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @cifsConvertToUCS(i32* %39, i8* %40, i32 %41, %struct.nls_table* %42, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %16, align 4
  br label %61

49:                                               ; preds = %27
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @PATH_MAX, align 4
  %52 = call i32 @strnlen(i8* %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @strncpy(i64 %57, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %35
  %62 = load i32, i32* @ATTR_READONLY, align 4
  %63 = load i32, i32* @ATTR_HIDDEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ATTR_SYSTEM, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 4, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @inc_rfc1001_len(%struct.TYPE_6__* %72, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %83 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %86 = bitcast %struct.TYPE_6__* %85 to %struct.smb_hdr*
  %87 = load i32*, i32** %13, align 8
  %88 = bitcast i32* %87 to %struct.smb_hdr*
  %89 = call i32 @SendReceive(i32 %81, i32 %84, %struct.smb_hdr* %86, %struct.smb_hdr* %88, i32* %15, i32 0)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %91 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %90, i32 0, i32 0
  %92 = call i32 @cifs_stats_inc(i32* %91)
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %61
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %61
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = call i32 @cifs_buf_release(%struct.TYPE_6__* %99)
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %17

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %25
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUCS(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
