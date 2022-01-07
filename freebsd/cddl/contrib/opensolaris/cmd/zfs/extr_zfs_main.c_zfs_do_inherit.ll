; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_inherit.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rS\00", align 1
@ZFS_ITER_RECURSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"missing property argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"missing dataset argument\0A\00", align 1
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s property is read-only\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"'%s' property cannot be inherited\0A\00", align 1
@ZFS_PROP_QUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_RESERVATION = common dso_local global i64 0, align 8
@ZFS_PROP_REFQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_REFRESERVATION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"use 'zfs set %s=none' to clear\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"use 'zfs inherit -S %s' to revert to received value\0A\00", align 1
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_VERSION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"'%s' property cannot be reverted to a received value\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"invalid property '%s'\0A\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@inherit_recurse_cb = common dso_local global i32 0, align 4
@inherit_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_inherit(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %29 [
    i32 114, label %22
    i32 83, label %26
    i32 63, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load i64, i64* @B_TRUE, align 8
  store i64 %27, i64* %12, align 8
  br label %36

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %20, %28
  %30 = load i32, i32* @stderr, align 4
  %31 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @optopt, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* %31, i32 %32)
  %34 = load i64, i64* @B_FALSE, align 8
  %35 = call i32 @usage(i64 %34)
  br label %36

36:                                               ; preds = %29, %26, %22
  br label %15

37:                                               ; preds = %15
  %38 = load i64, i64* @optind, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load i64, i64* @optind, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 %43
  store i8** %45, i8*** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50)
  %52 = load i64, i64* @B_FALSE, align 8
  %53 = call i32 @usage(i64 %52)
  br label %54

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* %59)
  %61 = load i64, i64* @B_FALSE, align 8
  %62 = call i32 @usage(i64 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %5, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i64 @zfs_name_to_prop(i8* %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* @ZPROP_INVAL, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %138

75:                                               ; preds = %63
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @zfs_prop_readonly(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* %81, i8* %82)
  store i32 1, i32* %3, align 4
  br label %175

84:                                               ; preds = %75
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @zfs_prop_inheritable(i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %121, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* %93, i8* %94)
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @ZFS_PROP_QUOTA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %91
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @ZFS_PROP_RESERVATION, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @ZFS_PROP_REFQUOTA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* @ZFS_PROP_REFRESERVATION, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107, %103, %99, %91
  %112 = load i32, i32* @stderr, align 4
  %113 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* %113, i8* %114)
  %116 = load i32, i32* @stderr, align 4
  %117 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %111, %107
  store i32 1, i32* %3, align 4
  br label %175

121:                                              ; preds = %88, %84
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @ZFS_PROP_VERSION, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @stderr, align 4
  %134 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* %134, i8* %135)
  store i32 1, i32* %3, align 4
  br label %175

137:                                              ; preds = %128, %121
  br label %150

138:                                              ; preds = %63
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @zfs_prop_user(i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @stderr, align 4
  %144 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* %144, i8* %145)
  %147 = load i64, i64* @B_FALSE, align 8
  %148 = call i32 @usage(i64 %147)
  br label %149

149:                                              ; preds = %142, %138
  br label %150

150:                                              ; preds = %149, %137
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %151, i8** %152, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 %153, i64* %154, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %150
  %160 = load i32, i32* %4, align 4
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %164 = load i32, i32* @inherit_recurse_cb, align 4
  %165 = call i32 @zfs_for_each(i32 %160, i8** %161, i32 %162, i32 %163, i32* null, i32* null, i32 0, i32 %164, %struct.TYPE_3__* %8)
  store i32 %165, i32* %10, align 4
  br label %173

166:                                              ; preds = %150
  %167 = load i32, i32* %4, align 4
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %171 = load i32, i32* @inherit_cb, align 4
  %172 = call i32 @zfs_for_each(i32 %167, i8** %168, i32 %169, i32 %170, i32* null, i32* null, i32 0, i32 %171, %struct.TYPE_3__* %8)
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %166, %159
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %132, %120, %79
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i64 @zfs_name_to_prop(i8*) #2

declare dso_local i64 @zfs_prop_readonly(i64) #2

declare dso_local i32 @zfs_prop_inheritable(i64) #2

declare dso_local i32 @zfs_prop_user(i8*) #2

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
