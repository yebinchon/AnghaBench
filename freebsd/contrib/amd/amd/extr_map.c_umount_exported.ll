; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_umount_exported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_umount_exported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, %struct.TYPE_9__*, i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@last_used_map = common dso_local global i32 0, align 4
@exported_ap = common dso_local global %struct.TYPE_11__** null, align 8
@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@FS_DIRECTORY = common dso_local global i32 0, align 4
@NFDIR = common dso_local global i32 0, align 4
@immediate_abort = common dso_local global i64 0, align 8
@AMF_ROOT = common dso_local global i32 0, align 4
@MFF_RESTART = common dso_local global i32 0, align 4
@FSF_DOWN = common dso_local global i32 0, align 4
@FSF_VALID = common dso_local global i32 0, align 4
@MFF_MKMNT = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@CFM_UNMOUNT_ON_EXIT = common dso_local global i32 0, align 4
@AMF_AUTOFS = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"on-exit attempt to unmount %s\00", align 1
@MFF_MOUNTED = common dso_local global i32 0, align 4
@AMF_NOTIMEOUT = common dso_local global i32 0, align 4
@MFF_RSTKEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @umount_exported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  br label %5

5:                                                ; preds = %166, %0
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @last_used_map, align 4
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %162, %5
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %165

10:                                               ; preds = %7
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @exported_ap, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %11, i64 %13
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %162

19:                                               ; preds = %10
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %162

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MFF_UNMOUNTING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %162

38:                                               ; preds = %25
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FS_DIRECTORY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 6
  %48 = load i32, i32* @NFDIR, align 4
  %49 = call i32 @mk_fattr(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i64, i64* @immediate_abort, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* @immediate_abort, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AMF_ROOT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61, %54, %50
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MFF_RESTART, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %138

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FSF_DOWN, align 4
  %87 = load i32, i32* @FSF_VALID, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load i32, i32* @FSF_VALID, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load i32, i32* @MFF_MKMNT, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %92, %80, %73
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gopt, i32 0, i32 0), align 4
  %101 = load i32, i32* @CFM_UNMOUNT_ON_EXIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AMF_AUTOFS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104, %99
  %112 = load i32, i32* @XLOG_INFO, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @plog(i32 %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = ptrtoint %struct.TYPE_11__* %117 to i32
  %119 = call i32 @unmount_mp(i32 %118)
  br label %123

120:                                              ; preds = %104
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = call i32 @am_unmounted(%struct.TYPE_11__* %121)
  br label %123

123:                                              ; preds = %120, %111
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MFF_UNMOUNTING, align 4
  %128 = load i32, i32* @MFF_MOUNTED, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %123
  %133 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @exported_ap, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %133, i64 %135
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %136, align 8
  br label %137

137:                                              ; preds = %132, %123
  br label %161

138:                                              ; preds = %66
  %139 = load i32, i32* @AMF_NOTIMEOUT, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @MFF_RSTKEEP, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %146
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %138, %137
  br label %162

162:                                              ; preds = %161, %37, %24, %18
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %1, align 4
  br label %7

165:                                              ; preds = %7
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %2, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %5, label %169

169:                                              ; preds = %166
  ret void
}

declare dso_local i32 @mk_fattr(i32*, i32) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @unmount_mp(i32) #1

declare dso_local i32 @am_unmounted(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
