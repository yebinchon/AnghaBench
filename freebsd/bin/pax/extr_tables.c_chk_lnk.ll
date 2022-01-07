; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_chk_lnk.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_chk_lnk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i8*, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }

@ltab = common dso_local global %struct.TYPE_10__** null, align 8
@PAX_DIR = common dso_local global i64 0, align 8
@L_TAB_SZ = common dso_local global i32 0, align 4
@PAX_REG = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@PAX_HLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Hard link table out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chk_lnk(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ltab, align 8
  %8 = icmp eq %struct.TYPE_10__** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %167

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAX_DIR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %10
  store i32 0, i32* %2, align 4
  br label %167

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @L_TAB_SZ, align 4
  %30 = urem i32 %28, %29
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ltab, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %32, i64 %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %4, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %121

37:                                               ; preds = %23
  %38 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ltab, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %38, i64 %39
  store %struct.TYPE_10__** %40, %struct.TYPE_10__*** %5, align 8
  br label %41

41:                                               ; preds = %63, %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %69

63:                                               ; preds = %53, %44
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store %struct.TYPE_10__** %65, %struct.TYPE_10__*** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %4, align 8
  br label %41

69:                                               ; preds = %62, %41
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %120

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i64 @l_strncpy(i8* %75, %struct.TYPE_10__* %78, i32 7)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PAX_REG, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %72
  %95 = load i64, i64* @PAX_HRG, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %102

98:                                               ; preds = %72
  %99 = load i64, i64* @PAX_HLK, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = icmp sle i32 %106, 1
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %112, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_10__* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = call i32 @free(%struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %108, %102
  store i32 1, i32* %2, align 4
  br label %167

120:                                              ; preds = %69
  br label %121

121:                                              ; preds = %120, %23
  %122 = call i64 @malloc(i32 40)
  %123 = inttoptr i64 %122 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %4, align 8
  %124 = icmp ne %struct.TYPE_10__* %123, null
  br i1 %124, label %125, label %165

125:                                              ; preds = %121
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_10__* @strdup(i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %131, align 8
  %132 = icmp ne %struct.TYPE_10__* %129, null
  br i1 %132, label %133, label %162

133:                                              ; preds = %125
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ltab, align 8
  %153 = load i64, i64* %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %152, i64 %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  store %struct.TYPE_10__* %155, %struct.TYPE_10__** %157, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ltab, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 %160
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %161, align 8
  store i32 0, i32* %2, align 4
  br label %167

162:                                              ; preds = %125
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = call i32 @free(%struct.TYPE_10__* %163)
  br label %165

165:                                              ; preds = %162, %121
  %166 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %167

167:                                              ; preds = %165, %133, %119, %22, %9
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @l_strncpy(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_10__* @strdup(i32) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
