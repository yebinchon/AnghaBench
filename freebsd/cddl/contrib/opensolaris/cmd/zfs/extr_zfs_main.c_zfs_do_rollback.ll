; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_rollback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i64, i32, i8*, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rRf\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"missing dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@rollback_check = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_rollback(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i8*, i8** @B_FALSE, align 8
  store i8* %17, i8** %8, align 8
  %18 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 48, i1 false)
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %44, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %44 [
    i32 114, label %30
    i32 82, label %32
    i32 102, label %35
    i32 63, label %37
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %44

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load i8*, i8** @B_TRUE, align 8
  store i8* %36, i8** %8, align 8
  br label %44

37:                                               ; preds = %28
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @optopt, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* %39, i32 %40)
  %42 = load i8*, i8** @B_FALSE, align 8
  %43 = call i32 @usage(i8* %42)
  br label %44

44:                                               ; preds = %37, %28, %35, %32, %30
  br label %23

45:                                               ; preds = %23
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @optind, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load i32, i32* @stderr, align 4
  %58 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* %58)
  %60 = load i8*, i8** @B_FALSE, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %56, %45
  %63 = load i32, i32* %4, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* %67)
  %69 = load i8*, i8** @B_FALSE, align 8
  %70 = call i32 @usage(i8* %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* @g_zfs, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %77 = call i32* @zfs_open(i32 %72, i8* %75, i32 %76)
  store i32* %77, i32** %11, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %149

80:                                               ; preds = %71
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = trunc i64 %20 to i32
  %85 = call i32 @strlcpy(i8* %22, i8* %83, i32 %84)
  %86 = call i8* @strrchr(i8* %22, i8 signext 64)
  store i8* %86, i8** %14, align 8
  %87 = icmp ne i8* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @verify(i32 %88)
  %90 = load i8*, i8** %14, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* @g_zfs, align 4
  %92 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %93 = call i32* @zfs_open(i32 %91, i8* %22, i32 %92)
  store i32* %93, i32** %10, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %80
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @zfs_close(i32* %96)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %149

98:                                               ; preds = %80
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %105 = call i64 @zfs_prop_get_int(i32* %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i64 %105, i64* %106, align 8
  %107 = load i8*, i8** @B_TRUE, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 0, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %15, align 8
  br label %116

116:                                              ; preds = %113, %98
  %117 = load i32*, i32** %10, align 8
  %118 = load i8*, i8** @B_FALSE, align 8
  %119 = load i32, i32* @rollback_check, align 4
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @zfs_iter_snapshots(i32* %117, i8* %118, i32 %119, %struct.TYPE_4__* %9, i64 %120, i32 0)
  store i32 %121, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %140

124:                                              ; preds = %116
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @rollback_check, align 4
  %127 = call i32 @zfs_iter_bookmarks(i32* %125, i32 %126, %struct.TYPE_4__* %9)
  store i32 %127, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %140

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %140

135:                                              ; preds = %130
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @zfs_rollback(i32* %136, i32* %137, i8* %138)
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %135, %134, %129, %123
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @zfs_close(i32* %141)
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @zfs_close(i32* %143)
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %149

148:                                              ; preds = %140
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %149

149:                                              ; preds = %148, %147, %95, %79
  %150 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i8* @gettext(i8*) #3

declare dso_local i32 @usage(i8*) #3

declare dso_local i32* @zfs_open(i32, i8*, i32) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32 @verify(i32) #3

declare dso_local i8* @strrchr(i8*, i8 signext) #3

declare dso_local i32 @zfs_close(i32*) #3

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #3

declare dso_local i32 @zfs_iter_snapshots(i32*, i8*, i32, %struct.TYPE_4__*, i64, i32) #3

declare dso_local i32 @zfs_iter_bookmarks(i32*, i32, %struct.TYPE_4__*) #3

declare dso_local i32 @zfs_rollback(i32*, i32*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
