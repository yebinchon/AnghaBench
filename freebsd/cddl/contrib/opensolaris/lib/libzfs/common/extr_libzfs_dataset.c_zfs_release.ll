; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.holdarg = type { i8*, i8*, i32, i32*, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot release hold from snapshot '%s@%s'\00", align 1
@EZFS_REFTAG_RELE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot release\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot release hold from snapshot '%s'\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_release(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.holdarg, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [1024 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = call i32* (...) @fnvlist_alloc()
  %20 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 3
  store i32* %19, i32** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i32 @zfs_handle_dup(%struct.TYPE_4__* %28)
  %30 = call i32 @zfs_release_one(i32 %29, %struct.holdarg* %11)
  %31 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @nvlist_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @fnvlist_free(i32* %37)
  %39 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %41, i32 1024, i8* %43, i32 %46, i8* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 128
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @EZFS_REFTAG_RELE, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %55 = call i32 @zfs_error(i32* %52, i32 %53, i8* %54)
  br label %61

56:                                               ; preds = %35
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %60 = call i32 @zfs_standard_error(i32* %57, i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %140

63:                                               ; preds = %4
  %64 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @lzc_release(i32* %65, i32** %12)
  store i32 %66, i32* %10, align 4
  %67 = getelementptr inbounds %struct.holdarg, %struct.holdarg* %11, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @fnvlist_free(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @fnvlist_free(i32* %73)
  store i32 0, i32* %5, align 4
  br label %140

75:                                               ; preds = %63
  %76 = load i32*, i32** %12, align 8
  %77 = call i64 @nvlist_empty(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i8* @dgettext(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 1024, i8* %82)
  %84 = load i32, i32* @errno, align 4
  switch i32 %84, label %94 [
    i32 129, label %85
  ]

85:                                               ; preds = %79
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* @TEXT_DOMAIN, align 4
  %88 = call i8* @dgettext(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @zfs_error_aux(i32* %86, i8* %88)
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* @EZFS_BADVERSION, align 4
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %93 = call i32 @zfs_error(i32* %90, i32 %91, i8* %92)
  br label %99

94:                                               ; preds = %79
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* @errno, align 4
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %98 = call i32 @zfs_standard_error_fmt(i32* %95, i32 %96, i8* %97)
  br label %99

99:                                               ; preds = %94, %85
  br label %100

100:                                              ; preds = %99, %75
  %101 = load i32*, i32** %12, align 8
  %102 = call i32* @nvlist_next_nvpair(i32* %101, i32* null)
  store i32* %102, i32** %13, align 8
  br label %103

103:                                              ; preds = %132, %100
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %136

106:                                              ; preds = %103
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %108 = load i32, i32* @TEXT_DOMAIN, align 4
  %109 = call i8* @dgettext(i32 %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @nvpair_name(i32* %110)
  %112 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %107, i32 1024, i8* %109, i32 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @fnvpair_value_int32(i32* %113)
  switch i32 %114, label %125 [
    i32 128, label %115
    i32 130, label %120
  ]

115:                                              ; preds = %106
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* @EZFS_REFTAG_RELE, align 4
  %118 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %119 = call i32 @zfs_error(i32* %116, i32 %117, i8* %118)
  br label %131

120:                                              ; preds = %106
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* @EZFS_BADTYPE, align 4
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %124 = call i32 @zfs_error(i32* %121, i32 %122, i8* %123)
  br label %131

125:                                              ; preds = %106
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 @fnvpair_value_int32(i32* %127)
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %130 = call i32 @zfs_standard_error_fmt(i32* %126, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %125, %120, %115
  br label %132

132:                                              ; preds = %131
  %133 = load i32*, i32** %12, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32* @nvlist_next_nvpair(i32* %133, i32* %134)
  store i32* %135, i32** %13, align 8
  br label %103

136:                                              ; preds = %103
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @fnvlist_free(i32* %137)
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %72, %61
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @zfs_release_one(i32, %struct.holdarg*) #1

declare dso_local i32 @zfs_handle_dup(%struct.TYPE_4__*) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

declare dso_local i32 @lzc_release(i32*, i32**) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_standard_error_fmt(i32*, i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @fnvpair_value_int32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
