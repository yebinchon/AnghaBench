; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_SMBQueryInformation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_SMBQueryInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i64, i8*, i8* }
%struct.nls_table = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.timespec = type { i32, i64 }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"In SMBQPath path %s\00", align 1
@SMB_COM_QUERY_INFORMATION = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Send error in QueryInfo = %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMBQueryInformation(i32 %0, %struct.cifs_tcon* %1, i8* %2, %struct.TYPE_12__* %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.timespec, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.nls_table* %4, %struct.nls_table** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %152, %6
  %24 = load i32, i32* @SMB_COM_QUERY_INFORMATION, align 4
  %25 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %26 = bitcast %struct.TYPE_11__** %14 to i8**
  %27 = bitcast %struct.TYPE_10__** %15 to i8**
  %28 = call i32 @smb_init(i32 %24, i32 0, %struct.cifs_tcon* %25, i8** %26, i8** %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %7, align 4
  br label %155

33:                                               ; preds = %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @cifsConvertToUCS(i32* %45, i8* %46, i32 %47, %struct.nls_table* %48, i32 %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %18, align 4
  br label %67

55:                                               ; preds = %33
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = call i32 @strnlen(i8* %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @strncpy(i64 %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %55, %41
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @inc_rfc1001_len(%struct.TYPE_11__* %72, i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %81 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %84 = bitcast %struct.TYPE_11__* %83 to %struct.smb_hdr*
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %86 = bitcast %struct.TYPE_10__* %85 to %struct.smb_hdr*
  %87 = call i32 @SendReceive(i32 %79, i32 %82, %struct.smb_hdr* %84, %struct.smb_hdr* %86, i32* %17, i32 0)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %67
  %91 = load i32, i32* %16, align 4
  %92 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %145

93:                                               ; preds = %67
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %95 = icmp ne %struct.TYPE_12__* %94, null
  br i1 %95, label %96, label %141

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %20, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = call i32 @memset(%struct.TYPE_12__* %101, i32 0, i32 48)
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %20, align 4
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = bitcast %struct.timespec* %19 to { i32, i64 }*
  %107 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %106, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @cifs_UnixTimeToNT(i32 %108, i64 %110)
  %112 = call i8* @cpu_to_le64(i32 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = call i8* @cpu_to_le64(i32 %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le16_to_cpu(i32 %136)
  %138 = call i32 @cpu_to_le32(i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %144

141:                                              ; preds = %93
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %141, %96
  br label %145

145:                                              ; preds = %144, %90
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %147 = call i32 @cifs_buf_release(%struct.TYPE_11__* %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @EAGAIN, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %23

153:                                              ; preds = %145
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %31
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i32 @cifsConvertToUCS(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
