; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"fpru\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"missing source dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"missing target dataset argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"-p and -r options are mutually exclusive\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"source dataset for recursive rename must be a snapshot\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"-u and -p options are mutually exclusive\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"options are not supported for renaming bookmarks\0A\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_rename(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** @B_FALSE, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** @B_FALSE, align 8
  store i8* %16, i8** %12, align 8
  store i8* null, i8** %13, align 8
  br label %17

17:                                               ; preds = %43, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %36 [
    i32 112, label %24
    i32 114, label %26
    i32 117, label %29
    i32 102, label %32
    i32 63, label %35
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @B_TRUE, align 8
  store i8* %25, i8** %11, align 8
  br label %43

26:                                               ; preds = %22
  %27 = load i8*, i8** @B_TRUE, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  br label %43

29:                                               ; preds = %22
  %30 = load i8*, i8** @B_TRUE, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  br label %43

32:                                               ; preds = %22
  %33 = load i8*, i8** @B_TRUE, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  br label %43

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %22, %35
  %37 = load i32, i32* @stderr, align 4
  %38 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @optopt, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* %38, i32 %39)
  %41 = load i8*, i8** @B_FALSE, align 8
  %42 = call i32 @usage(i8* %41)
  br label %43

43:                                               ; preds = %36, %32, %29, %26, %24
  br label %17

44:                                               ; preds = %17
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @stderr, align 4
  %57 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* %57)
  %59 = load i8*, i8** @B_FALSE, align 8
  %60 = call i32 @usage(i8* %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @stderr, align 4
  %66 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* %66)
  %68 = load i8*, i8** @B_FALSE, align 8
  %69 = call i32 @usage(i8* %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* %75)
  %77 = load i8*, i8** @B_FALSE, align 8
  %78 = call i32 @usage(i8* %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* %88)
  %90 = load i8*, i8** @B_FALSE, align 8
  %91 = call i32 @usage(i8* %90)
  br label %92

92:                                               ; preds = %86, %83, %79
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 64)
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* %104)
  %106 = load i8*, i8** @B_FALSE, align 8
  %107 = call i32 @usage(i8* %106)
  br label %108

108:                                              ; preds = %102, %96, %92
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* %117)
  %119 = load i8*, i8** @B_FALSE, align 8
  %120 = call i32 @usage(i8* %119)
  br label %121

121:                                              ; preds = %115, %112, %108
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @strchr(i8* %124, i8 signext 35)
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i8*, i8** @B_TRUE, align 8
  store i8* %128, i8** %12, align 8
  br label %129

129:                                              ; preds = %127, %121
  %130 = load i8*, i8** %12, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %144, %140, %136, %132
  %148 = load i32, i32* @stderr, align 4
  %149 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* %149)
  %151 = load i8*, i8** @B_FALSE, align 8
  %152 = call i32 @usage(i8* %151)
  br label %153

153:                                              ; preds = %147, %144, %129
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  store i32 %158, i32* %10, align 4
  br label %175

159:                                              ; preds = %153
  %160 = load i8*, i8** %11, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %164 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %10, align 4
  br label %174

166:                                              ; preds = %159
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  store i32 %170, i32* %10, align 4
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %157
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @strchr(i8* %182, i8 signext 64)
  store i8* %183, i8** %13, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = icmp ne i8* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load i8*, i8** %13, align 8
  store i8 0, i8* %188, align 1
  %189 = load i8*, i8** %13, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %13, align 8
  br label %191

191:                                              ; preds = %179, %175
  %192 = load i32, i32* @g_zfs, align 4
  %193 = load i8**, i8*** %5, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32* @zfs_open(i32 %192, i8* %195, i32 %196)
  store i32* %197, i32** %6, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  store i32 1, i32* %3, align 4
  br label %233

200:                                              ; preds = %191
  %201 = load i8*, i8** %11, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %221

203:                                              ; preds = %200
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = load i32*, i32** %6, align 8
  %208 = call i32 @zfs_get_type(i32* %207)
  %209 = call i64 @zfs_name_valid(i8* %206, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %203
  %212 = load i32, i32* @g_zfs, align 4
  %213 = load i8**, i8*** %5, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i64 @zfs_create_ancestors(i32 %212, i8* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load i32*, i32** %6, align 8
  %220 = call i32 @zfs_close(i32* %219)
  store i32 1, i32* %3, align 4
  br label %233

221:                                              ; preds = %211, %203, %200
  %222 = load i32*, i32** %6, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load i8**, i8*** %5, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @zfs_rename(i32* %222, i8* %223, i8* %226, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %7)
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %9, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @zfs_close(i32* %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %221, %218, %199
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @zfs_name_valid(i8*, i32) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_create_ancestors(i32, i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i64 @zfs_rename(i32*, i8*, i8*, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
