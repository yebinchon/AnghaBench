; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_print_z_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_print_z_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s %D(%T, %T, %T) <built-in>\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s %D(%T, %T) <built-in>\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s %D(%T) <built-in>\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s %T <conversion>\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s %+#D <near match>\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s %+#D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.z_candidate*)* @print_z_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_z_candidate(i8* %0, %struct.z_candidate* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.z_candidate*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.z_candidate* %1, %struct.z_candidate** %4, align 8
  %5 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %6 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @IDENTIFIER_NODE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %2
  %12 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %13 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %19 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %22 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %29 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %36 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %20, i32 %27, i32 %34, i32 %41)
  br label %82

43:                                               ; preds = %11
  %44 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %45 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %51 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %54 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %61 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %52, i32 %59, i32 %66)
  br label %81

68:                                               ; preds = %43
  %69 = load i8*, i8** %3, align 8
  %70 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %71 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %74 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 %72, i32 %79)
  br label %81

81:                                               ; preds = %68, %48
  br label %82

82:                                               ; preds = %81, %16
  br label %114

83:                                               ; preds = %2
  %84 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %85 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @TYPE_P(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i8*, i8** %3, align 8
  %91 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %92 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %93)
  br label %113

95:                                               ; preds = %83
  %96 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %97 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i8*, i8** %3, align 8
  %102 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %103 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %101, i32 %104)
  br label %112

106:                                              ; preds = %95
  %107 = load i8*, i8** %3, align 8
  %108 = load %struct.z_candidate*, %struct.z_candidate** %4, align 8
  %109 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, i8*, i32, ...) @inform(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %82
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @inform(i8*, i8*, i32, ...) #1

declare dso_local i64 @TYPE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
