; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, i64, i32 }

@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@ZFS_IOC_SEND = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"not an earlier snapshot from the same fs\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"incremental source (@%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i64, i32, i32, i32*)* @dump_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_ioctl(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [1024 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 48, i1 false)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %17, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %7
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %7
  %38 = phi i1 [ true, %7 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strlcpy(i32 %42, i32 %45, i32 4)
  %47 = load i32, i32* %13, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %53 = call i32 @zfs_prop_get_int(%struct.TYPE_6__* %51, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %60 = call i64 @nvlist_alloc(i32** %18, i32 %59, i32 0)
  %61 = icmp eq i64 0, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %37
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32*, i32** %18, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i64 @nvlist_add_string(i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = icmp eq i64 0, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @VERIFY(i32 %77)
  br label %79

79:                                               ; preds = %72, %66, %37
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @ZFS_IOC_SEND, align 4
  %84 = call i64 @zfs_ioctl(i32* %82, i32 %83, %struct.TYPE_7__* %16)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %158

86:                                               ; preds = %79
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %88 = load i32, i32* @TEXT_DOMAIN, align 4
  %89 = call i8* @dgettext(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @snprintf(i8* %87, i32 1024, i8* %89, i32 %92)
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i64 @nvlist_add_uint64(i32* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = icmp eq i64 0, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @VERIFY(i32 %98)
  %100 = load i32*, i32** %15, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %86
  %103 = load i32*, i32** %15, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = call i64 @nvlist_add_nvlist(i32* %103, i32 %106, i32* %107)
  %109 = icmp eq i64 0, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @VERIFY(i32 %110)
  br label %112

112:                                              ; preds = %102, %86
  %113 = load i32*, i32** %18, align 8
  %114 = call i32 @nvlist_free(i32* %113)
  %115 = load i32, i32* @errno, align 4
  switch i32 %115, label %153 [
    i32 128, label %116
    i32 136, label %125
    i32 140, label %144
    i32 138, label %144
    i32 137, label %144
    i32 135, label %144
    i32 134, label %144
    i32 132, label %144
    i32 131, label %144
    i32 130, label %144
    i32 139, label %144
    i32 129, label %144
  ]

116:                                              ; preds = %112
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* @TEXT_DOMAIN, align 4
  %119 = call i8* @dgettext(i32 %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %117, i8* %119)
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %124 = call i32 @zfs_error(i32* %121, i32 %122, i8* %123)
  store i32 %124, i32* %8, align 4
  br label %174

125:                                              ; preds = %112
  %126 = load i32*, i32** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %130 = call i32 @zfs_dataset_exists(i32* %126, i32 %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* @TEXT_DOMAIN, align 4
  %135 = call i8* @dgettext(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %133, i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %132, %125
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* @EZFS_NOENT, align 4
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %143 = call i32 @zfs_error(i32* %140, i32 %141, i8* %142)
  store i32 %143, i32* %8, align 4
  br label %174

144:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* @errno, align 4
  %147 = call i8* @strerror(i32 %146)
  %148 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %145, i8* %147)
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* @EZFS_BADBACKUP, align 4
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %152 = call i32 @zfs_error(i32* %149, i32 %150, i8* %151)
  store i32 %152, i32* %8, align 4
  br label %174

153:                                              ; preds = %112
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* @errno, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %157 = call i32 @zfs_standard_error(i32* %154, i32 %155, i8* %156)
  store i32 %157, i32* %8, align 4
  br label %174

158:                                              ; preds = %79
  %159 = load i32*, i32** %15, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i32*, i32** %15, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %18, align 8
  %167 = call i64 @nvlist_add_nvlist(i32* %162, i32 %165, i32* %166)
  %168 = icmp eq i64 0, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @VERIFY(i32 %169)
  br label %171

171:                                              ; preds = %161, %158
  %172 = load i32*, i32** %18, align 8
  %173 = call i32 @nvlist_free(i32* %172)
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %171, %153, %144, %139, %116
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_dataset_exists(i32*, i32, i64) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
