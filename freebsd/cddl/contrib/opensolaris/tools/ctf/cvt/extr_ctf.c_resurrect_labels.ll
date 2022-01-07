; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Resurrected label %s type idx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BASE\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: Cannot find label `%s' - using base (%s)\0A\00", align 1
@curfile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64, i8*)* @resurrect_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resurrect_labels(%struct.TYPE_5__* %0, i32* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  store i64 %35, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %16, align 8
  br label %40

40:                                               ; preds = %90, %4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %42 = ptrtoint %struct.TYPE_4__* %41 to i64
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %43, %44
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %40
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %18, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %18, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @debug(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @tdata_label_add(i32* %61, i8* %62, i32 %63)
  %65 = load i32, i32* %14, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %79

67:                                               ; preds = %47
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i8*, i8** %18, align 8
  store i8* %69, i8** %15, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @streq(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %116

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %18, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @streq(i8* %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %116

89:                                               ; preds = %82, %79
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 1
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %16, align 8
  br label %40

93:                                               ; preds = %40
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i32, i32* @curfile, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i8*, i8** %15, align 8
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %103 ]
  %106 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %97, i8* %98, i8* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @tdata_label_free(i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @tdata_label_add(i32* %109, i8* %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %93
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %104, %87, %76
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @debug(i32, i8*, i8*, i32) #1

declare dso_local i32 @tdata_label_add(i32*, i8*, i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i32, i8*, i8*) #1

declare dso_local i32 @tdata_label_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
