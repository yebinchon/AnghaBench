; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_frame_display_row.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dwarf.c_frame_display_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"   LOC   CFA      \00", align 1
@DW_CFA_unreferenced = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ra   \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"r%-4d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%08lx \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"r%d%+d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%-8s \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"c%+d\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"v%+d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"vexp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%-5s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @frame_display_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_display_row(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %55, %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DW_CFA_unreferenced, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %48
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %27

58:                                               ; preds = %27
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %20
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %81

72:                                               ; preds = %60
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %69
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %157, %81
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %160

90:                                               ; preds = %84
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DW_CFA_unreferenced, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %156

100:                                              ; preds = %90
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %150 [
    i32 130, label %108
    i32 131, label %111
    i32 133, label %114
    i32 128, label %124
    i32 132, label %134
    i32 134, label %144
    i32 129, label %147
  ]

108:                                              ; preds = %100
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %110 = call i32 @strcpy(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %153

111:                                              ; preds = %100
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %113 = call i32 @strcpy(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %153

114:                                              ; preds = %100
  %115 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %122)
  br label %153

124:                                              ; preds = %100
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %132)
  br label %153

134:                                              ; preds = %100
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %142)
  br label %153

144:                                              ; preds = %100
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %146 = call i32 @strcpy(i8* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %153

147:                                              ; preds = %100
  %148 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %149 = call i32 @strcpy(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %153

150:                                              ; preds = %100
  %151 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %152 = call i32 @strcpy(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %147, %144, %134, %124, %114, %111, %108
  %154 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %153, %90
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %84

160:                                              ; preds = %84
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
