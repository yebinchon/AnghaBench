; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBRename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_CIFSSMBRename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i8*, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.smb_hdr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"In CIFSSMBRename\00", align 1
@SMB_COM_RENAME = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Send error in rename = %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBRename(i32 %0, %struct.cifs_tcon* %1, i8* %2, i8* %3, %struct.nls_table* %4, i32 %5) #0 {
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
  %21 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %167, %6
  %23 = load i32, i32* @SMB_COM_RENAME, align 4
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %25 = bitcast %struct.TYPE_6__** %15 to i8**
  %26 = bitcast i32** %16 to i8**
  %27 = call i32 @smb_init(i32 %23, i32 1, %struct.cifs_tcon* %24, i8** %25, i8** %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %170

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load i32, i32* @ATTR_READONLY, align 4
  %36 = load i32, i32* @ATTR_HIDDEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ATTR_SYSTEM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ATTR_DIRECTORY, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @cifsConvertToUCS(i32* %55, i8* %56, i32 %57, %struct.nls_table* %58, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %18, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 4, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* @PATH_MAX, align 4
  %87 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @cifsConvertToUCS(i32* %84, i8* %85, i32 %86, %struct.nls_table* %87, i32 %88)
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %19, align 4
  br label %131

94:                                               ; preds = %32
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* @PATH_MAX, align 4
  %97 = call i32 @strnlen(i8* %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @strncpy(i32* %102, i8* %103, i32 %104)
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* @PATH_MAX, align 4
  %108 = call i32 @strnlen(i8* %106, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 4, i32* %116, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @strncpy(i32* %123, i8* %124, i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %94, %52
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 1, %132
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %20, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %137 = load i32, i32* %20, align 4
  %138 = call i32 @inc_rfc1001_len(%struct.TYPE_6__* %136, i32 %137)
  %139 = load i32, i32* %20, align 4
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %145 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %148 = bitcast %struct.TYPE_6__* %147 to %struct.smb_hdr*
  %149 = load i32*, i32** %16, align 8
  %150 = bitcast i32* %149 to %struct.smb_hdr*
  %151 = call i32 @SendReceive(i32 %143, i32 %146, %struct.smb_hdr* %148, %struct.smb_hdr* %150, i32* %17, i32 0)
  store i32 %151, i32* %14, align 4
  %152 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %153 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %152, i32 0, i32 0
  %154 = call i32 @cifs_stats_inc(i32* %153)
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %131
  %158 = load i32, i32* %14, align 4
  %159 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %131
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %162 = call i32 @cifs_buf_release(%struct.TYPE_6__* %161)
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* @EAGAIN, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  br label %22

168:                                              ; preds = %160
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %168, %30
  %171 = load i32, i32* %7, align 4
  ret i32 %171
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
