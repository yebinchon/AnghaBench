; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_9__*, %struct.p9_fid*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.p9_fid = type { %struct.TYPE_10__*, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.p9_wstat = type { i32, i32, i32 }
%struct.p9_rdir = type { i32, i32, i32, i32* }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"name %s\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i32, i32, i32, i32, i32)*)* @v9fs_dir_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_dir_readdir(%struct.file* %0, i8* %1, i32 (i8*, i32, i32, i32, i32, i32)* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i8*, i32, i32, i32, i32, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_wstat, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_rdir*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 (i8*, i32, i32, i32, i32, i32)* %2, i32 (i8*, i32, i32, i32, i32, i32)** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @P9_DEBUG_VFS, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @P9_DPRINTK(i32 %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 2
  %25 = load %struct.p9_fid*, %struct.p9_fid** %24, align 8
  store %struct.p9_fid* %25, %struct.p9_fid** %10, align 8
  %26 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %27 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @P9_IOHDRSZ, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %34 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %84, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 24, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.p9_rdir* @kmalloc(i32 %41, i32 %42)
  store %struct.p9_rdir* %43, %struct.p9_rdir** %13, align 8
  %44 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %45 = icmp eq %struct.p9_rdir* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %199

49:                                               ; preds = %37
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %56 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %49
  %60 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %61 = bitcast %struct.p9_rdir* %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 24
  %63 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %64 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %66 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %65, i32 0, i32 2
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %69 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %71 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %73 = bitcast %struct.p9_rdir* %72 to i8*
  %74 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %75 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  store %struct.p9_rdir* null, %struct.p9_rdir** %13, align 8
  br label %76

76:                                               ; preds = %59, %49
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %83 = call i32 @kfree(%struct.p9_rdir* %82)
  br label %84

84:                                               ; preds = %76, %3
  %85 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %86 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.p9_rdir*
  store %struct.p9_rdir* %88, %struct.p9_rdir** %13, align 8
  %89 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %90 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %89, i32 0, i32 2
  %91 = call i32 @mutex_lock_interruptible(i32* %90)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %193, %84
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %194

95:                                               ; preds = %92
  %96 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %97 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %100 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %95
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %106 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.file*, %struct.file** %4, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @v9fs_file_readn(%struct.file* %104, i32* %107, i32* null, i32 %108, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %195

116:                                              ; preds = %103
  %117 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %118 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %121 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %95
  br label %123

123:                                              ; preds = %182, %122
  %124 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %125 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %128 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %193

131:                                              ; preds = %123
  %132 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %133 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %136 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %142 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %140, %143
  %145 = load %struct.p9_fid*, %struct.p9_fid** %10, align 8
  %146 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @p9stat_read(i32* %139, i32 %144, %struct.p9_wstat* %8, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %131
  %154 = load i32, i32* @P9_DEBUG_VFS, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @P9_DPRINTK(i32 %154, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %9, align 4
  %159 = call i32 @p9stat_free(%struct.p9_wstat* %8)
  br label %195

160:                                              ; preds = %131
  %161 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %8, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %12, align 4
  %164 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %6, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %8, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %8, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @strlen(i32 %169)
  %171 = load %struct.file*, %struct.file** %4, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %8, i32 0, i32 1
  %175 = call i32 @v9fs_qid2ino(i32* %174)
  %176 = call i32 @dt_type(%struct.p9_wstat* %8)
  %177 = call i32 %164(i8* %165, i32 %167, i32 %170, i32 %173, i32 %175, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = call i32 @p9stat_free(%struct.p9_wstat* %8)
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %160
  store i32 0, i32* %9, align 4
  br label %195

182:                                              ; preds = %160
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %185 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.file*, %struct.file** %4, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %123

193:                                              ; preds = %123
  br label %92

194:                                              ; preds = %92
  br label %195

195:                                              ; preds = %194, %181, %153, %115
  %196 = load %struct.p9_rdir*, %struct.p9_rdir** %13, align 8
  %197 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %196, i32 0, i32 2
  %198 = call i32 @mutex_unlock(i32* %197)
  br label %199

199:                                              ; preds = %195, %46
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.p9_rdir* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.p9_rdir*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v9fs_file_readn(%struct.file*, i32*, i32*, i32, i32) #1

declare dso_local i32 @p9stat_read(i32*, i32, %struct.p9_wstat*, i32) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @v9fs_qid2ino(i32*) #1

declare dso_local i32 @dt_type(%struct.p9_wstat*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
