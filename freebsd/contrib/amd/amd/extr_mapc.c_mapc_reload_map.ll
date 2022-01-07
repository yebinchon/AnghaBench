; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mapc.c_mapc_reload_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mapc.c_mapc_reload_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i64*)*, i64, i64, i32 (%struct.TYPE_7__*, i32, i32)*, i32*, i32, i64, i64 }

@NKVHASH = common dso_local global i32 0, align 4
@do_mapc_reload = common dso_local global i64 0, align 8
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"reload of map %s is not needed (in sync)\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"map %s last load time is %d, last modify time is %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"calling map reload on %s\00", align 1
@mapc_add_kv = common dso_local global i32 0, align 4
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"first time load of map %s failed!\00", align 1
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"reload of map %s failed - using old values\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"first time load of map %s succeeded\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"reload #%d of map %s succeeded\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"calling mapc_search for wildcard\00", align 1
@wildcard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @mapc_reload_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapc_reload_map(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @NKVHASH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32*, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_7__*, i32, i64*)*, i32 (%struct.TYPE_7__*, i32, i64*)** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %16(%struct.TYPE_7__* %17, i32 %20, i64* %8)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load i64, i64* @do_mapc_reload, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i32, i32* @XLOG_INFO, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = call i32 (i32, i8*, i64, ...) @plog(i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %55, i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %171

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %33, %28
  %62 = ptrtoint i32** %13 to i32
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32 %62, i32 %66, i32 8)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(i32 %71, i32 0, i32 8)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @mapc_add_kv, align 4
  %87 = call i32 %81(%struct.TYPE_7__* %82, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %61
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @XLOG_FATAL, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = call i32 (i32, i8*, i64, ...) @plog(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %100)
  br label %109

102:                                              ; preds = %90
  %103 = load i32, i32* @XLOG_ERROR, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i32 (i32, i8*, i64, ...) @plog(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = call i32 @mapc_clear(%struct.TYPE_7__* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = ptrtoint i32** %13 to i32
  %117 = call i32 @memcpy(i32 %115, i32 %116, i32 8)
  br label %157

118:                                              ; preds = %61
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = icmp eq i64 %121, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* @XLOG_INFO, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = call i32 (i32, i8*, i64, ...) @plog(i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %129)
  br label %140

131:                                              ; preds = %118
  %132 = load i32, i32* @XLOG_INFO, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, i64, ...) @plog(i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %135, i32 %138)
  br label %140

140:                                              ; preds = %131, %124
  %141 = call i32 @mapc_clear_kvhash(i32** %13)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @XFREE(i32* %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 4
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %146, %140
  %154 = load i64, i64* %8, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  store i32 1, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %109
  %158 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = load i32, i32* @wildcard, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = call i32 @mapc_search(%struct.TYPE_7__* %159, i32 %160, i32** %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %166, %157
  %170 = load i32, i32* %5, align 4
  store i32 %170, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %171

171:                                              ; preds = %169, %42
  %172 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plog(i32, i8*, i64, ...) #2

declare dso_local i32 @dlog(i8*, ...) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @mapc_clear(%struct.TYPE_7__*) #2

declare dso_local i32 @mapc_clear_kvhash(i32**) #2

declare dso_local i32 @XFREE(i32*) #2

declare dso_local i32 @mapc_search(%struct.TYPE_7__*, i32, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
