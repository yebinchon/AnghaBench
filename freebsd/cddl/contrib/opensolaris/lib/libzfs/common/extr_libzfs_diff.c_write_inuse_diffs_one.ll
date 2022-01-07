; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_write_inuse_diffs_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_write_inuse_diffs_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.zfs_stat = type { i32, i64, i64, i64* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ZDIFF_ADDED = common dso_local global i32 0, align 4
@ZDIFF_REMOVED = common dso_local global i32 0, align 4
@ZDIFF_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64)* @write_inuse_diffs_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_inuse_diffs_one(i32* %0, %struct.TYPE_7__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zfs_stat, align 8
  %9 = alloca %struct.zfs_stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

32:                                               ; preds = %3
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @MAXPATHLEN, align 4
  %39 = call i32 @get_stats_for_obj(%struct.TYPE_7__* %33, i32 %36, i64 %37, i8* %22, i32 %38, %struct.zfs_stat* %8)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ENOENT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ENOTSUP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

55:                                               ; preds = %48, %42, %32
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @MAXPATHLEN, align 4
  %62 = call i32 @get_stats_for_obj(%struct.TYPE_7__* %56, i32 %59, i64 %60, i8* %25, i32 %61, %struct.zfs_stat* %9)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ENOENT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ENOTSUP, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

78:                                               ; preds = %71, %65, %55
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ENOENT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ENOTSUP, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %90, %84
  %97 = phi i1 [ true, %84 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

102:                                              ; preds = %81, %78
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @S_IFMT, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %10, align 4
  %109 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @S_IFMT, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @S_IFDIR, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @S_IFDIR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120, %116, %102
  store i32 0, i32* %17, align 4
  br label %136

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %131, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %129, %128
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @print_link_change(i32* %143, %struct.TYPE_7__* %144, i32 %145, i8* %25, %struct.zfs_stat* %9)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

147:                                              ; preds = %139
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %150 = load i32, i32* @ZDIFF_ADDED, align 4
  %151 = call i32 @print_file(i32* %148, %struct.TYPE_7__* %149, i32 %150, i8* %25, %struct.zfs_stat* %9)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

152:                                              ; preds = %136
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @print_link_change(i32* %159, %struct.TYPE_7__* %160, i32 %161, i8* %22, %struct.zfs_stat* %8)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

163:                                              ; preds = %155
  %164 = load i32*, i32** %5, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %166 = load i32, i32* @ZDIFF_REMOVED, align 4
  %167 = call i32 @print_file(i32* %164, %struct.TYPE_7__* %165, i32 %166, i8* %22, %struct.zfs_stat* %8)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  br label %183

183:                                              ; preds = %179, %173, %169
  %184 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %189, label %238

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %193, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %8, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.zfs_stat, %struct.zfs_stat* %9, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %203, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

210:                                              ; preds = %199, %189
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %210
  %214 = load i32*, i32** %5, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %221

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220, %219
  %222 = phi i8* [ %22, %219 ], [ %25, %220 ]
  %223 = call i32 @print_link_change(i32* %214, %struct.TYPE_7__* %215, i32 %216, i8* %222, %struct.zfs_stat* %9)
  br label %237

224:                                              ; preds = %210
  %225 = call i64 @strcmp(i8* %22, i8* %25)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32*, i32** %5, align 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = load i32, i32* @ZDIFF_MODIFIED, align 4
  %231 = call i32 @print_file(i32* %228, %struct.TYPE_7__* %229, i32 %230, i8* %22, %struct.zfs_stat* %9)
  br label %236

232:                                              ; preds = %224
  %233 = load i32*, i32** %5, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %235 = call i32 @print_rename(i32* %233, %struct.TYPE_7__* %234, i8* %22, i8* %25, %struct.zfs_stat* %9)
  br label %236

236:                                              ; preds = %232, %227
  br label %237

237:                                              ; preds = %236, %221
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

238:                                              ; preds = %183
  %239 = load i32*, i32** %5, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = load i32, i32* @ZDIFF_REMOVED, align 4
  %242 = call i32 @print_file(i32* %239, %struct.TYPE_7__* %240, i32 %241, i8* %22, %struct.zfs_stat* %8)
  %243 = load i32*, i32** %5, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = load i32, i32* @ZDIFF_ADDED, align 4
  %246 = call i32 @print_file(i32* %243, %struct.TYPE_7__* %244, i32 %245, i8* %25, %struct.zfs_stat* %9)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %247

247:                                              ; preds = %238, %237, %209, %163, %158, %147, %142, %96, %77, %54, %31
  %248 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_stats_for_obj(%struct.TYPE_7__*, i32, i64, i8*, i32, %struct.zfs_stat*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @print_link_change(i32*, %struct.TYPE_7__*, i32, i8*, %struct.zfs_stat*) #2

declare dso_local i32 @print_file(i32*, %struct.TYPE_7__*, i32, i8*, %struct.zfs_stat*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @print_rename(i32*, %struct.TYPE_7__*, i8*, i8*, %struct.zfs_stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
