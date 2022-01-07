; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_do_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_do_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"cannot import '%s': pool is formatted using an unsupported ZFS version\0A\00", align 1
@POOL_STATE_EXPORTED = common dso_local global i64 0, align 8
@ZFS_IMPORT_ANY_HOST = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TIMESTAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"cannot import '%s': pool may be in use from other system, it was last accessed by %s (hostid: 0x%lx) on %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"use '-f' to import anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"cannot import '%s': pool may be in use from other system\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@ZFS_IMPORT_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*, i32)* @do_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_import(i32* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %22 = call i64 @nvlist_lookup_string(i32* %20, i32 %21, i8** %13)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @verify(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %28 = call i64 @nvlist_lookup_uint64(i32* %26, i32 %27, i64* %14)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @verify(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %34 = call i64 @nvlist_lookup_uint64(i32* %32, i32 %33, i64* %15)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @verify(i32 %36)
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* @stderr, align 4
  %43 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* %43, i8* %44)
  store i32 1, i32* %6, align 4
  br label %141

46:                                               ; preds = %5
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @POOL_STATE_EXPORTED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %99

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ZFS_IMPORT_ANY_HOST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %58 = call i64 @nvlist_lookup_uint64(i32* %56, i32 %57, i64* %16)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %55
  %61 = load i64, i64* %16, align 8
  %62 = call i64 (...) @gethostid()
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %67 = call i64 @nvlist_lookup_string(i32* %65, i32 %66, i8** %17)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @verify(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_TIMESTAMP, align 4
  %73 = call i64 @nvlist_lookup_uint64(i32* %71, i32 %72, i64* %18)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @verify(i32 %75)
  %77 = load i64, i64* %18, align 8
  store i64 %77, i64* %19, align 8
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @gettext(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @localtime(i64* %19)
  %84 = call i32 @asctime(i32 %83)
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79, i8* %80, i8* %81, i64 %82, i32 %84)
  %86 = load i32, i32* @stderr, align 4
  %87 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* %87)
  store i32 1, i32* %6, align 4
  br label %141

89:                                               ; preds = %60
  br label %98

90:                                               ; preds = %55
  %91 = load i32, i32* @stderr, align 4
  %92 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* %92, i8* %93)
  %95 = load i32, i32* @stderr, align 4
  %96 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* %96)
  store i32 1, i32* %6, align 4
  br label %141

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %50, %46
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* @g_zfs, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i64 @zpool_import_props(i32 %101, i32* %102, i8* %103, i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 1, i32* %6, align 4
  br label %141

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i8*, i8** %8, align 8
  store i8* %113, i8** %13, align 8
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* @g_zfs, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = call i32* @zpool_open_canfail(i32 %115, i8* %116)
  store i32* %117, i32** %12, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %6, align 4
  br label %141

120:                                              ; preds = %114
  %121 = load i32*, i32** %12, align 8
  %122 = call i64 @zpool_get_state(i32* %121)
  %123 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @ZFS_IMPORT_ONLY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %12, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i64 @zpool_enable_datasets(i32* %131, i8* %132, i32 0)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @zpool_close(i32* %136)
  store i32 1, i32* %6, align 4
  br label %141

138:                                              ; preds = %130, %125, %120
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @zpool_close(i32* %139)
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %135, %119, %108, %90, %64, %41
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @gethostid(...) #1

declare dso_local i32 @asctime(i32) #1

declare dso_local i32 @localtime(i64*) #1

declare dso_local i64 @zpool_import_props(i32, i32*, i8*, i32*, i32) #1

declare dso_local i32* @zpool_open_canfail(i32, i8*) #1

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i64 @zpool_enable_datasets(i32*, i8*, i32) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
