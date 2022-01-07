; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_set_creat_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_set_creat_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Permission sets:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Create time permissions:\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_set_creat_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_set_creat_perms(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %14 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  store i8** %18, i8*** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store i32 -1, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_10__* @uu_avl_first(i32* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  br label %21

21:                                               ; preds = %90, %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @who_type2weight(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* @B_TRUE, align 8
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %24
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %4, align 8
  %46 = load i8*, i8** %44, align 8
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %43, %24
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strnlen(i8* %53, i32 1)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %49
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32*, i32** %7, align 8
  %63 = call %struct.TYPE_10__* @uu_avl_first(i32* %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %12, align 8
  br label %64

64:                                               ; preds = %84, %61
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = icmp ne %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i64, i64* @B_FALSE, align 8
  store i64 %76, i64* %11, align 8
  br label %83

77:                                               ; preds = %67
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = call %struct.TYPE_10__* @uu_avl_next(i32* %85, %struct.TYPE_10__* %86)
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %12, align 8
  br label %64

88:                                               ; preds = %64
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call %struct.TYPE_10__* @uu_avl_next(i32* %91, %struct.TYPE_10__* %92)
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %5, align 8
  br label %21

94:                                               ; preds = %21
  ret void
}

declare dso_local i8* @gettext(i8*) #1

declare dso_local %struct.TYPE_10__* @uu_avl_first(i32*) #1

declare dso_local i32 @who_type2weight(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @uu_avl_next(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
