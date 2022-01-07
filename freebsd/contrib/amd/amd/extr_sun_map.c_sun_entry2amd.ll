; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_entry2amd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_entry2amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_entry = type { i32*, i32*, i32* }

@INFO_MAX_LINE_LEN = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Sun key value was null\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Sun entry value was null\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not parse Sun style map\00", align 1
@SUN_NFS_TYPE = common dso_local global i8* null, align 8
@SUN_HSFS_TYPE = common dso_local global i8* null, align 8
@SUN_AUTOFS_TYPE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Sun fstype %s is currently not supported by Amd.\00", align 1
@SUN_CACHEFS_TYPE = common dso_local global i8* null, align 8
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"No SUN fstype specified defaulting to NFS.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sun_entry2amd(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sun_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %10 = load i32, i32* @INFO_MAX_LINE_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  store %struct.sun_entry* null, %struct.sun_entry** %9, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @XLOG_ERROR, align 4
  %18 = call i32 (i32, i8*, ...) @plog(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %172

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @XLOG_ERROR, align 4
  %24 = call i32 (i32, i8*, ...) @plog(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %172

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = trunc i64 %11 to i32
  %28 = call i32 @xstrlcpy(i8* %13, i8* %26, i32 %27)
  %29 = call i32 @strlen(i8* %13)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %52, %25
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %13, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isspace(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %13, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i1 [ true, %34 ], [ %47, %41 ]
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi i1 [ false, %31 ], [ %49, %48 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %13, i64 %55
  store i8 0, i8* %56, align 1
  br label %31

57:                                               ; preds = %50
  %58 = call %struct.sun_entry* @sun_map_parse_read(i8* %13)
  store %struct.sun_entry* %58, %struct.sun_entry** %9, align 8
  %59 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %60 = icmp eq %struct.sun_entry* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @XLOG_ERROR, align 4
  %63 = call i32 (i32, i8*, ...) @plog(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %172

64:                                               ; preds = %57
  %65 = trunc i64 %11 to i32
  %66 = call i32 @memset(i8* %13, i32 0, i32 %65)
  %67 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %68 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = trunc i64 %11 to i32
  %73 = load i8*, i8** %3, align 8
  %74 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %75 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @sun_opts2amd(i8* %13, i32 %72, i8* %73, i32* %76)
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %80 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = trunc i64 %11 to i32
  %85 = load i8*, i8** %3, align 8
  %86 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %87 = call i32 @sun_multi2amd(i8* %13, i32 %84, i8* %85, %struct.sun_entry* %86)
  %88 = call i8* @xstrdup(i8* %13)
  store i8* %88, i8** %5, align 8
  br label %171

89:                                               ; preds = %78
  %90 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %91 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %162

94:                                               ; preds = %89
  %95 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %96 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i8*, i8** @SUN_NFS_TYPE, align 8
  %99 = load i8*, i8** @SUN_NFS_TYPE, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = call i64 @NSTREQ(i32* %97, i8* %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = trunc i64 %11 to i32
  %105 = load i8*, i8** %3, align 8
  %106 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %107 = call i32 @sun_nfs2amd(i8* %13, i32 %104, i8* %105, %struct.sun_entry* %106)
  %108 = call i8* @xstrdup(i8* %13)
  store i8* %108, i8** %5, align 8
  br label %161

109:                                              ; preds = %94
  %110 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %111 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i8*, i8** @SUN_HSFS_TYPE, align 8
  %114 = load i8*, i8** @SUN_HSFS_TYPE, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i64 @NSTREQ(i32* %112, i8* %113, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = trunc i64 %11 to i32
  %120 = load i8*, i8** %3, align 8
  %121 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %122 = call i32 @sun_hsfs2amd(i8* %13, i32 %119, i8* %120, %struct.sun_entry* %121)
  %123 = call i8* @xstrdup(i8* %13)
  store i8* %123, i8** %5, align 8
  br label %160

124:                                              ; preds = %109
  %125 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %126 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i8*, i8** @SUN_AUTOFS_TYPE, align 8
  %129 = load i8*, i8** @SUN_AUTOFS_TYPE, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = call i64 @NSTREQ(i32* %127, i8* %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load i32, i32* @XLOG_ERROR, align 4
  %135 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %136 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 (i32, i8*, ...) @plog(i32 %134, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %137)
  br label %172

139:                                              ; preds = %124
  %140 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %141 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i8*, i8** @SUN_CACHEFS_TYPE, align 8
  %144 = load i8*, i8** @SUN_CACHEFS_TYPE, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = call i64 @NSTREQ(i32* %142, i8* %143, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load i32, i32* @XLOG_ERROR, align 4
  %150 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %151 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 (i32, i8*, ...) @plog(i32 %149, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %152)
  br label %172

154:                                              ; preds = %139
  %155 = load i32, i32* @XLOG_ERROR, align 4
  %156 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %157 = getelementptr inbounds %struct.sun_entry, %struct.sun_entry* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 (i32, i8*, ...) @plog(i32 %155, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %158)
  br label %172

160:                                              ; preds = %118
  br label %161

161:                                              ; preds = %160, %103
  br label %170

162:                                              ; preds = %89
  %163 = load i32, i32* @XLOG_INFO, align 4
  %164 = call i32 (i32, i8*, ...) @plog(i32 %163, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %165 = trunc i64 %11 to i32
  %166 = load i8*, i8** %3, align 8
  %167 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %168 = call i32 @sun_nfs2amd(i8* %13, i32 %165, i8* %166, %struct.sun_entry* %167)
  %169 = call i8* @xstrdup(i8* %13)
  store i8* %169, i8** %5, align 8
  br label %170

170:                                              ; preds = %162, %161
  br label %171

171:                                              ; preds = %170, %83
  br label %172

172:                                              ; preds = %171, %154, %148, %133, %61, %22, %16
  %173 = load %struct.sun_entry*, %struct.sun_entry** %9, align 8
  %174 = call i32 @XFREE(%struct.sun_entry* %173)
  %175 = load i8*, i8** %5, align 8
  %176 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %176)
  ret i8* %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local %struct.sun_entry* @sun_map_parse_read(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sun_opts2amd(i8*, i32, i8*, i32*) #2

declare dso_local i32 @sun_multi2amd(i8*, i32, i8*, %struct.sun_entry*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i64 @NSTREQ(i32*, i8*, i32) #2

declare dso_local i32 @sun_nfs2amd(i8*, i32, i8*, %struct.sun_entry*) #2

declare dso_local i32 @sun_hsfs2amd(i8*, i32, i8*, %struct.sun_entry*) #2

declare dso_local i32 @XFREE(%struct.sun_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
