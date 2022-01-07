; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_print_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_destroy_print_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"destroy\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"would destroy %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"will destroy %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @destroy_print_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_print_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @zfs_get_name(i32* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @nvlist_exists(i32 %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strdup(i8* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @free(i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %40
  %56 = call i32 (...) @nomem()
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %84

70:                                               ; preds = %62
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @printf(i8* %76, i8* %77)
  br label %83

79:                                               ; preds = %70
  %80 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @printf(i8* %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %75
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %57
  br label %119

86:                                               ; preds = %2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %86
  store i64 0, i64* %8, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @lzc_snaprange_space(i32* %94, i32* %97, i64* %8)
  store i32 %98, i32* %7, align 4
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @free(i32* %108)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @free(i32* %114)
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %91, %86
  br label %119

119:                                              ; preds = %118, %85
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @zfs_close(i32* %120)
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i64 @nvlist_exists(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @lzc_snaprange_space(i32*, i32*, i64*) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
