; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"FHt\00", align 1
@ZFS_DIFF_CLASSIFY = common dso_local global i32 0, align 4
@ZFS_DIFF_PARSEABLE = common dso_local global i32 0, align 4
@ZFS_DIFF_TIMESTAMP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"must provide at least one snapshot name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_diff(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %13, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %33 [
    i32 70, label %21
    i32 72, label %25
    i32 116, label %29
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @ZFS_DIFF_CLASSIFY, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %40

25:                                               ; preds = %19
  %26 = load i32, i32* @ZFS_DIFF_PARSEABLE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load i32, i32* @ZFS_DIFF_TIMESTAMP, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %40

33:                                               ; preds = %19
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @optopt, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35, i32 %36)
  %38 = load i32, i32* @B_FALSE, align 4
  %39 = call i32 @usage(i32 %38)
  br label %40

40:                                               ; preds = %33, %29, %25, %21
  br label %14

41:                                               ; preds = %14
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* %54)
  %56 = load i32, i32* @B_FALSE, align 4
  %57 = call i32 @usage(i32 %56)
  br label %58

58:                                               ; preds = %52, %41
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @stderr, align 4
  %63 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* %63)
  %65 = load i32, i32* @B_FALSE, align 4
  %66 = call i32 @usage(i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %9, align 8
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  br label %78

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i8* [ %76, %73 ], [ null, %77 ]
  store i8* %79, i8** %8, align 8
  store i8* null, i8** %11, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 64
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @strdup(i8* %85)
  store i8* %86, i8** %11, align 8
  br label %94

87:                                               ; preds = %78
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = call i8* @strdup(i8* %91)
  store i8* %92, i8** %11, align 8
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i8*, i8** %11, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @B_FALSE, align 4
  %99 = call i32 @usage(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i8*, i8** %11, align 8
  %102 = call i8* @strchr(i8* %101, i8 signext 64)
  store i8* %102, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** %10, align 8
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i32, i32* @g_zfs, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %110 = call i32* @zfs_open(i32 %107, i8* %108, i32 %109)
  store i32* %110, i32** %6, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %129

113:                                              ; preds = %106
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i32, i32* @SIGPIPE, align 4
  %117 = call i32 @sigignore(i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @STDOUT_FILENO, align 4
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @zfs_show_diffs(i32* %118, i32 %119, i8* %120, i8* %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @zfs_close(i32* %124)
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %113, %112
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sigignore(i32) #1

declare dso_local i32 @zfs_show_diffs(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
