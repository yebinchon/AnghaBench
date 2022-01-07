; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_iterate_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_dir_iterate_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.afs_dir_block = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%union.afs_dirent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%u,%x,%p,,\00", align 1
@AFS_DIRENT_PER_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ENT[%Zu.%u]: unused\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ENT[%Zu.%u]: %s %Zu \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"ENT[%Zu.%u]: %u travelled beyond end dir block (len %u/%Zu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"ENT[%Zu.%u]: %u unmarked extension (len %u/%Zu)\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ENT[%Zu.%u]: ext %u/%Zu\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c" = 0 [full]\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" = 1 [more]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %union.afs_dir_block*, i32, i8*, i32 (i8*, i32, i64, i32, i32, i32)*)* @afs_dir_iterate_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_dir_iterate_block(i32* %0, %union.afs_dir_block* %1, i32 %2, i8* %3, i32 (i8*, i32, i64, i32, i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.afs_dir_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i64, i32, i32, i32)*, align 8
  %12 = alloca %union.afs_dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %union.afs_dir_block* %1, %union.afs_dir_block** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i64, i32, i32, i32)* %4, i32 (i8*, i32, i64, i32, i32, i32)** %11, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %union.afs_dir_block*, %union.afs_dir_block** %8, align 8
  %23 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, %union.afs_dir_block* %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = udiv i64 %28, 12
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @AFS_DIRENT_PER_BLOCK, align 4
  %32 = load %union.afs_dir_block*, %union.afs_dir_block** %8, align 8
  %33 = bitcast %union.afs_dir_block* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %31, %35
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %226, %5
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @AFS_DIRENT_PER_BLOCK, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %228

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %union.afs_dir_block*, %union.afs_dir_block** %8, align 8
  %45 = bitcast %union.afs_dir_block* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = udiv i32 %48, 8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = urem i32 %53, 8
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = udiv i64 %60, 16
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (i8*, i32, i32, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 12
  %74 = add i64 %70, %73
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %58
  br label %226

78:                                               ; preds = %41
  %79 = load %union.afs_dir_block*, %union.afs_dir_block** %8, align 8
  %80 = bitcast %union.afs_dir_block* %79 to %union.afs_dirent**
  %81 = load %union.afs_dirent*, %union.afs_dirent** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %union.afs_dirent, %union.afs_dirent* %81, i64 %83
  store %union.afs_dirent* %84, %union.afs_dirent** %12, align 8
  %85 = load %union.afs_dirent*, %union.afs_dirent** %12, align 8
  %86 = bitcast %union.afs_dirent* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = mul i64 %90, 12
  %92 = sub i64 16, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @strnlen(i32 %88, i32 %93)
  store i64 %94, i64* %16, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = udiv i64 %96, 16
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ult i32 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %105 = load i64, i64* %16, align 8
  %106 = load %union.afs_dirent*, %union.afs_dirent** %12, align 8
  %107 = bitcast %union.afs_dirent* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, i32, i32, ...) @_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99, i8* %104, i64 %105, i32 %109)
  %111 = load i64, i64* %16, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %170, %78
  %114 = load i32, i32* %17, align 4
  %115 = icmp sgt i32 %114, 15
  br i1 %115, label %116, label %175

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @AFS_DIRENT_PER_BLOCK, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = udiv i64 %122, 16
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i64, i64* %16, align 8
  %129 = call i32 (i8*, i32, i32, ...) @_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i32 %127, i64 %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %230

132:                                              ; preds = %116
  %133 = load %union.afs_dir_block*, %union.afs_dir_block** %8, align 8
  %134 = bitcast %union.afs_dir_block* %133 to %struct.TYPE_3__*
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = udiv i32 %137, 8
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %14, align 4
  %143 = urem i32 %142, 8
  %144 = shl i32 1, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %132
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = udiv i64 %149, 16
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i64, i64* %16, align 8
  %156 = call i32 (i8*, i32, i32, ...) @_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i32 %154, i64 %155)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %230

159:                                              ; preds = %132
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = udiv i64 %161, 16
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i64, i64* %16, align 8
  %167 = call i32 (i8*, i32, i32, ...) @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32 %164, i32 %165, i64 %166)
  %168 = load i32, i32* %14, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = sub i64 %172, 12
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %17, align 4
  br label %113

175:                                              ; preds = %113
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %226

180:                                              ; preds = %175
  %181 = load i32 (i8*, i32, i64, i32, i32, i32)*, i32 (i8*, i32, i64, i32, i32, i32)** %11, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load %union.afs_dirent*, %union.afs_dirent** %12, align 8
  %184 = bitcast %union.afs_dirent* %183 to %struct.TYPE_4__*
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %16, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = load i32, i32* %13, align 4
  %191 = zext i32 %190 to i64
  %192 = mul i64 %191, 12
  %193 = add i64 %189, %192
  %194 = trunc i64 %193 to i32
  %195 = load %union.afs_dirent*, %union.afs_dirent** %12, align 8
  %196 = bitcast %union.afs_dirent* %195 to %struct.TYPE_4__*
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ntohl(i32 %198)
  %200 = load i32 (i8*, i32, i64, i32, i32, i32)*, i32 (i8*, i32, i64, i32, i32, i32)** %11, align 8
  %201 = icmp eq i32 (i8*, i32, i64, i32, i32, i32)* %200, @afs_lookup_filldir
  br i1 %201, label %202, label %208

202:                                              ; preds = %180
  %203 = load %union.afs_dirent*, %union.afs_dirent** %12, align 8
  %204 = bitcast %union.afs_dirent* %203 to %struct.TYPE_4__*
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ntohl(i32 %206)
  br label %210

208:                                              ; preds = %180
  %209 = load i32, i32* @DT_UNKNOWN, align 4
  br label %210

210:                                              ; preds = %208, %202
  %211 = phi i32 [ %207, %202 ], [ %209, %208 ]
  %212 = call i32 %181(i8* %182, i32 %186, i64 %187, i32 %194, i32 %199, i32 %211)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %230

217:                                              ; preds = %210
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = load i32, i32* %14, align 4
  %221 = zext i32 %220 to i64
  %222 = mul i64 %221, 12
  %223 = add i64 %219, %222
  %224 = trunc i64 %223 to i32
  %225 = load i32*, i32** %7, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %217, %179, %77
  %227 = load i32, i32* %14, align 4
  store i32 %227, i32* %13, align 4
  br label %37

228:                                              ; preds = %37
  %229 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %230

230:                                              ; preds = %228, %215, %147, %120
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @_enter(i8*, i32, i32, %union.afs_dir_block*) #1

declare dso_local i32 @_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @strnlen(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_lookup_filldir(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
