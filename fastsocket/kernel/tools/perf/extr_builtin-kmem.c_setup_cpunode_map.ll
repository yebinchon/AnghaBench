; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_setup_cpunode_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_setup_cpunode_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@PATH_SYS_NODE = common dso_local global i8* null, align 8
@DT_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"node%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DT_LNK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1
@cpunode_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_cpunode_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cpunode_map() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = call i64 (...) @init_cpunode_map()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %83

18:                                               ; preds = %0
  %19 = load i8*, i8** @PATH_SYS_NODE, align 8
  %20 = call i32* @opendir(i8* %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %83

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %77, %52, %41, %24
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.dirent* @readdir(i32* %26)
  store %struct.dirent* %27, %struct.dirent** %2, align 8
  %28 = icmp ne %struct.dirent* %27, null
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  %30 = load %struct.dirent*, %struct.dirent** %2, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DT_DIR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.dirent*, %struct.dirent** %2, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @sscanf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %7)
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %25

42:                                               ; preds = %35
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = load i8*, i8** @PATH_SYS_NODE, align 8
  %45 = load %struct.dirent*, %struct.dirent** %2, align 8
  %46 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i8* %14, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %47)
  %49 = call i32* @opendir(i8* %14)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %25

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %71, %70, %53
  %55 = load i32*, i32** %5, align 8
  %56 = call %struct.dirent* @readdir(i32* %55)
  store %struct.dirent* %56, %struct.dirent** %3, align 8
  %57 = icmp ne %struct.dirent* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load %struct.dirent*, %struct.dirent** %3, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DT_LNK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.dirent*, %struct.dirent** %3, align 8
  %66 = getelementptr inbounds %struct.dirent, %struct.dirent* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @sscanf(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  br label %54

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** @cpunode_map, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %54

77:                                               ; preds = %54
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @closedir(i32* %78)
  br label %25

80:                                               ; preds = %25
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @closedir(i32* %81)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %23, %17
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @init_cpunode_map(...) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
