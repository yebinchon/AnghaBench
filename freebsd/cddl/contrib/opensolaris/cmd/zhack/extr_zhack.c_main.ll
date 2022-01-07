; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zhack/extr_zhack.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i8* }

@MAX_NUM_PATHS = common dso_local global i32 0, align 4
@g_importargs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"c:d:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error: no command specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"error: unknown subcommand: %s\0A\00", align 1
@g_readonly = common dso_local global i32 0, align 4
@g_pool = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"pool export failed; changes may not be committed to disk\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @MAX_NUM_PATHS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i8** %14, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 0), align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @dprintf_setup(i32* %4, i8** %15)
  call void @zfs_prop_init()
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call signext i8 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8 %20, i8* %10, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i8, i8* %10, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %40 [
    i32 99, label %26
    i32 100, label %28
  ]

26:                                               ; preds = %23
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 2), align 8
  br label %42

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %30 = load i32, i32* @MAX_NUM_PATHS, align 4
  %31 = icmp slt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** @optarg, align 8
  %35 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 0), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_importargs, i32 0, i32 1), align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %34, i8** %39, align 8
  br label %42

40:                                               ; preds = %23
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %28, %26
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* @optind, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @optind, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8** %50, i8*** %5, align 8
  store i32 1, i32* @optind, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = call i32 @zhack_do_feature(i32 %65, i8** %66)
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @stderr, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* @g_readonly, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @g_pool, align 4
  %78 = load i32, i32* @B_TRUE, align 4
  %79 = load i32, i32* @B_FALSE, align 4
  %80 = call i64 @spa_export(i32 %77, i32* null, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @fatal(i32* null, i32 %83, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %76, %73
  %86 = load i32, i32* @g_zfs, align 4
  %87 = call i32 @libzfs_fini(i32 %86)
  %88 = call i32 (...) @kernel_fini()
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprintf_setup(i32*, i8**) #2

declare dso_local void @zfs_prop_init() #2

declare dso_local signext i8 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zhack_do_feature(i32, i8**) #2

declare dso_local i64 @spa_export(i32, i32*, i32, i32) #2

declare dso_local i32 @fatal(i32*, i32, i8*) #2

declare dso_local i32 @libzfs_fini(i32) #2

declare dso_local i32 @kernel_fini(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
