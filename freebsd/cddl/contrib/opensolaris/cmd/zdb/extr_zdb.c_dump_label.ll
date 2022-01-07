; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.stat64 = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_DISK_ROOTD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ZFS_RDISK_ROOTD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot open '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to stat '%s': %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"cannot use '%s': character device required\0A\00", align 1
@VDEV_LABELS = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"LABEL %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to read label %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to unpack label %d\0A\00", align 1
@SPA_MINBLOCKSHIFT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dump_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_label(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stat64, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %7, align 8
  store i64 8, i64* %8, align 8
  %24 = load i64, i64* @B_FALSE, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = trunc i64 %18 to i32
  %27 = call i32 @strlcpy(i8* %20, i8* %25, i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %50

33:                                               ; preds = %1
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* @ZFS_DISK_ROOTD, align 4
  %36 = load i32, i32* @ZFS_DISK_ROOTD, align 4
  %37 = call i32 @strlen(i32 %36)
  %38 = call i64 @strncmp(i8* %34, i32 %35, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = trunc i64 %18 to i32
  %42 = load i8*, i8** @ZFS_RDISK_ROOTD, align 8
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @ZFS_DISK_ROOTD, align 4
  %45 = call i32 @strlen(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = call i32 @snprintf(i8* %20, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %47)
  br label %49

49:                                               ; preds = %40, %33
  br label %76

50:                                               ; preds = %1
  %51 = call i64 @stat64(i8* %20, %struct.stat64* %9)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = trunc i64 %18 to i32
  %55 = load i8*, i8** @ZFS_RDISK_ROOTD, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @snprintf(i8* %20, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load i8*, i8** %2, align 8
  %59 = call i8* @strrchr(i8* %58, i8 signext 115)
  store i8* %59, i8** %13, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i8*, i8** %2, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 112)
  store i8* %63, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61, %53
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @isdigit(i8 signext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65, %61
  %72 = trunc i64 %18 to i32
  %73 = call i32 @strlcat(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %49
  %77 = load i32, i32* @O_RDONLY, align 4
  %78 = call i32 @open64(i8* %20, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i8* @strerror(i32 %82)
  %84 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %83)
  %85 = call i32 @exit(i32 1) #4
  unreachable

86:                                               ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = call i64 @fstat64(i32 %87, %struct.stat64* %9)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* @errno, align 4
  %93 = call i8* @strerror(i32 %92)
  %94 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %20, i8* %93)
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @close(i32 %95)
  %97 = call i32 @exit(i32 1) #4
  unreachable

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.stat64, %struct.stat64* %9, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @S_ISBLK(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %20)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @close(i32 %106)
  %108 = call i32 @exit(i32 1) #4
  unreachable

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.stat64, %struct.stat64* %9, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @P2ALIGN(i32 %112, i32 8)
  store i32 %113, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %193, %109
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @VDEV_LABELS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %196

118:                                              ; preds = %114
  store i32* null, i32** %15, align 8
  %119 = load i64*, i64** @dump_opt, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 113
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* %14, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @vdev_label_offset(i32 %130, i32 %131, i32 0)
  %133 = call i32 @pread64(i32 %129, %struct.TYPE_6__* %4, i32 8, i32 %132)
  %134 = sext i32 %133 to i64
  %135 = icmp ne i64 %134, 8
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load i64*, i64** @dump_opt, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 113
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %14, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %136
  br label %193

145:                                              ; preds = %128
  %146 = load i8*, i8** %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = call i64 @nvlist_unpack(i8* %146, i64 %147, i32** %15, i32 0)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i64*, i64** @dump_opt, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 113
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %14, align 4
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  store i32 %159, i32* %11, align 4
  br label %184

160:                                              ; preds = %145
  store i32* null, i32** %16, align 8
  %161 = load i64*, i64** @dump_opt, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 113
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @dump_nvlist(i32* %166, i32 4)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %171 = call i64 @nvlist_lookup_nvlist(i32* %169, i32 %170, i32** %16)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %176 = call i64 @nvlist_lookup_uint64(i32* %174, i32 %175, i32* %11)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173, %168
  %179 = load i32, i32* @SPA_MINBLOCKSHIFT, align 4
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %178, %173
  %181 = load i32*, i32** %15, align 8
  %182 = call i32 @nvlist_free(i32* %181)
  %183 = load i64, i64* @B_TRUE, align 8
  store i64 %183, i64* %12, align 8
  br label %184

184:                                              ; preds = %180, %158
  %185 = load i64*, i64** @dump_opt, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 117
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @dump_label_uberblocks(%struct.TYPE_6__* %4, i32 %190)
  br label %192

192:                                              ; preds = %189, %184
  br label %193

193:                                              ; preds = %192, %144
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %114

196:                                              ; preds = %114
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @close(i32 %197)
  %199 = load i64, i64* %12, align 8
  %200 = icmp ne i64 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 0, i32 2
  %203 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %203)
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @stat64(i8*, %struct.stat64*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @open64(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @fstat64(i32, %struct.stat64*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @S_ISBLK(i32) #2

declare dso_local i32 @P2ALIGN(i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pread64(i32, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @vdev_label_offset(i32, i32, i32) #2

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #2

declare dso_local i32 @dump_nvlist(i32*, i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @dump_label_uberblocks(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
