; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_check_dependent.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_check_dependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot destroy '%s': %s has children\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"use '-r' to destroy the following datasets:\0A\00", align 1
@B_FALSE = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"cannot destroy '%s': %s has dependent clones\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"use '-R' to destroy the following datasets:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @destroy_check_dependent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_check_dependent(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i8* @zfs_get_name(i32* %12)
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @zfs_get_name(i32* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = call i64 @strncmp(i8* %16, i8* %17, i64 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %76

38:                                               ; preds = %30, %22
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %125

44:                                               ; preds = %38
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i8* @zfs_get_name(i32* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @zfs_get_type(i32* %58)
  %60 = call i8* @zfs_type_to_name(i64 %59)
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* %51, i8* %55, i8* %60)
  %62 = load i32, i32* @stderr, align 4
  %63 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* %63)
  %65 = load i8*, i8** @B_FALSE, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @B_TRUE, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %49, %44
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @zfs_get_name(i32* %73)
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %124

76:                                               ; preds = %30, %2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @zfs_get_type(i32* %84)
  %86 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %125

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @zfs_get_name(i32* %99)
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @zfs_get_type(i32* %103)
  %105 = call i8* @zfs_type_to_name(i64 %104)
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* %96, i8* %100, i8* %105)
  %107 = load i32, i32* @stderr, align 4
  %108 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* %108)
  %110 = load i8*, i8** @B_FALSE, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @B_TRUE, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @B_TRUE, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %94, %89
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = call i8* @zfs_get_name(i32* %121)
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %119, %71
  br label %125

125:                                              ; preds = %124, %88, %43
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @zfs_close(i32* %126)
  ret i32 0
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zfs_type_to_name(i64) #1

declare dso_local i64 @zfs_get_type(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
