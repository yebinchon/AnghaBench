; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_inherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot inherit %s for '%s'\00", align 1
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid property\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@ZFS_IOC_INHERIT_PROP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_PROPREADONLY = common dso_local global i32 0, align 4
@EZFS_PROPNONINHERIT = common dso_local global i32 0, align 4
@EZFS_PROPTYPE = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i64 0, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"dataset is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_inherit(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %19 = load i32, i32* @TEXT_DOMAIN, align 4
  %20 = call i8* @dgettext(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %18, i32 1024, i8* %20, i8* %21, i8* %24)
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @zfs_name_to_prop(i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* @ZPROP_INVAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @zfs_prop_user(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @zfs_error_aux(i32* %37, i8* %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @EZFS_BADPROP, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %188

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlcpy(i32 %47, i8* %50, i32 4)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strlcpy(i32 %53, i8* %54, i32 4)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @ZFS_IOC_INHERIT_PROP, align 4
  %60 = call i32 @zfs_ioctl(i32* %58, i32 %59, %struct.TYPE_9__* %8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @errno, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %66 = call i32 @zfs_standard_error(i32* %63, i32 %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %188

67:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %188

68:                                               ; preds = %3
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @zfs_prop_readonly(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @EZFS_PROPREADONLY, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %76 = call i32 @zfs_error(i32* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %188

77:                                               ; preds = %68
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @zfs_prop_inheritable(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @EZFS_PROPNONINHERIT, align 4
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %88 = call i32 @zfs_error(i32* %85, i32 %86, i8* %87)
  store i32 %88, i32* %4, align 4
  br label %188

89:                                               ; preds = %81, %77
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @zfs_prop_valid_for_type(i64 %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* @EZFS_PROPTYPE, align 4
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %100 = call i32 @zfs_error(i32* %97, i32 %98, i8* %99)
  store i32 %100, i32* %4, align 4
  br label %188

101:                                              ; preds = %89
  %102 = load i64, i64* %13, align 8
  %103 = call i8* @zfs_prop_to_name(i64 %102)
  store i8* %103, i8** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlcpy(i32 %105, i8* %108, i32 4)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @strlcpy(i32 %111, i8* %112, i32 4)
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %101
  %118 = call i64 (...) @getzoneid()
  %119 = load i64, i64* @GLOBAL_ZONEID, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %124 = call i64 @zfs_prop_get_int(%struct.TYPE_8__* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* @TEXT_DOMAIN, align 4
  %129 = call i8* @dgettext(i32 %128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %130 = call i32 @zfs_error_aux(i32* %127, i8* %129)
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* @EZFS_ZONED, align 4
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %134 = call i32 @zfs_error(i32* %131, i32 %132, i8* %133)
  store i32 %134, i32* %4, align 4
  br label %188

135:                                              ; preds = %121, %117, %101
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32* @changelist_gather(%struct.TYPE_8__* %136, i64 %137, i32 0, i32 0)
  store i32* %138, i32** %10, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %188

141:                                              ; preds = %135
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load i32*, i32** %10, align 8
  %147 = call i64 @changelist_haszonedchild(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @TEXT_DOMAIN, align 4
  %152 = call i8* @dgettext(i32 %151, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %153 = call i32 @zfs_error_aux(i32* %150, i8* %152)
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* @EZFS_ZONED, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %157 = call i32 @zfs_error(i32* %154, i32 %155, i8* %156)
  store i32 %157, i32* %9, align 4
  br label %184

158:                                              ; preds = %145, %141
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @changelist_prefix(i32* %159)
  store i32 %160, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %184

163:                                              ; preds = %158
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @ZFS_IOC_INHERIT_PROP, align 4
  %168 = call i32 @zfs_ioctl(i32* %166, i32 %167, %struct.TYPE_9__* %8)
  store i32 %168, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* @errno, align 4
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %174 = call i32 @zfs_standard_error(i32* %171, i32 %172, i8* %173)
  store i32 %174, i32* %4, align 4
  br label %188

175:                                              ; preds = %163
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @changelist_postfix(i32* %176)
  store i32 %177, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %184

180:                                              ; preds = %175
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = call i32 @get_stats(%struct.TYPE_8__* %181)
  br label %183

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183, %179, %162, %149
  %185 = load i32*, i32** %10, align 8
  %186 = call i32 @changelist_free(i32* %185)
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %184, %170, %140, %126, %96, %84, %72, %67, %62, %36
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @zfs_name_to_prop(i8*) #2

declare dso_local i32 @zfs_prop_user(i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

declare dso_local i64 @zfs_prop_readonly(i64) #2

declare dso_local i32 @zfs_prop_inheritable(i64) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32) #2

declare dso_local i8* @zfs_prop_to_name(i64) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_8__*, i32) #2

declare dso_local i32* @changelist_gather(%struct.TYPE_8__*, i64, i32, i32) #2

declare dso_local i64 @changelist_haszonedchild(i32*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @changelist_postfix(i32*) #2

declare dso_local i32 @get_stats(%struct.TYPE_8__*) #2

declare dso_local i32 @changelist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
