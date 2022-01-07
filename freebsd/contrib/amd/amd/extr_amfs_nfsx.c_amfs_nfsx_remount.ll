; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_remount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32 (i32*, %struct.TYPE_8__*)* }
%struct.amfs_nfsx = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@MFF_MOUNTING = common dso_local global i32 0, align 4
@MFF_MOUNTED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MFF_MKMNT = common dso_local global i32 0, align 4
@FS_MKMNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"calling underlying mount on %s\00", align 1
@foreground = common dso_local global i64 0, align 8
@FS_MBACKGROUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"backgrounding mount of \22%s\22\00", align 1
@try_amfs_nfsx_mount = common dso_local global i32 0, align 4
@amfs_nfsx_cont = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"foreground mount of \22%s\22 ...\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"underlying fmount of %s failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32)* @amfs_nfsx_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amfs_nfsx_remount(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amfs_nfsx*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.amfs_nfsx*
  store %struct.amfs_nfsx* %15, %struct.amfs_nfsx** %8, align 8
  store i32 -1, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %8, align 8
  %18 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %8, align 8
  %20 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  br label %22

22:                                               ; preds = %173, %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %8, align 8
  %25 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %8, align 8
  %28 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %30
  %32 = icmp ult %struct.TYPE_9__* %23, %31
  br i1 %32, label %33, label %176

33:                                               ; preds = %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %11, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MFF_MOUNTING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %176

44:                                               ; preds = %33
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MFF_MOUNTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @mf_mounted(%struct.TYPE_8__* %52, i32 %53)
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %173

57:                                               ; preds = %44
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %172

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MFF_MKMNT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FS_MKMNT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mkdirs(i32 %79, i32 365)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @MFF_MKMNT, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %69, %62
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %128, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* @foreground, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FS_MBACKGROUND, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %99
  %107 = load i32, i32* @MFF_MOUNTING, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %117 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %8, align 8
  %118 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %117, i32 0, i32 1
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %118, align 8
  %119 = load i32, i32* @try_amfs_nfsx_mount, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = ptrtoint %struct.TYPE_8__* %120 to i32
  %122 = load i32, i32* @amfs_nfsx_cont, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = ptrtoint %struct.TYPE_8__* %123 to i32
  %125 = call i32 @run_task(i32 %119, i32 %121, i32 %122, i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 8
  store i32 -1, i32* %4, align 4
  br label %184

128:                                              ; preds = %99, %96, %89
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32 (i32*, %struct.TYPE_8__*)*, i32 (i32*, %struct.TYPE_8__*)** %136, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %140 = call i32 %137(i32* %138, %struct.TYPE_8__* %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %128
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %151, i32 %155)
  br label %157

157:                                              ; preds = %148, %143
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %171

163:                                              ; preds = %157
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %166, %163
  br label %171

171:                                              ; preds = %170, %162
  br label %172

172:                                              ; preds = %171, %57
  br label %173

173:                                              ; preds = %172, %51
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 1
  store %struct.TYPE_9__* %175, %struct.TYPE_9__** %9, align 8
  br label %22

176:                                              ; preds = %43, %22
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %182

180:                                              ; preds = %176
  %181 = load i32, i32* %10, align 4
  br label %182

182:                                              ; preds = %180, %179
  %183 = phi i32 [ 0, %179 ], [ %181, %180 ]
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %106
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @mf_mounted(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mkdirs(i32, i32) #1

declare dso_local i32 @dlog(i8*, i32, ...) #1

declare dso_local i32 @run_task(i32, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
