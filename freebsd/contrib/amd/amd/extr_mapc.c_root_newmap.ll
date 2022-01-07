; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mapc.c_root_newmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mapc.c_root_newmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@root_map = common dso_local global i64 0, align 8
@ROOT_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mapdefault\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cache:=mapdefault;type:=toplvl;mount_type:=%s;fs:=\22%s\22\00", align 1
@CFM_MOUNT_TYPE_AUTOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@CFM_BROWSABLE_DIRS_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c";opts:=rw,fullybrowsable\00", align 1
@CFM_BROWSABLE_DIRS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c";opts:=rw,browsable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c";maptype:=\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"cache:=mapdefault;type:=toplvl;fs:=\22%s\22;%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_newmap(i8* %0, i8* %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i64, i64* @root_map, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ROOT_MAP, align 4
  %19 = call i64 @mapc_find(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store i64 %19, i64* @root_map, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %98

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %93

26:                                               ; preds = %23
  %27 = trunc i64 %12 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CFM_MOUNT_TYPE_AUTOFS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @get_full_path(i8* %36, i32 %39, i8* %42)
  %44 = call i32 @xsnprintf(i8* %14, i32 %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %26
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = trunc i64 %12 to i32
  %55 = call i32 @xstrlcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = trunc i64 %12 to i32
  %58 = call i32 @xstrlcat(i8* %14, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %47, %26
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CFM_BROWSABLE_DIRS_FULL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = trunc i64 %12 to i32
  %68 = call i32 @xstrlcat(i8* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CFM_BROWSABLE_DIRS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = trunc i64 %12 to i32
  %78 = call i32 @xstrlcat(i8* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = trunc i64 %12 to i32
  %86 = call i32 @xstrlcat(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = trunc i64 %12 to i32
  %91 = call i32 @xstrlcat(i8* %14, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %79
  br label %97

93:                                               ; preds = %23
  %94 = load i8*, i8** %6, align 8
  %95 = trunc i64 %12 to i32
  %96 = call i32 @xstrlcpy(i8* %14, i8* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %92
  br label %117

98:                                               ; preds = %20
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = trunc i64 %12 to i32
  %103 = load i8*, i8** %7, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i8* [ %107, %106 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %108 ]
  %111 = call i32 @xsnprintf(i8* %14, i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %103, i8* %110)
  br label %116

112:                                              ; preds = %98
  %113 = load i8*, i8** %6, align 8
  %114 = trunc i64 %12 to i32
  %115 = call i32 @xstrlcpy(i8* %14, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %117

117:                                              ; preds = %116, %97
  %118 = load i64, i64* @root_map, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @xstrdup(i8* %119)
  %121 = call i32 @xstrdup(i8* %14)
  %122 = call i32 @mapc_repl_kv(i64 %118, i32 %120, i32 %121)
  %123 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mapc_find(i32, i8*, i32*, i32*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @get_full_path(i8*, i32, i8*) #2

declare dso_local i32 @xstrlcat(i8*, i8*, i32) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i32 @mapc_repl_kv(i64, i32, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
