; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zcp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zcp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [138 x i8] c"args = ...\0Ads = args['dataset']\0Aprop = args['property']\0Avalue, setpoint = zfs.get_prop(ds, prop)\0Areturn {value=value, setpoint=setpoint}\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dataset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@PROP_TYPE_NUMBER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"zcp check error: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: zfs found %lld, but zcp found %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: zfs found %s, but zcp found %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"zcp check failed, channel program error: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcp_check(%struct.TYPE_7__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %108

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  store i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %30 = call i32* (...) @fnvlist_alloc()
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fnvlist_add_string(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @zfs_prop_to_name(i32 %37)
  %39 = call i32 @fnvlist_add_string(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @lzc_channel_program_nosync(i8* %40, i8* %41, i32 10000000, i32 10485760, i32* %42, i32** %12)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %24
  %47 = load i32*, i32** %12, align 8
  %48 = call i32* @fnvlist_lookup_nvlist(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %48, i32** %13, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @zfs_prop_get_type(i32 %49)
  %51 = load i64, i64* @PROP_TYPE_NUMBER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %46
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @nvlist_lookup_int64(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %15)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  br label %108

62:                                               ; preds = %53
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @zfs_prop_to_name(i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i64, i64* %15, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %69, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %66, %62
  br label %98

76:                                               ; preds = %46
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @nvlist_lookup_string(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %16)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @stderr, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %108

85:                                               ; preds = %76
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @zfs_prop_to_name(i32 %92)
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %93, i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %90, %85
  br label %98

98:                                               ; preds = %97, %75
  br label %103

99:                                               ; preds = %24
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %98
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @nvlist_free(i32* %104)
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @nvlist_free(i32* %106)
  br label %108

108:                                              ; preds = %103, %81, %58, %23
  ret void
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32 @lzc_channel_program_nosync(i8*, i8*, i32, i32, i32*, i32**) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i64 @zfs_prop_get_type(i32) #1

declare dso_local i32 @nvlist_lookup_int64(i32*, i8*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
