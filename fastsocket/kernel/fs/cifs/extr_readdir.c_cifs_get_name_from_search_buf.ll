; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_get_name_from_search_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_get_name_from_search_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i8* }
%struct.cifs_sb_info = type { i32, %struct.nls_table* }
%struct.nls_table = type { i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i64 }

@SMB_FIND_FILE_UNIX = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_FULL_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_ID_FULL_DIR_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_BOTH_DIRECTORY_INFO = common dso_local global i64 0, align 8
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Unknown findfirst level %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"bad search response length %d past smb end\00", align 1
@UNICODE_NAME_MAX = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qstr*, i8*, i64, i32, %struct.cifs_sb_info*, i32, i64*)* @cifs_get_name_from_search_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_get_name_from_search_buf(%struct.qstr* %0, i8* %1, i64 %2, i32 %3, %struct.cifs_sb_info* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nls_table*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  store %struct.qstr* %0, %struct.qstr** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.cifs_sb_info* %4, %struct.cifs_sb_info** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %27 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %26, i32 0, i32 1
  %28 = load %struct.nls_table*, %struct.nls_table** %27, align 8
  store %struct.nls_table* %28, %struct.nls_table** %19, align 8
  %29 = load i64*, i64** %15, align 8
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @SMB_FIND_FILE_UNIX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %7
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %20, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8* %39, i8** %18, align 8
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i8*, i8** %18, align 8
  %44 = call i32 @cifs_unicode_bytelen(i8* %43)
  store i32 %44, i32* %17, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i8*, i8** %18, align 8
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = call i32 @strnlen(i8* %46, i32 %47)
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @le64_to_cpu(i32 %53)
  %55 = load i64*, i64** %15, align 8
  store i64 %54, i64* %55, align 8
  br label %146

56:                                               ; preds = %7
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @SMB_FIND_FILE_DIRECTORY_INFO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = bitcast i8* %61 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %21, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8* %66, i8** %18, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @le32_to_cpu(i32 %69)
  store i32 %70, i32* %17, align 4
  br label %145

71:                                               ; preds = %56
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @SMB_FIND_FILE_FULL_DIRECTORY_INFO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i8*, i8** %10, align 8
  %77 = bitcast i8* %76 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %22, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  store i8* %81, i8** %18, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le32_to_cpu(i32 %84)
  store i32 %85, i32* %17, align 4
  br label %144

86:                                               ; preds = %71
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @SMB_FIND_FILE_ID_FULL_DIR_INFO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %23, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8* %96, i8** %18, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @le64_to_cpu(i32 %103)
  %105 = load i64*, i64** %15, align 8
  store i64 %104, i64* %105, align 8
  br label %143

106:                                              ; preds = %86
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @SMB_FIND_FILE_BOTH_DIRECTORY_INFO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i8*, i8** %10, align 8
  %112 = bitcast i8* %111 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %24, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8* %116, i8** %18, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @le32_to_cpu(i32 %119)
  store i32 %120, i32* %17, align 4
  br label %142

121:                                              ; preds = %106
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @SMB_FIND_FILE_INFO_STANDARD, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load i8*, i8** %10, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %25, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8* %131, i8** %18, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %17, align 4
  br label %141

136:                                              ; preds = %121
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %194

141:                                              ; preds = %125
  br label %142

142:                                              ; preds = %141, %110
  br label %143

143:                                              ; preds = %142, %90
  br label %144

144:                                              ; preds = %143, %75
  br label %145

145:                                              ; preds = %144, %60
  br label %146

146:                                              ; preds = %145, %49
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %14, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %194

155:                                              ; preds = %146
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %155
  %159 = load %struct.qstr*, %struct.qstr** %9, align 8
  %160 = getelementptr inbounds %struct.qstr, %struct.qstr* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** %18, align 8
  %163 = bitcast i8* %162 to i32*
  %164 = load i32, i32* @UNICODE_NAME_MAX, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @min(i32 %165, i32 %166)
  %168 = load %struct.nls_table*, %struct.nls_table** %19, align 8
  %169 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %170 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %173 = and i32 %171, %172
  %174 = call i32 @cifs_from_ucs2(i8* %161, i32* %163, i32 %164, i32 %167, %struct.nls_table* %168, i32 %173)
  %175 = load %struct.qstr*, %struct.qstr** %9, align 8
  %176 = getelementptr inbounds %struct.qstr, %struct.qstr* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.nls_table*, %struct.nls_table** %19, align 8
  %178 = call i64 @nls_nullsize(%struct.nls_table* %177)
  %179 = load %struct.qstr*, %struct.qstr** %9, align 8
  %180 = getelementptr inbounds %struct.qstr, %struct.qstr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = zext i32 %181 to i64
  %183 = sub nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  br label %192

185:                                              ; preds = %155
  %186 = load i8*, i8** %18, align 8
  %187 = load %struct.qstr*, %struct.qstr** %9, align 8
  %188 = getelementptr inbounds %struct.qstr, %struct.qstr* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.qstr*, %struct.qstr** %9, align 8
  %191 = getelementptr inbounds %struct.qstr, %struct.qstr* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %185, %158
  %193 = load i32, i32* %16, align 4
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %192, %150, %136
  %195 = load i32, i32* %8, align 4
  ret i32 %195
}

declare dso_local i32 @cifs_unicode_bytelen(i8*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i64) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i32 @cifs_from_ucs2(i8*, i32*, i32, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @nls_nullsize(%struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
