; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_entry_is_dot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_entry_is_dot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@SMB_FIND_FILE_UNIX = common dso_local global i64 0, align 8
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_FULL_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_ID_FULL_DIR_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_BOTH_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown findfirst level %d\00", align 1
@UNICODE_DOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cifsFileInfo*)* @cifs_entry_is_dot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_entry_is_dot(i8* %0, %struct.cifsFileInfo* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifsFileInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cifsFileInfo* %1, %struct.cifsFileInfo** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %16 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMB_FIND_FILE_UNIX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8* %27, i8** %6, align 8
  %28 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %29 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @cifs_unicode_bytelen(i8* %34)
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strnlen(i8* %37, i32 5)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %140

40:                                               ; preds = %2
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %42 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SMB_FIND_FILE_DIRECTORY_INFO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = bitcast i8* %48 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8* %53, i8** %6, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %139

58:                                               ; preds = %40
  %59 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %60 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SMB_FIND_FILE_FULL_DIRECTORY_INFO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load i8*, i8** %3, align 8
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %10, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8* %71, i8** %6, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le32_to_cpu(i32 %74)
  store i32 %75, i32* %7, align 4
  br label %138

76:                                               ; preds = %58
  %77 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %78 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SMB_FIND_FILE_ID_FULL_DIR_INFO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load i8*, i8** %3, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %11, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8* %89, i8** %6, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le32_to_cpu(i32 %92)
  store i32 %93, i32* %7, align 4
  br label %137

94:                                               ; preds = %76
  %95 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %96 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SMB_FIND_FILE_BOTH_DIRECTORY_INFO, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load i8*, i8** %3, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %12, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8* %107, i8** %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le32_to_cpu(i32 %110)
  store i32 %111, i32* %7, align 4
  br label %136

112:                                              ; preds = %94
  %113 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %114 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SMB_FIND_FILE_INFO_STANDARD, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load i8*, i8** %3, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %13, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  store i8* %125, i8** %6, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %7, align 4
  br label %135

129:                                              ; preds = %112
  %130 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %131 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %129, %119
  br label %136

136:                                              ; preds = %135, %101
  br label %137

137:                                              ; preds = %136, %83
  br label %138

138:                                              ; preds = %137, %65
  br label %139

139:                                              ; preds = %138, %47
  br label %140

140:                                              ; preds = %139, %39
  %141 = load i8*, i8** %6, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %212

143:                                              ; preds = %140
  %144 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %145 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %143
  %150 = load i8*, i8** %6, align 8
  %151 = bitcast i8* %150 to i64*
  store i64* %151, i64** %14, align 8
  %152 = load i32, i32* %7, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64*, i64** %14, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @UNICODE_DOT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 1, i32* %5, align 4
  br label %161

161:                                              ; preds = %160, %154
  br label %180

162:                                              ; preds = %149
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load i64*, i64** %14, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @UNICODE_DOT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load i64*, i64** %14, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @UNICODE_DOT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 2, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %171, %165
  br label %179

179:                                              ; preds = %178, %162
  br label %180

180:                                              ; preds = %179, %161
  br label %211

181:                                              ; preds = %143
  %182 = load i32, i32* %7, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 46
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  store i32 1, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %184
  br label %210

192:                                              ; preds = %181
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 46
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 46
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i32 2, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %201, %195
  br label %209

209:                                              ; preds = %208, %192
  br label %210

210:                                              ; preds = %209, %191
  br label %211

211:                                              ; preds = %210, %180
  br label %212

212:                                              ; preds = %211, %140
  %213 = load i32, i32* %5, align 4
  ret i32 %213
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
