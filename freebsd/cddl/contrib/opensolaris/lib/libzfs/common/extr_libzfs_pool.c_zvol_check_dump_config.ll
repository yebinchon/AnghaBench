; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zvol_check_dump_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zvol_check_dump_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZVOL_FULL_DEV_DIR = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dump is not supported on device '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"malformed dataset name\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dataset name is too long\00", align 1
@EZFS_NAMETOOLONG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"could not open pool '%s'\00", align 1
@EZFS_OPENFAILED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"could not obtain vdev configuration for  '%s'\00", align 1
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_check_dump_config(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @ZVOL_FULL_DEV_DIR, align 4
  %23 = call i32 @strlen(i32 %22)
  store i32 %23, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @ZVOL_FULL_DEV_DIR, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i64 @strncmp(i8* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %148

30:                                               ; preds = %1
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %32 = load i32, i32* @TEXT_DOMAIN, align 4
  %33 = call i8* @dgettext(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @snprintf(i8* %31, i32 1024, i8* %33, i8* %34)
  %36 = call i32* (...) @libzfs_init()
  store i32* %36, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %148

39:                                               ; preds = %30
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @B_TRUE, align 4
  %42 = call i32 @libzfs_print_on_error(i32* %40, i32 %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i8* @dgettext(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %51, i8* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %58 = call i32 @zfs_error(i32* %55, i32 %56, i8* %57)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %148

59:                                               ; preds = %39
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* @TEXT_DOMAIN, align 4
  %71 = call i8* @dgettext(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %69, i8* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @EZFS_NAMETOOLONG, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %76 = call i32 @zfs_error(i32* %73, i32 %74, i8* %75)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %148

77:                                               ; preds = %59
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @strncpy(i8* %21, i8* %78, i32 %84)
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = getelementptr inbounds i8, i8* %21, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %11, align 8
  %95 = call i32* @zpool_open(i32* %94, i8* %21)
  store i32* %95, i32** %4, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @TEXT_DOMAIN, align 4
  %100 = call i8* @dgettext(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %98, i8* %100, i8* %21)
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @EZFS_OPENFAILED, align 4
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %105 = call i32 @zfs_error(i32* %102, i32 %103, i8* %104)
  br label %138

106:                                              ; preds = %93
  %107 = load i32*, i32** %4, align 8
  %108 = call i32* @zpool_get_config(i32* %107, i32* null)
  store i32* %108, i32** %5, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %111 = call i64 @nvlist_lookup_nvlist(i32* %109, i32 %110, i32** %6)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @TEXT_DOMAIN, align 4
  %116 = call i8* @dgettext(i32 %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %114, i8* %116, i8* %21)
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %121 = call i32 @zfs_error(i32* %118, i32 %119, i8* %120)
  br label %138

122:                                              ; preds = %106
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %125 = call i64 @nvlist_lookup_nvlist_array(i32* %123, i32 %124, i32*** %9, i32* %10)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @verify(i32 %127)
  %129 = load i32*, i32** %11, align 8
  %130 = load i32**, i32*** %9, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %134 = call i32 @supported_dump_vdev_type(i32* %129, i32* %132, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  br label %138

137:                                              ; preds = %122
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %136, %113, %97
  %139 = load i32*, i32** %4, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @zpool_close(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @libzfs_fini(i32* %145)
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %148

148:                                              ; preds = %144, %68, %50, %38, %29
  %149 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32* @libzfs_init(...) #2

declare dso_local i32 @libzfs_print_on_error(i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32* @zpool_open(i32*, i8*) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #2

declare dso_local i32 @supported_dump_vdev_type(i32*, i32*, i8*) #2

declare dso_local i32 @zpool_close(i32*) #2

declare dso_local i32 @libzfs_fini(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
