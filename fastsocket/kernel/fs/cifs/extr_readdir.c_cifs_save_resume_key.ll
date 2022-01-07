; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_save_resume_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_save_resume_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i8*, i32, i64 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SMB_FIND_FILE_UNIX = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_FULL_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_ID_FULL_DIR_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_BOTH_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown findfirst level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cifsFileInfo*)* @cifs_save_resume_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_save_resume_key(i8* %0, %struct.cifsFileInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cifsFileInfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cifsFileInfo* %1, %struct.cifsFileInfo** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %17 = icmp eq %struct.cifsFileInfo* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %183

24:                                               ; preds = %18
  %25 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %26 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @SMB_FIND_FILE_UNIX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8* %38, i8** %9, align 8
  %39 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %40 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @cifs_unicode_bytelen(i8* %45)
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %32
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* @PATH_MAX, align 4
  %50 = call i32 @strnlen(i8* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %56 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  br label %173

58:                                               ; preds = %24
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @SMB_FIND_FILE_DIRECTORY_INFO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i8*, i8** %4, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %11, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8* %68, i8** %9, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %77 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 8
  br label %172

79:                                               ; preds = %58
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @SMB_FIND_FILE_FULL_DIRECTORY_INFO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %12, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8* %89, i8** %9, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %98 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 8
  br label %171

100:                                              ; preds = %79
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @SMB_FIND_FILE_ID_FULL_DIR_INFO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %13, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8* %110, i8** %9, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %119 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 8
  br label %170

121:                                              ; preds = %100
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @SMB_FIND_FILE_BOTH_DIRECTORY_INFO, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load i8*, i8** %4, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %14, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8* %131, i8** %9, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  store i32 %135, i32* %7, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %140 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 8
  br label %169

142:                                              ; preds = %121
  %143 = load i64, i64* %8, align 8
  %144 = load i64, i64* @SMB_FIND_FILE_INFO_STANDARD, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %142
  %147 = load i8*, i8** %4, align 8
  %148 = bitcast i8* %147 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %15, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  store i8* %152, i8** %9, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %7, align 4
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %161 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 8
  br label %168

163:                                              ; preds = %142
  %164 = load i64, i64* %8, align 8
  %165 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %183

168:                                              ; preds = %146
  br label %169

169:                                              ; preds = %168, %125
  br label %170

170:                                              ; preds = %169, %104
  br label %171

171:                                              ; preds = %170, %83
  br label %172

172:                                              ; preds = %171, %62
  br label %173

173:                                              ; preds = %172, %51
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %176 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %5, align 8
  %180 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %173, %163, %21
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @cifs_unicode_bytelen(i8*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
