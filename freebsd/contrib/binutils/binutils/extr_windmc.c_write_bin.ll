; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@mc_nodes_lang_count = common dso_local global i32 0, align 4
@mc_nodes_lang = common dso_local global %struct.TYPE_6__** null, align 8
@mcset_mc_basename = common dso_local global i8* null, align 8
@mcset_rc_dir = common dso_local global i8* null, align 8
@mcset_prefix_bin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s_\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_bin() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  %6 = load i32, i32* @mc_nodes_lang_count, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %111

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %93, %29, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @mc_nodes_lang_count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %111

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @mc_nodes_lang, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp eq %struct.TYPE_5__* %20, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %10

32:                                               ; preds = %17, %14
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @mc_nodes_lang, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %1, align 8
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %58, %32
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @mc_nodes_lang_count, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @mc_nodes_lang, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp eq %struct.TYPE_5__* %47, %54
  br label %56

56:                                               ; preds = %44, %40
  %57 = phi i1 [ false, %40 ], [ %55, %44 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %40

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @convert_unicode_to_ACP(i32 %66)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = add nsw i32 %69, 4
  %71 = add nsw i32 %70, 1
  %72 = load i8*, i8** @mcset_mc_basename, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, 1
  %76 = load i8*, i8** @mcset_rc_dir, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 %75, %77
  %79 = call i8* @xmalloc(i32 %78)
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** @mcset_rc_dir, align 8
  %82 = call i32 @strcpy(i8* %80, i8* %81)
  %83 = load i64, i64* @mcset_prefix_bin, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %61
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8*, i8** @mcset_mc_basename, align 8
  %92 = call i32 @sprintf(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %85, %61
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @strcat(i8* %94, i8* %95)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strcat(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @mc_nodes_lang, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 %102
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %2, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @windmc_write_bin(i8* %99, %struct.TYPE_6__** %103, i32 %106)
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32, i32* %3, align 4
  store i32 %110, i32* %2, align 4
  br label %10

111:                                              ; preds = %8, %10
  ret void
}

declare dso_local i8* @convert_unicode_to_ACP(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @windmc_write_bin(i8*, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
