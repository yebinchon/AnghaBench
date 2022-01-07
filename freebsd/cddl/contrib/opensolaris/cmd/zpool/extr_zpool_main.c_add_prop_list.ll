; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_add_prop_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_add_prop_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPROP_INVAL = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"internal error: out of memory\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"property '%s' is not a valid pool property\0A\00", align 1
@ZPOOL_PROP_INVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"'feature@' and 'version' properties cannot be specified together\0A\00", align 1
@ZPOOL_PROP_CACHEFILE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"property '%s' specified multiple times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32**, i64)* @add_prop_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_prop_list(i8* %0, i8* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* @ZPROP_INVAL, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i32**, i32*** %8, align 8
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = call i64 @nvlist_alloc(i32** %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* %27)
  store i32 1, i32* %5, align 4
  br label %121

29:                                               ; preds = %20, %4
  %30 = load i32**, i32*** %8, align 8
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %29
  %35 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %36 = call i8* @zpool_prop_to_name(i64 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @zpool_name_to_prop(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* @ZPROP_INVAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @zpool_prop_feature(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* %47, i8* %48)
  store i32 2, i32* %5, align 4
  br label %121

50:                                               ; preds = %41, %34
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @ZPOOL_PROP_INVAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @zpool_prop_feature(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = call i64 @nvlist_exists(i32* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58, %54, %50
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ZPOOL_PROP_VERSION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** %12, align 8
  %69 = call i64 @prop_list_contains_feature(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %58
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %73)
  store i32 2, i32* %5, align 4
  br label %121

75:                                               ; preds = %67, %63
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @zpool_prop_feature(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %13, align 8
  br label %84

81:                                               ; preds = %75
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @zpool_prop_to_name(i64 %82)
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %81, %79
  br label %96

85:                                               ; preds = %29
  %86 = load i8*, i8** %6, align 8
  %87 = call i64 @zfs_name_to_prop(i8* %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* @ZPROP_INVAL, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, i64* %11, align 8
  %92 = call i8* @zfs_prop_to_name(i64 %91)
  store i8* %92, i8** %13, align 8
  br label %95

93:                                               ; preds = %85
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %13, align 8
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32*, i32** %12, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i64 @nvlist_lookup_string(i32* %97, i8* %98, i8** %14)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @ZPOOL_PROP_CACHEFILE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @stderr, align 4
  %107 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* %107, i8* %108)
  store i32 2, i32* %5, align 4
  br label %121

110:                                              ; preds = %101, %96
  %111 = load i32*, i32** %12, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @nvlist_add_string(i32* %111, i8* %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @stderr, align 4
  %118 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* %118)
  store i32 1, i32* %5, align 4
  br label %121

120:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %116, %105, %71, %45, %25
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_prop_to_name(i64) #1

declare dso_local i64 @zpool_name_to_prop(i8*) #1

declare dso_local i64 @zpool_prop_feature(i8*) #1

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i64 @prop_list_contains_feature(i32*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i8* @zfs_prop_to_name(i64) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
