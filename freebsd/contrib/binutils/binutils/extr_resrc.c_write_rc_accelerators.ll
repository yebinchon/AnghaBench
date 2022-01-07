; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_accelerators.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_accelerators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [7 x i8] c"BEGIN\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@ACC_VIRTKEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\22%c\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c", VIRTKEY\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c", ASCII\00", align 1
@ACC_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c", SHIFT\00", align 1
@ACC_CONTROL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c", CONTROL\00", align 1
@ACC_ALT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c", ALT\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @write_rc_accelerators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_accelerators(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  br label %10

10:                                               ; preds = %107, %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %111

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 127
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ISPRINT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ACC_VIRTKEY, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = trunc i32 %41 to i8
  %43 = sext i8 %42 to i32
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 1, i32* %6, align 4
  br label %51

45:                                               ; preds = %30, %24, %13
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ACC_VIRTKEY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %73

70:                                               ; preds = %60
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ACC_SHIFT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ACC_CONTROL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ACC_ALT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %5, align 8
  br label %10

111:                                              ; preds = %10
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @ISPRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
