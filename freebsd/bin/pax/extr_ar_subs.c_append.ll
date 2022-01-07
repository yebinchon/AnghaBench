; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (...)*, i64 (...)*, i32, i32 (...)*, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@frmt = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Cannot mix current archive format %s with %s\00", align 1
@uflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@listf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Reading archive to position at the end...\00", align 1
@argv0 = common dso_local global i8* null, align 8
@vfpart = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %1, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = call i64 (...) @get_arc()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %148

11:                                               ; preds = %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %17 = icmp ne %struct.TYPE_9__* %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %148

26:                                               ; preds = %14, %11
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64 (...)*, i64 (...)** %28, align 8
  %30 = call i64 (...) %29()
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64 (...)*, i64 (...)** %34, align 8
  %36 = call i64 (...) %35()
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %148

39:                                               ; preds = %32
  %40 = load i64, i64* @uflag, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = call i64 (...) @ftime_start()
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %148

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = call i64 (...) @dev_start()
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %148

55:                                               ; preds = %51, %46
  %56 = load i64, i64* @vflag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @listf, align 4
  %60 = load i8*, i8** @argv0, align 8
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  store i32 1, i32* @vfpart, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %125, %105, %82, %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %65 = call i64 @next_head(%struct.TYPE_10__* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %126

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %69 = call i64 @sel_chk(%struct.TYPE_10__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = call i32 @rd_skip(i64 %78)
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %126

82:                                               ; preds = %71
  br label %63

83:                                               ; preds = %67
  %84 = load i64, i64* @uflag, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %88 = call i32 @chk_ftime(%struct.TYPE_10__* %87)
  store i32 %88, i32* %2, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %126

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = call i32 @rd_skip(i64 %101)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %126

105:                                              ; preds = %94
  br label %63

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %112 = call i64 @add_dev(%struct.TYPE_10__* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110, %107
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = call i32 @rd_skip(i64 %121)
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %114, %110
  br label %126

125:                                              ; preds = %114
  br label %63

126:                                              ; preds = %124, %104, %90, %81, %63
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @frmt, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32 (...)*, i32 (...)** %128, align 8
  %130 = call i32 (...) %129()
  store i32 %130, i32* %6, align 4
  %131 = call i32 (...) @lnk_end()
  %132 = load i32, i32* %6, align 4
  %133 = call i64 @appnd_start(i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %148

136:                                              ; preds = %126
  %137 = load i64, i64* @vflag, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @vfpart, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* @listf, align 4
  %144 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  store i32 0, i32* @vfpart, align 4
  br label %145

145:                                              ; preds = %142, %139, %136
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %147 = call i32 @wr_archive(%struct.TYPE_10__* %146, i32 1)
  br label %148

148:                                              ; preds = %145, %135, %54, %45, %38, %18, %10
  ret void
}

declare dso_local i64 @get_arc(...) #1

declare dso_local i32 @paxwarn(i32, i8*, i32, i32) #1

declare dso_local i64 @ftime_start(...) #1

declare dso_local i64 @dev_start(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @next_head(%struct.TYPE_10__*) #1

declare dso_local i64 @sel_chk(%struct.TYPE_10__*) #1

declare dso_local i32 @rd_skip(i64) #1

declare dso_local i32 @chk_ftime(%struct.TYPE_10__*) #1

declare dso_local i64 @add_dev(%struct.TYPE_10__*) #1

declare dso_local i32 @lnk_end(...) #1

declare dso_local i64 @appnd_start(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @wr_archive(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
