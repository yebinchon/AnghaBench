; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_check_parents.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_check_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"missing dataset name\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@ZFS_IOC_OBJSET_STATS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"no such pool '%s'\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"parent does not exist\00", align 1
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"parent is not a filesystem\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*, i64, i32*)* @check_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_parents(%struct.TYPE_10__* %0, i8* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = bitcast %struct.TYPE_9__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %26 = load i32, i32* @TEXT_DOMAIN, align 4
  %27 = call i8* @dgettext(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @snprintf(i8* %25, i32 1024, i8* %27, i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = trunc i64 %22 to i32
  %32 = call i64 @parent_name(i8* %30, i8* %24, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %5
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = load i32, i32* @TEXT_DOMAIN, align 4
  %37 = call i8* @dgettext(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (%struct.TYPE_10__*, i8*, ...) @zfs_error_aux(%struct.TYPE_10__* %35, i8* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %42 = call i32 @zfs_error(%struct.TYPE_10__* %39, i32 %40, i8* %41)
  store i32 %42, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

43:                                               ; preds = %5
  %44 = call i8* @strchr(i8* %24, i8 signext 47)
  store i8* %44, i8** %15, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 @strlen(i8* %24)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %24, i64 %48
  store i8* %49, i8** %15, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = ptrtoint i8* %24 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @strncpy(i8* %52, i8* %24, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = ptrtoint i8* %24 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ZFS_IOC_OBJSET_STATS, align 4
  %70 = call i64 @ioctl(i32 %68, i32 %69, %struct.TYPE_9__* %12)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %50
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @ENOENT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = load i32, i32* @TEXT_DOMAIN, align 4
  %79 = call i8* @dgettext(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (%struct.TYPE_10__*, i8*, ...) @zfs_error_aux(%struct.TYPE_10__* %77, i8* %79, i8* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = load i32, i32* @EZFS_NOENT, align 4
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %86 = call i32 @zfs_error(%struct.TYPE_10__* %83, i32 %84, i8* %85)
  store i32 %86, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

87:                                               ; preds = %72, %50
  br label %88

88:                                               ; preds = %133, %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = call i32* @make_dataset_handle(%struct.TYPE_10__* %89, i8* %24)
  store i32* %90, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %134

92:                                               ; preds = %88
  %93 = load i64, i64* @errno, align 8
  %94 = load i64, i64* @ENOENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = trunc i64 %22 to i32
  %101 = call i64 @parent_name(i8* %24, i8* %24, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (%struct.TYPE_10__*, i8*, ...) @zfs_error_aux(%struct.TYPE_10__* %104, i8* %106, i8* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = load i32, i32* @EZFS_NOENT, align 4
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %113 = call i32 @zfs_error(%struct.TYPE_10__* %110, i32 %111, i8* %112)
  store i32 %113, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

114:                                              ; preds = %99
  br label %133

115:                                              ; preds = %96, %92
  %116 = load i64, i64* @errno, align 8
  %117 = load i64, i64* @ENOENT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = load i32, i32* @TEXT_DOMAIN, align 4
  %122 = call i8* @dgettext(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 (%struct.TYPE_10__*, i8*, ...) @zfs_error_aux(%struct.TYPE_10__* %120, i8* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = load i32, i32* @EZFS_NOENT, align 4
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %127 = call i32 @zfs_error(%struct.TYPE_10__* %124, i32 %125, i8* %126)
  store i32 %127, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

128:                                              ; preds = %115
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = load i64, i64* @errno, align 8
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %132 = call i32 @zfs_standard_error(%struct.TYPE_10__* %129, i64 %130, i8* %131)
  store i32 %132, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

133:                                              ; preds = %114
  br label %88

134:                                              ; preds = %88
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %137 = call i32 @zfs_prop_get_int(i32* %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %18, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %134
  %144 = call i64 (...) @getzoneid()
  %145 = load i64, i64* @GLOBAL_ZONEID, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = load i64, i64* @EPERM, align 8
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %154 = call i32 @zfs_standard_error(%struct.TYPE_10__* %151, i64 %152, i8* %153)
  %155 = load i32*, i32** %16, align 8
  %156 = call i32 @zfs_close(i32* %155)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

157:                                              ; preds = %147, %143
  %158 = load i32*, i32** %16, align 8
  %159 = call i64 @zfs_get_type(i32* %158)
  %160 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %164 = load i32, i32* @TEXT_DOMAIN, align 4
  %165 = call i8* @dgettext(i32 %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %166 = call i32 (%struct.TYPE_10__*, i8*, ...) @zfs_error_aux(%struct.TYPE_10__* %163, i8* %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %168 = load i32, i32* @EZFS_BADTYPE, align 4
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %170 = call i32 @zfs_error(%struct.TYPE_10__* %167, i32 %168, i8* %169)
  %171 = load i32*, i32** %16, align 8
  %172 = call i32 @zfs_close(i32* %171)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

173:                                              ; preds = %157
  %174 = load i32*, i32** %16, align 8
  %175 = call i32 @zfs_close(i32* %174)
  %176 = load i32*, i32** %11, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = call i32 @strlen(i8* %24)
  %180 = load i32*, i32** %11, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %173
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %182

182:                                              ; preds = %181, %162, %150, %128, %119, %103, %76, %34
  %183 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i8* @dgettext(i32, i8*) #3

declare dso_local i64 @parent_name(i8*, i8*, i32) #3

declare dso_local i32 @zfs_error_aux(%struct.TYPE_10__*, i8*, ...) #3

declare dso_local i32 @zfs_error(%struct.TYPE_10__*, i32, i8*) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @strncpy(i8*, i8*, i32) #3

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_9__*) #3

declare dso_local i32* @make_dataset_handle(%struct.TYPE_10__*, i8*) #3

declare dso_local i32 @zfs_standard_error(%struct.TYPE_10__*, i64, i8*) #3

declare dso_local i32 @zfs_prop_get_int(i32*, i32) #3

declare dso_local i64 @getzoneid(...) #3

declare dso_local i32 @zfs_close(i32*) #3

declare dso_local i64 @zfs_get_type(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
