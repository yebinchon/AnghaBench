; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_bookmark.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"missing snapshot argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"missing bookmark argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"invalid bookmark name '%s' -- must contain a '#'\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot create bookmark '%s'\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"bookmark is in a different pool\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"bookmark exists\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"bookmark feature not enabled\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_bookmark(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %31, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %31 [
    i32 63, label %26
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @stderr, align 4
  %28 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @optopt, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* %28, i32 %29)
  br label %141

31:                                               ; preds = %24
  br label %19

32:                                               ; preds = %19
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45)
  br label %141

47:                                               ; preds = %32
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* %52)
  br label %141

54:                                               ; preds = %47
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 35)
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* %62, i8* %65)
  br label %141

67:                                               ; preds = %54
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 64
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = trunc i64 %16 to i32
  %80 = call i32 @strncpy(i8* %18, i8* %78, i32 %79)
  %81 = call i8* @strchr(i8* %18, i8 signext 35)
  store i8 0, i8* %81, align 1
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = trunc i64 %16 to i32
  %86 = call i32 @strlcat(i8* %18, i8* %84, i32 %85)
  br label %93

87:                                               ; preds = %67
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = trunc i64 %16 to i32
  %92 = call i32 @strncpy(i8* %18, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %75
  %94 = load i32, i32* @g_zfs, align 4
  %95 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %96 = call i32* @zfs_open(i32 %94, i8* %18, i32 %95)
  store i32* %96, i32** %8, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %141

100:                                              ; preds = %93
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @zfs_close(i32* %101)
  %103 = call i32* (...) @fnvlist_alloc()
  store i32* %103, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @fnvlist_add_string(i32* %104, i8* %107, i8* %18)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @lzc_bookmark(i32* %109, i32* null)
  store i32 %110, i32* %10, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @fnvlist_free(i32* %111)
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %100
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* @TEXT_DOMAIN, align 4
  %118 = call i8* @dgettext(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @snprintf(i8* %116, i32 1024, i8* %118, i8* %121)
  %123 = load i32, i32* %10, align 4
  switch i32 %123, label %129 [
    i32 128, label %124
    i32 132, label %125
    i32 131, label %126
    i32 129, label %127
    i32 130, label %128
  ]

124:                                              ; preds = %115
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %130

125:                                              ; preds = %115
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %130

126:                                              ; preds = %115
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %130

127:                                              ; preds = %115
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %130

128:                                              ; preds = %115
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %130

129:                                              ; preds = %115
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %130

130:                                              ; preds = %129, %128, %127, %126, %125, %124
  %131 = load i32, i32* @stderr, align 4
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %133 = load i32, i32* @TEXT_DOMAIN, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = call i8* @dgettext(i32 %133, i8* %134)
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* %132, i8* %135)
  br label %137

137:                                              ; preds = %130, %100
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

141:                                              ; preds = %99, %60, %50, %43, %26
  %142 = load i32, i32* @B_FALSE, align 4
  %143 = call i32 @usage(i32 %142)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @lzc_bookmark(i32*, i32*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @usage(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
