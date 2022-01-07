; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_remove_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_mkpar.c_remove_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, %struct.TYPE_4__* }

@SRtotal = common dso_local global i64 0, align 8
@RRtotal = common dso_local global i64 0, align 8
@nstates = common dso_local global i32 0, align 4
@Value_t = common dso_local global i32 0, align 4
@SRconflicts = common dso_local global i64* null, align 8
@RRconflicts = common dso_local global i64* null, align 8
@SRcount = common dso_local global i64 0, align 8
@RRcount = common dso_local global i64 0, align 8
@parser = common dso_local global %struct.TYPE_4__** null, align 8
@final_state = common dso_local global i32 0, align 4
@SHIFT = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i64 0, i64* @SRtotal, align 8
  store i64 0, i64* @RRtotal, align 8
  %5 = load i32, i32* @nstates, align 4
  %6 = load i32, i32* @Value_t, align 4
  %7 = call i8* @NEW2(i32 %5, i32 %6)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** @SRconflicts, align 8
  %9 = load i32, i32* @nstates, align 4
  %10 = load i32, i32* @Value_t, align 4
  %11 = call i8* @NEW2(i32 %9, i32 %10)
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** @RRconflicts, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %160, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @nstates, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %163

17:                                               ; preds = %13
  store i64 0, i64* @SRcount, align 8
  store i64 0, i64* @RRcount, align 8
  store i32 -1, i32* %2, align 4
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @parser, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  br label %23

23:                                               ; preds = %139, %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %143

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  br label %138

37:                                               ; preds = %26
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @final_state, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* @SRcount, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @SRcount, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = call i32 @StartBacktrack(%struct.TYPE_4__* %49)
  br label %137

51:                                               ; preds = %41, %37
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %129

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SHIFT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %129

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %65
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 2, i32* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %4, align 8
  br label %120

82:                                               ; preds = %70
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 2, i32* %92, align 4
  br label %119

93:                                               ; preds = %82
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LEFT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 2, i32* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %4, align 8
  br label %118

103:                                              ; preds = %93
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RIGHT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 2, i32* %111, align 4
  br label %117

112:                                              ; preds = %103
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 2, i32* %114, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 2, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %109
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %90
  br label %120

120:                                              ; preds = %119, %78
  br label %128

121:                                              ; preds = %65, %60
  %122 = load i64, i64* @SRcount, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* @SRcount, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = call i32 @StartBacktrack(%struct.TYPE_4__* %126)
  br label %128

128:                                              ; preds = %121, %120
  br label %136

129:                                              ; preds = %54, %51
  %130 = load i64, i64* @RRcount, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* @RRcount, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = call i32 @StartBacktrack(%struct.TYPE_4__* %134)
  br label %136

136:                                              ; preds = %129, %128
  br label %137

137:                                              ; preds = %136, %44
  br label %138

138:                                              ; preds = %137, %32
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  store %struct.TYPE_4__* %142, %struct.TYPE_4__** %3, align 8
  br label %23

143:                                              ; preds = %23
  %144 = load i64, i64* @SRcount, align 8
  %145 = load i64, i64* @SRtotal, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* @SRtotal, align 8
  %147 = load i64, i64* @RRcount, align 8
  %148 = load i64, i64* @RRtotal, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* @RRtotal, align 8
  %150 = load i64, i64* @SRcount, align 8
  %151 = load i64*, i64** @SRconflicts, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 %150, i64* %154, align 8
  %155 = load i64, i64* @RRcount, align 8
  %156 = load i64*, i64** @RRconflicts, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64 %155, i64* %159, align 8
  br label %160

160:                                              ; preds = %143
  %161 = load i32, i32* %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %13

163:                                              ; preds = %13
  ret void
}

declare dso_local i8* @NEW2(i32, i32) #1

declare dso_local i32 @StartBacktrack(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
