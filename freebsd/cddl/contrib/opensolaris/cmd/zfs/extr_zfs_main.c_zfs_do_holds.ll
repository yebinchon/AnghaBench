; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_holds.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_holds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32**, i64, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"d:rHp\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_ITER_RECURSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@holds_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no datasets available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_holds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_holds(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %21 = load i64, i64* @B_FALSE, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @B_FALSE, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* @B_FALSE, align 8
  store i64 %23, i64* %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %24 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  store i32 %24, i32* %13, align 4
  %25 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %51, %2
  %27 = load i32, i32* %3, align 4
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @getopt(i32 %27, i8** %28, i8* %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %51 [
    i32 100, label %34
    i32 114, label %38
    i32 72, label %40
    i32 112, label %42
    i32 63, label %44
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @optarg, align 4
  %36 = call i32 @parse_depth(i32 %35, i32* %17)
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* @B_TRUE, align 8
  store i64 %37, i64* %10, align 8
  br label %51

38:                                               ; preds = %32
  %39 = load i64, i64* @B_TRUE, align 8
  store i64 %39, i64* %10, align 8
  br label %51

40:                                               ; preds = %32
  %41 = load i64, i64* @B_TRUE, align 8
  store i64 %41, i64* %8, align 8
  br label %51

42:                                               ; preds = %32
  %43 = load i64, i64* @B_TRUE, align 8
  store i64 %43, i64* %9, align 8
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @optopt, align 4
  %48 = call i32 @fprintf(i32 %45, i8* %46, i32 %47)
  %49 = load i64, i64* @B_FALSE, align 8
  %50 = call i32 @usage(i64 %49)
  br label %51

51:                                               ; preds = %44, %32, %42, %40, %38, %34
  br label %26

52:                                               ; preds = %26
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %57 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %62 = load i32, i32* %17, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i64, i64* @optind, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  %70 = load i64, i64* @optind, align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8** %72, i8*** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i64, i64* @B_FALSE, align 8
  %77 = call i32 @usage(i64 %76)
  br label %78

78:                                               ; preds = %75, %64
  %79 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %80 = call i64 @nvlist_alloc(i32** %12, i32 %79, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (...) @nomem()
  br label %84

84:                                               ; preds = %82, %78
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %132, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = load i8**, i8*** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %18, align 8
  store i8* null, i8** %20, align 8
  %95 = load i8*, i8** %18, align 8
  %96 = call i8* @strchr(i8* %95, i8 signext 64)
  store i8* %96, i8** %19, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %89
  %100 = load i8*, i8** %19, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %20, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i8*, i8** %18, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %104, %99
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i64, i64* %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i64 %114, i64* %115, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32** %12, i32*** %118, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i8**, i8*** %4, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @holds_callback, align 4
  %125 = call i32 @zfs_for_each(i32 %119, i8** %120, i32 %121, i32 %122, i32* null, i32* null, i32 %123, i32 %124, %struct.TYPE_3__* %14)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %113
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %113
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %85

135:                                              ; preds = %85
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @print_holds(i64 %136, i64 %137, i32 %139, i32 %141, i32* %142)
  %144 = load i32*, i32** %12, align 8
  %145 = call i64 @nvlist_empty(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 @printf(i8* %148)
  br label %150

150:                                              ; preds = %147, %135
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 @nvlist_free(i32* %151)
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 0, %153
  %155 = zext i1 %154 to i32
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @parse_depth(i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @nomem(...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @print_holds(i64, i64, i32, i32, i32*) #2

declare dso_local i64 @nvlist_empty(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
