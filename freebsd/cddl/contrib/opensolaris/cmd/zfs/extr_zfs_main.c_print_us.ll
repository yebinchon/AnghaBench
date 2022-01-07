; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_us.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_print_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@B_TRUE = common dso_local global i64 0, align 8
@USFIELD_LAST = common dso_local global i32 0, align 4
@us_field_hdr = common dso_local global i32* null, align 8
@USFIELD_TYPE = common dso_local global i32 0, align 4
@USFIELD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"  %-*s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  %*s\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32, i64*, i64, i32*)* @print_us to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_us(i64 %0, i64 %1, i32* %2, i32 %3, i64* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %7
  %23 = load i64, i64* @B_TRUE, align 8
  store i64 %23, i64* %19, align 8
  br label %24

24:                                               ; preds = %70, %22
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @USFIELD_LAST, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %24
  %33 = load i32*, i32** @us_field_hdr, align 8
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @gettext(i32 %37)
  store i8* %38, i8** %16, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @USFIELD_TYPE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @USFIELD_NAME, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42, %32
  %47 = load i64, i64* %19, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %51 = load i64*, i64** %12, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = call i32 (i8*, ...) @printf(i8* %50, i64 %55, i8* %56)
  br label %70

58:                                               ; preds = %42
  %59 = load i64, i64* %19, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i64*, i64** %12, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 (i8*, ...) @printf(i8* %62, i64 %67, i8* %68)
  br label %70

70:                                               ; preds = %58, %46
  %71 = load i64, i64* @B_FALSE, align 8
  store i64 %71, i64* %19, align 8
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %24

74:                                               ; preds = %24
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %7
  %77 = load i32*, i32** %14, align 8
  %78 = call %struct.TYPE_6__* @uu_avl_first(i32* %77)
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %15, align 8
  br label %79

79:                                               ; preds = %98, %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i64*, i64** %12, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %89 = call i32 @print_us_node(i64 %83, i64 %84, i32* %85, i32 %86, i64* %87, %struct.TYPE_6__* %88)
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nvlist_free(i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %14, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = call %struct.TYPE_6__* @uu_avl_next(i32* %99, %struct.TYPE_6__* %100)
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %15, align 8
  br label %79

102:                                              ; preds = %79
  ret void
}

declare dso_local i8* @gettext(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @uu_avl_first(i32*) #1

declare dso_local i32 @print_us_node(i64, i64, i32*, i32, i64*, %struct.TYPE_6__*) #1

declare dso_local i32 @nvlist_free(i32) #1

declare dso_local %struct.TYPE_6__* @uu_avl_next(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
