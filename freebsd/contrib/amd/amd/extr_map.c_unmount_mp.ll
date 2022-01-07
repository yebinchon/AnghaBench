; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_unmount_mp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_unmount_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@MFF_LOGDOWN = common dso_local global i32 0, align 4
@XLOG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"file server %s is down - timeout of \22%s\22 ignored\00", align 1
@AMQ_UMNT_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"\22%s\22 on %s timed out\00", align 1
@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@FS_UBACKGROUND = common dso_local global i32 0, align 4
@MFF_MOUNTED = common dso_local global i32 0, align 4
@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Trying unmount in background\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Trying unmount in foreground\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unmount attempt done\00", align 1
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unmount_mp(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = call i32 @clocktime(%struct.TYPE_13__* %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %34, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %16
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %45, %16
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %95

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call i32 @FSRV_ISUP(%struct.TYPE_14__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %95, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MFF_LOGDOWN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @XLOG_STATS, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, i32, ...) @plog(i32 %76, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %84)
  %86 = load i32, i32* @MFF_LOGDOWN, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %75, %68
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %93 = load i32, i32* @AMQ_UMNT_SERVER, align 4
  %94 = call i32 @notify_child(%struct.TYPE_21__* %92, i32 %93, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %146

95:                                               ; preds = %62, %57
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @MFF_UNMOUNTING, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @FS_UBACKGROUND, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %95
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MFF_MOUNTED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = ptrtoint %struct.TYPE_21__* %130 to i32
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %133 = ptrtoint %struct.TYPE_21__* %132 to i32
  %134 = call i32 @run_task(i32 (i32)* @unmount_node, i32 %131, i32 (i32, i32, i32)* @free_map_if_success, i32 %133)
  store i32 1, i32* %4, align 4
  br label %144

135:                                              ; preds = %121, %114, %95
  %136 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = ptrtoint %struct.TYPE_21__* %137 to i32
  %139 = call i32 @unmount_node(i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %141 = ptrtoint %struct.TYPE_21__* %140 to i32
  %142 = call i32 @free_map_if_success(i32 %139, i32 0, i32 %141)
  %143 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %144

144:                                              ; preds = %135, %128
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %91
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @clocktime(%struct.TYPE_13__*) #1

declare dso_local i32 @FSRV_ISUP(%struct.TYPE_14__*) #1

declare dso_local i32 @plog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @notify_child(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i32 @run_task(i32 (i32)*, i32, i32 (i32, i32, i32)*, i32) #1

declare dso_local i32 @unmount_node(i32) #1

declare dso_local i32 @free_map_if_success(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
