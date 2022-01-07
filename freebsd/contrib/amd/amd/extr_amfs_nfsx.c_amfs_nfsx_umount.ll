; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { {}*, i32 (%struct.TYPE_10__*)* }
%struct.amfs_nfsx = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [33 x i8] c"calling underlying fumount on %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"amfs_nfsx: remount of %s failed: %m\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"calling underlying umounted on %s\00", align 1
@FS_MKMNT = common dso_local global i32 0, align 4
@MFF_MKMNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @amfs_nfsx_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amfs_nfsx_umount(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.amfs_nfsx*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.amfs_nfsx*
  store %struct.amfs_nfsx* %13, %struct.amfs_nfsx** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %15 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %18 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 -1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  br label %23

23:                                               ; preds = %68, %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %26 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = icmp uge %struct.TYPE_11__* %24, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (i32*, %struct.TYPE_10__*)**
  %47 = load i32 (i32*, %struct.TYPE_10__*)*, i32 (i32*, %struct.TYPE_10__*)** %46, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = call i32 %47(i32* %48, %struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %37
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %66

63:                                               ; preds = %37
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 -1
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %6, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = call i32 @amfs_nfsx_remount(i32* %75, %struct.TYPE_10__* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* @errno, align 4
  %83 = load i32, i32* @XLOG_USER, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @plog(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @EBUSY, align 4
  store i32 %89, i32* %7, align 4
  br label %162

90:                                               ; preds = %71
  %91 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %92 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %6, align 8
  br label %94

94:                                               ; preds = %158, %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %97 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %5, align 8
  %100 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %102
  %104 = icmp ult %struct.TYPE_11__* %95, %103
  br i1 %104, label %105, label %161

105:                                              ; preds = %94
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %9, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dlog(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %116, align 8
  %118 = icmp ne i32 (%struct.TYPE_10__*)* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %105
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %123, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = call i32 %124(%struct.TYPE_10__* %125)
  br label %127

127:                                              ; preds = %119, %105
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @FS_MKMNT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %132
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @rmdirs(i32 %142)
  %144 = load i32, i32* @MFF_MKMNT, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %139, %132
  br label %151

151:                                              ; preds = %150, %127
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = call i32 @free_mntfs(%struct.TYPE_10__* %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i32 -1, i32* %157, align 8
  br label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 1
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %6, align 8
  br label %94

161:                                              ; preds = %94
  br label %162

162:                                              ; preds = %161, %88
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @dlog(i8*, i32) #1

declare dso_local i32 @amfs_nfsx_remount(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @rmdirs(i32) #1

declare dso_local i32 @free_mntfs(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
