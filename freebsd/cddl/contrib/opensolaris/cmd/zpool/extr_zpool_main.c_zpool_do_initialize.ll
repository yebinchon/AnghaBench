; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@POOL_INITIALIZE_DO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"-c cannot be combined with other options\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@POOL_INITIALIZE_CANCEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"-s cannot be combined with other options\0A\00", align 1
@POOL_INITIALIZE_SUSPEND = common dso_local global i32 0, align 4
@optopt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid option '%s'\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_initialize(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x %struct.option], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %16 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %11, i64 0, i64 0
  %17 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 1
  %19 = load i32, i32* @no_argument, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %18, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 2
  store i32* null, i32** %21, align 16
  %22 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 3
  store i32 99, i32* %22, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %24 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 1
  %26 = load i32, i32* @no_argument, align 4
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 2
  store i32* null, i32** %28, align 16
  %29 = getelementptr inbounds %struct.option, %struct.option* %23, i32 0, i32 3
  store i32 115, i32* %29, align 8
  %30 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %31 = bitcast %struct.option* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 32, i1 false)
  %32 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 1
  store i8 0, i8* %32, align 8
  %33 = load i32, i32* @POOL_INITIALIZE_DO, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %86, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %11, i64 0, i64 0
  %38 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.option* %37, i32* null)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %87

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %86 [
    i32 99, label %42
    i32 115, label %54
    i32 63, label %66
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @POOL_INITIALIZE_DO, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48)
  %50 = load i32, i32* @B_FALSE, align 4
  %51 = call i32 @usage(i32 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* @POOL_INITIALIZE_CANCEL, align 4
  store i32 %53, i32* %12, align 4
  br label %86

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @POOL_INITIALIZE_DO, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* %60)
  %62 = load i32, i32* @B_FALSE, align 4
  %63 = call i32 @usage(i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* @POOL_INITIALIZE_SUSPEND, align 4
  store i32 %65, i32* %12, align 4
  br label %86

66:                                               ; preds = %40
  %67 = load i32, i32* @optopt, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @optopt, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* %71, i32 %72)
  br label %83

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i8**, i8*** %5, align 8
  %78 = load i64, i64* @optind, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76, i8* %81)
  br label %83

83:                                               ; preds = %74, %69
  %84 = load i32, i32* @B_FALSE, align 4
  %85 = call i32 @usage(i32 %84)
  br label %86

86:                                               ; preds = %83, %40, %64, %52
  br label %34

87:                                               ; preds = %34
  %88 = load i64, i64* @optind, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  %93 = load i64, i64* @optind, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 %93
  store i8** %95, i8*** %5, align 8
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %87
  %99 = load i32, i32* @stderr, align 4
  %100 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* %100)
  %102 = load i32, i32* @B_FALSE, align 4
  %103 = call i32 @usage(i32 %102)
  store i32 -1, i32* %3, align 4
  br label %155

104:                                              ; preds = %87
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %7, align 8
  %108 = load i32, i32* @g_zfs, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = call i32* @zpool_open(i32 %108, i8* %109)
  store i32* %110, i32** %8, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %155

114:                                              ; preds = %104
  %115 = call i32* (...) @fnvlist_alloc()
  store i32* %115, i32** %9, align 8
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i32*, i32** %8, align 8
  %120 = call i32* @zpool_get_config(i32* %119, i32* null)
  store i32* %120, i32** %13, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %123 = call i32* @fnvlist_lookup_nvlist(i32* %121, i32 %122)
  store i32* %123, i32** %14, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @zpool_collect_leaves(i32* %124, i32* %125, i32* %126)
  br label %145

128:                                              ; preds = %114
  store i32 1, i32* %15, align 4
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load i32*, i32** %9, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @fnvlist_add_boolean(i32* %134, i8* %139)
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %129

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144, %118
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @zpool_initialize(i32* %146, i32 %147, i32* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @fnvlist_free(i32* %150)
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @zpool_close(i32* %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %145, %113, %98
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32* @zpool_open(i32, i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #2

declare dso_local i32 @zpool_collect_leaves(i32*, i32*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @zpool_initialize(i32*, i32, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
