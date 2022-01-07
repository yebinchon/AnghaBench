; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_intrinsic.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_intrinsic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@INTR_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"intrinsic/b\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[su]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cbv\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"; (post-width)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"; (post-offset)\00", align 1
@INTR_REAL = common dso_local global i32 0, align 4
@CTF_FP_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"intrinsic/R\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"number <= CTF_FP_MAX\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1
@INTRINSIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"intrinsic: size=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_4__**)* @intrinsic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @intrinsic(i8* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %4, align 8
  %10 = call i8* @xcalloc(i32 24)
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %141 [
    i32 98, label %16
    i32 82, label %81
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @INTR_INT, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 115
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %36

27:                                               ; preds = %16
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 117
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @expected(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @number(i8* %51, i32* %7)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 59
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = call i32 @expected(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = call i8* @number(i8* %63, i32* %65)
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %3, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 59
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = call i32 @expected(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %62
  %77 = load i8*, i8** %3, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = call i8* @number(i8* %77, i32* %79)
  store i8* %80, i8** %3, align 8
  br label %141

81:                                               ; preds = %2
  %82 = load i32, i32* @INTR_REAL, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %104, %81
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @isdigit(i8 signext %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %94, 10
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = sub nsw i32 %101, 48
  %103 = add nsw i32 %95, %102
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %85

107:                                              ; preds = %85
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @CTF_FP_MAX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %107
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @expected(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i8*, i8** %3, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %3, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  %127 = load i8, i8* %125, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 59
  br i1 %129, label %130, label %134

130:                                              ; preds = %117
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  %133 = call i32 @expected(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %130, %117
  %135 = load i8*, i8** %3, align 8
  %136 = call i8* @number(i8* %135, i32* %7)
  store i8* %136, i8** %3, align 8
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 %137, 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %2, %134, %76
  %142 = call i8* @xcalloc(i32 32)
  %143 = bitcast i8* %142 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %6, align 8
  %144 = load i32, i32* @INTRINSIC, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @parse_debug(i32 3, i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %158, align 8
  %159 = load i8*, i8** %3, align 8
  ret i8* %159
}

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32 @expected(i8*, i8*, i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i8* @number(i8*, i32*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @parse_debug(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
