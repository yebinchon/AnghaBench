; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"o:p\00", align 1
@optarg = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"missing source dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"missing target dataset argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"clone successfully created, but not mounted\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"clone successfully created, but not shared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_clone(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %14 = call i64 @nvlist_alloc(i32** %8, i32 %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @nomem()
  br label %18

18:                                               ; preds = %16, %2
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %40 [
    i32 111, label %26
    i32 112, label %33
    i32 63, label %35
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @optarg, align 4
  %29 = call i32 @parseprop(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %176

32:                                               ; preds = %26
  br label %40

33:                                               ; preds = %24
  %34 = load i64, i64* @B_TRUE, align 8
  store i64 %34, i64* %7, align 8
  br label %40

35:                                               ; preds = %24
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @optopt, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* %37, i32 %38)
  br label %165

40:                                               ; preds = %24, %33, %32
  br label %19

41:                                               ; preds = %19
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
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @stderr, align 4
  %54 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* %54)
  br label %165

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* %61)
  br label %165

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* @stderr, align 4
  %68 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* %68)
  br label %165

70:                                               ; preds = %63
  %71 = load i32, i32* @g_zfs, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %76 = call i32* @zfs_open(i32 %71, i8* %74, i32 %75)
  store i32* %76, i32** %6, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %176

79:                                               ; preds = %70
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %79
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %87 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %88 = or i32 %86, %87
  %89 = call i64 @zfs_name_valid(i8* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %82
  %92 = load i32, i32* @g_zfs, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %97 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @zfs_dataset_exists(i32 %92, i8* %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %176

102:                                              ; preds = %91
  %103 = load i32, i32* @g_zfs, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @zfs_create_ancestors(i32 %103, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %176

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %82, %79
  %112 = load i32*, i32** %6, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @zfs_clone(i32* %112, i8* %115, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %155

120:                                              ; preds = %111
  %121 = load i32, i32* @g_zfs, align 4
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %126 = call i32* @zfs_open(i32 %121, i8* %124, i32 %125)
  store i32* %126, i32** %11, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %154

129:                                              ; preds = %120
  %130 = load i32*, i32** %11, align 8
  %131 = call i64 @should_auto_mount(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @zfs_mount(i32* %134, i32* null, i32 0)
  store i32 %135, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* @stderr, align 4
  %139 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* %139)
  br label %150

141:                                              ; preds = %133
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @zfs_share(i32* %142)
  store i32 %143, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @stderr, align 4
  %147 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* %147)
  br label %149

149:                                              ; preds = %145, %141
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %129
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @zfs_close(i32* %152)
  br label %154

154:                                              ; preds = %151, %120
  br label %155

155:                                              ; preds = %154, %111
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @zfs_close(i32* %156)
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @nvlist_free(i32* %158)
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %3, align 4
  br label %176

165:                                              ; preds = %66, %59, %52, %35
  %166 = load i32*, i32** %6, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @zfs_close(i32* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @nvlist_free(i32* %172)
  %174 = load i64, i64* @B_FALSE, align 8
  %175 = call i32 @usage(i64 %174)
  store i32 -1, i32* %3, align 4
  br label %176

176:                                              ; preds = %171, %155, %109, %101, %78, %31
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parseprop(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_name_valid(i8*, i32) #1

declare dso_local i64 @zfs_dataset_exists(i32, i8*, i32) #1

declare dso_local i64 @zfs_create_ancestors(i32, i8*) #1

declare dso_local i32 @zfs_clone(i32*, i8*, i32*) #1

declare dso_local i64 @should_auto_mount(i32*) #1

declare dso_local i32 @zfs_mount(i32*, i32*, i32) #1

declare dso_local i32 @zfs_share(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @usage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
