; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@current_command = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"usage: zpool command args ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"where 'command' is one of the following:\0A\0A\00", align 1
@NCOMMAND = common dso_local global i32 0, align 4
@command_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\0Athe following properties are supported:\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A\09%-15s  %s   %s\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"PROPERTY\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@print_prop_cb = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"\09%-15s   \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"feature@...\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"YES   disabled | enabled | active\0A\00", align 1
@.str.16 = private unnamed_addr constant [87 x i8] c"\0AThe feature@ properties must be appended with a feature name.\0ASee zpool-features(7).\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ZFS_ABORT\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"dumping core by request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** @stdout, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @stderr, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32* [ %8, %7 ], [ %10, %9 ]
  store i32* %12, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %48, %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NCOMMAND, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @command_table, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %47

37:                                               ; preds = %26
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @command_table, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @get_usage(i32 %44)
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %37, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %22

51:                                               ; preds = %22
  br label %62

52:                                               ; preds = %11
  %53 = load i32*, i32** %3, align 8
  %54 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @get_usage(i32 %59)
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %52, %51
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @strcmp(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %77, %71, %65
  %84 = load i32*, i32** %3, align 8
  %85 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %89 = load i32, i32* @print_prop_cb, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @B_FALSE, align 4
  %92 = load i32, i32* @B_TRUE, align 4
  %93 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %94 = call i32 @zprop_iter(i32 %89, i32* %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %99 = load i32*, i32** %3, align 8
  %100 = call i8* @gettext(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.16, i64 0, i64 0))
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* %100)
  br label %102

102:                                              ; preds = %83, %77, %62
  %103 = call i32* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %107 = call i32 (...) @abort() #3
  unreachable

108:                                              ; preds = %102
  %109 = load i64, i64* %2, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 2
  %113 = call i32 @exit(i32 %112) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @get_usage(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @zprop_iter(i32, i32*, i32, i32, i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
