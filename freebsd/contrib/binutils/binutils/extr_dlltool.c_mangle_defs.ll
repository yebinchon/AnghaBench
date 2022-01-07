; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_mangle_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_mangle_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__* }

@d_nfuncs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Processing definitions\00", align 1
@d_exports = common dso_local global %struct.TYPE_8__* null, align 8
@d_exports_lexically = common dso_local global %struct.TYPE_8__** null, align 8
@nfunc = common dso_local global i32 0, align 4
@show_allnames = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Processed definitions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mangle_defs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mangle_defs() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @d_nfuncs, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.TYPE_8__** @xmalloc(i32 %8)
  store %struct.TYPE_8__** %9, %struct.TYPE_8__*** %4, align 8
  %10 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @inform(i32 %10)
  store i32 0, i32* %2, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @d_exports, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %1, align 8
  br label %13

13:                                               ; preds = %22, %0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %18, i64 %20
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %21, align 8
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %1, align 8
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %30 = call i32 @process_duplicates(%struct.TYPE_8__** %29)
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %32 = call i32 @fill_ordinals(%struct.TYPE_8__** %31)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @d_exports, align 8
  %33 = load i32, i32* @d_nfuncs, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %51, %28
  %36 = load i32, i32* %2, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @d_exports, align 8
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %40, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %45, align 8
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** @d_exports, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %2, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* @d_nfuncs, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 8, %57
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_8__** @xmalloc(i32 %59)
  store %struct.TYPE_8__** %60, %struct.TYPE_8__*** @d_exports_lexically, align 8
  store i32 0, i32* %2, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @d_exports, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %1, align 8
  br label %62

62:                                               ; preds = %71, %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @d_exports_lexically, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 %69
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %1, align 8
  br label %62

77:                                               ; preds = %62
  %78 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @d_exports_lexically, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %78, i64 %80
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @d_exports_lexically, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @nfunc, align 4
  %85 = call i32 @qsort(%struct.TYPE_8__** %82, i32 %83, i32 8, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %112, %77
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @d_nfuncs, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  %91 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @d_exports_lexically, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %91, i64 %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i64, i64* @show_allnames, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %90
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @d_exports_lexically, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %107
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 8
  br label %111

111:                                              ; preds = %102, %99
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %86

115:                                              ; preds = %86
  %116 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i32 @inform(i32 %116)
  ret void
}

declare dso_local %struct.TYPE_8__** @xmalloc(i32) #1

declare dso_local i32 @inform(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @process_duplicates(%struct.TYPE_8__**) #1

declare dso_local i32 @fill_ordinals(%struct.TYPE_8__**) #1

declare dso_local i32 @qsort(%struct.TYPE_8__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
