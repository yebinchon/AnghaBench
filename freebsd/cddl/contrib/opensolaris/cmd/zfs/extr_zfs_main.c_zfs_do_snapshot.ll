; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i8*, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ro:\00", align 1
@optarg = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"missing snapshot argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"no snapshots were created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_snapshot(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %16 = call i64 @nvlist_alloc(i32** %8, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @nomem()
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %22 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %23 = call i64 @nvlist_alloc(i32** %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @nomem()
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %51 [
    i32 111, label %35
    i32 114, label %42
    i32 63, label %46
  ]

35:                                               ; preds = %33
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @parseprop(i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %143

41:                                               ; preds = %35
  br label %51

42:                                               ; preds = %33
  %43 = load i8*, i8** @B_TRUE, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @B_TRUE, align 8
  store i8* %45, i8** %10, align 8
  br label %51

46:                                               ; preds = %33
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @optopt, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48, i32 %49)
  br label %135

51:                                               ; preds = %33, %42, %41
  br label %28

52:                                               ; preds = %28
  %53 = load i64, i64* @optind, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  %58 = load i64, i64* @optind, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58
  store i8** %60, i8*** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @stderr, align 4
  %65 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* %65)
  br label %135

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8*, i8** @B_TRUE, align 8
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %106, %72
  %74 = load i32, i32* %4, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %73
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 64)
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %135

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @g_zfs, align 4
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %94 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %95 = or i32 %93, %94
  %96 = call i32* @zfs_open(i32 %89, i8* %92, i32 %95)
  store i32* %96, i32** %12, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %135

100:                                              ; preds = %84
  %101 = load i32*, i32** %12, align 8
  %102 = call i64 @zfs_snapshot_cb(i32* %101, %struct.TYPE_3__* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %135

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %4, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %5, align 8
  br label %73

111:                                              ; preds = %73
  %112 = load i32, i32* @g_zfs, align 4
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @zfs_snapshot_nvl(i32 %112, i32* %114, i32* %115)
  store i32 %116, i32* %6, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @nvlist_free(i32* %118)
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @nvlist_free(i32* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %127, %124, %111
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %3, align 4
  br label %143

135:                                              ; preds = %104, %99, %83, %63, %46
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @nvlist_free(i32* %137)
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @nvlist_free(i32* %139)
  %141 = load i8*, i8** @B_FALSE, align 8
  %142 = call i32 @usage(i8* %141)
  store i32 -1, i32* %3, align 4
  br label %143

143:                                              ; preds = %135, %131, %40
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @nomem(...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @parseprop(i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @zfs_snapshot_cb(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @zfs_snapshot_nvl(i32, i32*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @usage(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
