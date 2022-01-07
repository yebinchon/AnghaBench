; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSCreateHardLink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSCreateHardLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i8*, %struct.TYPE_5__, i64, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"In CIFSCreateHardLink\00", align 1
@SMB_COM_NT_RENAME = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@CREATE_HARD_LINK = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Send error in hard link (NT rename) = %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSCreateHardLink(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.nls_table* %4, %struct.nls_table** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  store i32* null, i32** %16, align 8
  %21 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %173, %6
  %23 = load i32, i32* @SMB_COM_NT_RENAME, align 4
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %25 = bitcast %struct.TYPE_6__** %15 to i8**
  %26 = bitcast i32** %16 to i8**
  %27 = call i32 @smb_init(i32 %23, i32 4, %struct.cifs_tcon* %24, i8** %25, i8** %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %176

32:                                               ; preds = %22
  %33 = load i32, i32* @ATTR_READONLY, align 4
  %34 = load i32, i32* @ATTR_HIDDEN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATTR_SYSTEM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATTR_DIRECTORY, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @CREATE_HARD_LINK, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %100

58:                                               ; preds = %32
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* @PATH_MAX, align 4
  %64 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cifsConvertToUCS(i32* %61, i8* %62, i32 %63, %struct.nls_table* %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %18, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 4, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* @PATH_MAX, align 4
  %93 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @cifsConvertToUCS(i32* %90, i8* %91, i32 %92, %struct.nls_table* %93, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %19, align 4
  br label %137

100:                                              ; preds = %32
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* @PATH_MAX, align 4
  %103 = call i32 @strnlen(i8* %101, i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @strncpy(i32* %108, i8* %109, i32 %110)
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* @PATH_MAX, align 4
  %114 = call i32 @strnlen(i8* %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %19, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 4, i32* %122, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @strncpy(i32* %129, i8* %130, i32 %131)
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %100, %58
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 1, %138
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %20, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @inc_rfc1001_len(%struct.TYPE_6__* %142, i32 %143)
  %145 = load i32, i32* %20, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %151 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %154 = bitcast %struct.TYPE_6__* %153 to %struct.smb_hdr*
  %155 = load i32*, i32** %16, align 8
  %156 = bitcast i32* %155 to %struct.smb_hdr*
  %157 = call i32 @SendReceive(i32 %149, i32 %152, %struct.smb_hdr* %154, %struct.smb_hdr* %156, i32* %17, i32 0)
  store i32 %157, i32* %14, align 4
  %158 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %159 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %158, i32 0, i32 0
  %160 = call i32 @cifs_stats_inc(i32* %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %137
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %137
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %168 = call i32 @cifs_buf_release(%struct.TYPE_6__* %167)
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %22

174:                                              ; preds = %166
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %30
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @smb_init(i32, i32, %struct.cifs_tcon*, i8**, i8**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifsConvertToUCS(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @inc_rfc1001_len(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SendReceive(i32, i32, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @cifs_buf_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
