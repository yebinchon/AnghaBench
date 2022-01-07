; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot initialize '%s'\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@EZFS_ISSPARE = common dso_local global i32 0, align 4
@EZFS_ISL2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ZPOOL_INITIALIZE_VDEVS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"operation failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_initialize(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = call i32* (...) @fnvlist_alloc()
  store i32* %27, i32** %11, align 8
  %28 = call i32* (...) @fnvlist_alloc()
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @nvlist_next_nvpair(i32* %29, i32* null)
  store i32* %30, i32** %16, align 8
  br label %31

31:                                               ; preds = %92, %3
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load i32*, i32** %16, align 8
  %36 = call i8* @nvpair_name(i32* %35)
  store i8* %36, i8** %17, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = call i32* @zpool_find_vdev(%struct.TYPE_4__* %37, i8* %38, i32* %13, i32* %14, i32* null)
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45, %42, %34
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 1024, i8* %51, i8* %52)
  %54 = load i32*, i32** %15, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @EZFS_NODEVICE, align 4
  br label %67

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EZFS_ISSPARE, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @EZFS_ISL2CACHE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi i32 [ %57, %56 ], [ %66, %65 ]
  store i32 %68, i32* %18, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @fnvlist_free(i32* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @fnvlist_free(i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %18, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %76 = call i32 @zfs_error(i32* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %154

77:                                               ; preds = %45
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %80 = call i32 @fnvlist_lookup_uint64(i32* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @fnvlist_add_uint64(i32* %81, i8* %82, i32 %83)
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %86 = load i32, i32* %19, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @fnvlist_add_string(i32* %88, i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %77
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32* @nvlist_next_nvpair(i32* %93, i32* %94)
  store i32* %95, i32** %16, align 8
  br label %31

96:                                               ; preds = %31
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @lzc_initialize(i32 %99, i32 %100, i32* %101, i32** %10)
  store i32 %102, i32* %20, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @fnvlist_free(i32* %103)
  %105 = load i32, i32* %20, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @fnvlist_free(i32* %108)
  store i32 0, i32* %4, align 4
  br label %154

110:                                              ; preds = %96
  store i32* null, i32** %21, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %116 = call i32* @fnvlist_lookup_nvlist(i32* %114, i32 %115)
  store i32* %116, i32** %21, align 8
  br label %117

117:                                              ; preds = %113, %110
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %119 = load i32, i32* @TEXT_DOMAIN, align 4
  %120 = call i8* @dgettext(i32 %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %118, i32 1024, i8* %120)
  %122 = load i32*, i32** %21, align 8
  %123 = call i32* @nvlist_next_nvpair(i32* %122, i32* null)
  store i32* %123, i32** %16, align 8
  br label %124

124:                                              ; preds = %139, %117
  %125 = load i32*, i32** %16, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %124
  %128 = load i32*, i32** %16, align 8
  %129 = call i32 @fnvpair_value_int64(i32* %128)
  %130 = call i32 @xlate_init_err(i32 %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = call i8* @nvpair_name(i32* %132)
  %134 = call i8* @fnvlist_lookup_string(i32* %131, i8* %133)
  store i8* %134, i8** %23, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i8*, i8** %23, align 8
  %138 = call i32 @zfs_error_fmt(i32* %135, i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %127
  %140 = load i32*, i32** %21, align 8
  %141 = load i32*, i32** %16, align 8
  %142 = call i32* @nvlist_next_nvpair(i32* %140, i32* %141)
  store i32* %142, i32** %16, align 8
  br label %124

143:                                              ; preds = %124
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @fnvlist_free(i32* %144)
  %146 = load i32*, i32** %21, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 -1, i32* %4, align 4
  br label %154

149:                                              ; preds = %143
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %20, align 4
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %153 = call i32 @zpool_standard_error(i32* %150, i32 %151, i8* %152)
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %149, %148, %107, %67
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_4__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @lzc_initialize(i32, i32, i32*, i32**) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @xlate_init_err(i32) #1

declare dso_local i32 @fnvpair_value_int64(i32*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i8*) #1

declare dso_local i32 @zfs_error_fmt(i32*, i32, i8*, i8*) #1

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
