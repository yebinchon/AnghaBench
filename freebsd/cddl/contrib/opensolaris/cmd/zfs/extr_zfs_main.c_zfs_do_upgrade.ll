; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i8*, i64, i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@ZFS_ITER_ARGS_CAN_BE_PATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rvV:a\00", align 1
@ZFS_ITER_RECURSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid version %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"The following filesystem versions are supported:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"VER  DESCRIPTION\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"---  --------------------------------------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c" 1   Initial ZFS filesystem version\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" 2   Enhanced directory entries\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c" 3   Case insensitive and filesystem user identifier (FUID)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c" 4   userquota, groupquota properties\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c" 5   System attributes\0A\00", align 1
@.str.11 = private unnamed_addr constant [78 x i8] c"\0AFor more information on a particular version, including supported releases,\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"see the ZFS Administration Guide.\0A\0A\00", align 1
@ZPL_VERSION = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@upgrade_set_callback = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"%llu filesystems upgraded\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%llu filesystems already at this version\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"This system is currently running ZFS filesystem version %llu.\0A\0A\00", align 1
@upgrade_list_callback = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [57 x i8] c"All filesystems are formatted with the current version.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_upgrade(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i8*, i8** @B_FALSE, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** @B_FALSE, align 8
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 48, i1 false)
  %15 = load i32, i32* @ZFS_ITER_ARGS_CAN_BE_PATHS, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i32, i32* %3, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %46 [
    i32 114, label %23
    i32 118, label %27
    i32 86, label %29
    i32 97, label %43
    i32 63, label %45
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %53

27:                                               ; preds = %21
  %28 = load i8*, i8** @B_TRUE, align 8
  store i8* %28, i8** %6, align 8
  br label %53

29:                                               ; preds = %21
  %30 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %31 = load i8*, i8** @optarg, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %33 = call i32 @zfs_prop_string_to_index(i32 %30, i8* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* %37, i8* %38)
  %40 = load i8*, i8** @B_FALSE, align 8
  %41 = call i32 @usage(i8* %40)
  br label %42

42:                                               ; preds = %35, %29
  br label %53

43:                                               ; preds = %21
  %44 = load i8*, i8** @B_TRUE, align 8
  store i8* %44, i8** %5, align 8
  br label %53

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %21, %45
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @optopt, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48, i32 %49)
  %51 = load i8*, i8** @B_FALSE, align 8
  %52 = call i32 @usage(i8* %51)
  br label %53

53:                                               ; preds = %46, %43, %42, %27, %23
  br label %16

54:                                               ; preds = %16
  %55 = load i64, i64* @optind, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  %60 = load i64, i64* @optind, align 8
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 %60
  store i8** %62, i8*** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %71 = and i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i8*, i8** @B_FALSE, align 8
  %78 = call i32 @usage(i8* %77)
  br label %79

79:                                               ; preds = %76, %68, %65, %54
  %80 = load i8*, i8** %6, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %90, %87, %82
  %98 = load i8*, i8** @B_FALSE, align 8
  %99 = call i32 @usage(i8* %98)
  br label %100

100:                                              ; preds = %97, %94, %79
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103, %100
  %107 = load i8*, i8** %6, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** @B_FALSE, align 8
  %111 = call i32 @usage(i8* %110)
  br label %112

112:                                              ; preds = %109, %106, %103
  %113 = load i8*, i8** %5, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** @B_FALSE, align 8
  %120 = call i32 @usage(i8* %119)
  br label %121

121:                                              ; preds = %118, %115, %112
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %126 = call i32 (i8*, ...) @printf(i8* %125)
  %127 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @printf(i8* %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  %130 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @printf(i8* %130)
  %132 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 (i8*, ...) @printf(i8* %132)
  %134 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %135 = call i32 (i8*, ...) @printf(i8* %134)
  %136 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %137 = call i32 (i8*, ...) @printf(i8* %136)
  %138 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %139 = call i32 (i8*, ...) @printf(i8* %138)
  %140 = call i8* @gettext(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11, i64 0, i64 0))
  %141 = call i32 (i8*, ...) @printf(i8* %140)
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %213

143:                                              ; preds = %121
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %5, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %181

149:                                              ; preds = %146, %143
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* @ZPL_VERSION, align 4
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* %3, align 4
  %158 = load i8**, i8*** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %161 = load i32, i32* @upgrade_set_callback, align 4
  %162 = call i32 @zfs_for_each(i32 %157, i8** %158, i32 %159, i32 %160, i32* null, i32* null, i32 0, i32 %161, %struct.TYPE_3__* %8)
  store i32 %162, i32* %7, align 4
  %163 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* %163, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %156
  %171 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* %171, i64 %173)
  br label %175

175:                                              ; preds = %170, %156
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i32 1, i32* %7, align 4
  br label %180

180:                                              ; preds = %179, %175
  br label %212

181:                                              ; preds = %146
  %182 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  %183 = load i32, i32* @ZPL_VERSION, align 4
  %184 = call i32 (i8*, ...) @printf(i8* %182, i32 %183)
  %185 = load i32, i32* @ZFS_ITER_RECURSE, align 4
  %186 = load i32, i32* %10, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %190 = load i32, i32* @upgrade_list_callback, align 4
  %191 = call i32 @zfs_for_each(i32 0, i8** null, i32 %188, i32 %189, i32* null, i32* null, i32 0, i32 %190, %struct.TYPE_3__* %8)
  store i32 %191, i32* %7, align 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %11, align 8
  %194 = load i8*, i8** @B_FALSE, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i8* %194, i8** %195, align 8
  %196 = load i8*, i8** @B_TRUE, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i8* %196, i8** %197, align 8
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %200 = load i32, i32* @upgrade_list_callback, align 4
  %201 = call i32 @zfs_for_each(i32 0, i8** null, i32 %198, i32 %199, i32* null, i32* null, i32 0, i32 %200, %struct.TYPE_3__* %8)
  store i32 %201, i32* %7, align 4
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %211, label %205

205:                                              ; preds = %181
  %206 = load i8*, i8** %11, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  %210 = call i32 (i8*, ...) @printf(i8* %209)
  br label %211

211:                                              ; preds = %208, %205, %181
  br label %212

212:                                              ; preds = %211, %180
  br label %213

213:                                              ; preds = %212, %124
  %214 = load i32, i32* %7, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @zfs_prop_string_to_index(i32, i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @zfs_for_each(i32, i8**, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
