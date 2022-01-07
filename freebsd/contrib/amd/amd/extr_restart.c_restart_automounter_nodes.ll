; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_restart.c_restart_automounter_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_restart.c_restart_automounter_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@MNTTAB_TYPE_NFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(pid\00", align 1
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s is an existing automount point\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%*[^(](pid%ld%*[,)]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Can't parse pid in %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Automounter (pid: %ld) still alive\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%*[^,],port%hu)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"No port specified for %s\00", align 1
@nfs_port = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Too many open ports (256)\00", align 1
@nfs_dispatcher = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Can't bind to port %u\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Can't restart %s, leaving it alone\00", align 1
@amfs_link_ops = common dso_local global i32 0, align 4
@amfs_toplvl_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restart_automounter_nodes() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca [256 x i64], align 16
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = ptrtoint [256 x i64]* %3 to i32
  %14 = call i32 @memset(i32 %13, i32 0, i32 2048)
  %15 = load i32, i32* @mnttab_file_name, align 4
  %16 = call %struct.TYPE_6__* @read_mtab(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %2, align 8
  br label %17

17:                                               ; preds = %149, %0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %153

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %4, align 8
  store i32* null, i32** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MNTTAB_TYPE_NFS, align 4
  %28 = call i32 @STREQ(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %149

31:                                               ; preds = %20
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i8* @strchr(i64 %34, i8 signext 58)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strstr(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %31
  br label %149

43:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  %44 = load i32, i32* @XLOG_WARNING, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, ...) @plog(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @sscanf(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64* %7)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @XLOG_WARNING, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @plog(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  br label %135

58:                                               ; preds = %43
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @kill(i64 %59, i32 0)
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @ESRCH, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @XLOG_WARNING, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i32, i8*, ...) @plog(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  br label %135

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* %8)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @XLOG_WARNING, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, i8*, ...) @plog(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %78)
  br label %135

80:                                               ; preds = %70
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @nfs_port, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %134

84:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %103, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %88
  br label %106

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %85

106:                                              ; preds = %101, %85
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 256
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @XLOG_WARNING, align 4
  %111 = call i32 (i32, i8*, ...) @plog(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %135

112:                                              ; preds = %106
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load i32, i32* @nfs_dispatcher, align 4
  %120 = load i32, i32* @nfs_dispatcher, align 4
  %121 = call i32 @get_nfs_dispatcher_version(i32 %120)
  %122 = call i64 @create_nfs_service(i32* %11, i64* %8, i32** %12, i32 %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @XLOG_WARNING, align 4
  %126 = load i64, i64* %8, align 8
  %127 = call i32 (i32, i8*, ...) @plog(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %126)
  br label %135

128:                                              ; preds = %118
  %129 = load i64, i64* %8, align 8
  store i64 %129, i64* @nfs_port, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i64], [256 x i64]* %3, i64 0, i64 %131
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %112
  br label %134

134:                                              ; preds = %133, %80
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %134, %124, %109, %74, %66, %52
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* @XLOG_WARNING, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i8*, ...) @plog(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %142)
  store i32* @amfs_link_ops, i32** %5, align 8
  br label %145

144:                                              ; preds = %135
  store i32* @amfs_toplvl_ops, i32** %5, align 8
  br label %145

145:                                              ; preds = %144, %138
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @restart_fake_mntfs(%struct.TYPE_7__* %146, i32* %147)
  br label %149

149:                                              ; preds = %145, %42, %30
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %2, align 8
  br label %17

153:                                              ; preds = %17
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %155 = call i32 @free_mntlist(%struct.TYPE_6__* %154)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @read_mtab(i8*, i32) #1

declare dso_local i32 @STREQ(i32, i32) #1

declare dso_local i8* @strchr(i64, i8 signext) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @create_nfs_service(i32*, i64*, i32**, i32, i32) #1

declare dso_local i32 @get_nfs_dispatcher_version(i32) #1

declare dso_local i32 @restart_fake_mntfs(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @free_mntlist(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
