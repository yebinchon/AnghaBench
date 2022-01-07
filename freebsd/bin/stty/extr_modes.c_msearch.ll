; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_modes.c_msearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_modes.c_msearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modes = type { i32, i32, i64 }
%struct.info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cmodes = common dso_local global %struct.modes* null, align 8
@imodes = common dso_local global %struct.modes* null, align 8
@lmodes = common dso_local global %struct.modes* null, align 8
@omodes = common dso_local global %struct.modes* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msearch(i8*** %0, %struct.info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8***, align 8
  %5 = alloca %struct.info*, align 8
  %6 = alloca %struct.modes*, align 8
  %7 = alloca i8*, align 8
  store i8*** %0, i8**** %4, align 8
  store %struct.info* %1, %struct.info** %5, align 8
  %8 = load i8***, i8**** %4, align 8
  %9 = load i8**, i8*** %8, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.modes*, %struct.modes** @cmodes, align 8
  store %struct.modes* %11, %struct.modes** %6, align 8
  br label %12

12:                                               ; preds = %44, %2
  %13 = load %struct.modes*, %struct.modes** %6, align 8
  %14 = getelementptr inbounds %struct.modes, %struct.modes* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %12
  %18 = load %struct.modes*, %struct.modes** %6, align 8
  %19 = getelementptr inbounds %struct.modes, %struct.modes* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @CHK(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.modes*, %struct.modes** %6, align 8
  %25 = getelementptr inbounds %struct.modes, %struct.modes* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.info*, %struct.info** %5, align 8
  %29 = getelementptr inbounds %struct.info, %struct.info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.modes*, %struct.modes** %6, align 8
  %34 = getelementptr inbounds %struct.modes, %struct.modes* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.info*, %struct.info** %5, align 8
  %37 = getelementptr inbounds %struct.info, %struct.info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.info*, %struct.info** %5, align 8
  %42 = getelementptr inbounds %struct.info, %struct.info* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  store i32 1, i32* %3, align 4
  br label %159

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.modes*, %struct.modes** %6, align 8
  %46 = getelementptr inbounds %struct.modes, %struct.modes* %45, i32 1
  store %struct.modes* %46, %struct.modes** %6, align 8
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.modes*, %struct.modes** @imodes, align 8
  store %struct.modes* %48, %struct.modes** %6, align 8
  br label %49

49:                                               ; preds = %81, %47
  %50 = load %struct.modes*, %struct.modes** %6, align 8
  %51 = getelementptr inbounds %struct.modes, %struct.modes* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load %struct.modes*, %struct.modes** %6, align 8
  %56 = getelementptr inbounds %struct.modes, %struct.modes* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @CHK(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load %struct.modes*, %struct.modes** %6, align 8
  %62 = getelementptr inbounds %struct.modes, %struct.modes* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.info*, %struct.info** %5, align 8
  %66 = getelementptr inbounds %struct.info, %struct.info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.modes*, %struct.modes** %6, align 8
  %71 = getelementptr inbounds %struct.modes, %struct.modes* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.info*, %struct.info** %5, align 8
  %74 = getelementptr inbounds %struct.info, %struct.info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load %struct.info*, %struct.info** %5, align 8
  %79 = getelementptr inbounds %struct.info, %struct.info* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  store i32 1, i32* %3, align 4
  br label %159

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.modes*, %struct.modes** %6, align 8
  %83 = getelementptr inbounds %struct.modes, %struct.modes* %82, i32 1
  store %struct.modes* %83, %struct.modes** %6, align 8
  br label %49

84:                                               ; preds = %49
  %85 = load %struct.modes*, %struct.modes** @lmodes, align 8
  store %struct.modes* %85, %struct.modes** %6, align 8
  br label %86

86:                                               ; preds = %118, %84
  %87 = load %struct.modes*, %struct.modes** %6, align 8
  %88 = getelementptr inbounds %struct.modes, %struct.modes* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %86
  %92 = load %struct.modes*, %struct.modes** %6, align 8
  %93 = getelementptr inbounds %struct.modes, %struct.modes* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @CHK(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load %struct.modes*, %struct.modes** %6, align 8
  %99 = getelementptr inbounds %struct.modes, %struct.modes* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.info*, %struct.info** %5, align 8
  %103 = getelementptr inbounds %struct.info, %struct.info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load %struct.modes*, %struct.modes** %6, align 8
  %108 = getelementptr inbounds %struct.modes, %struct.modes* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.info*, %struct.info** %5, align 8
  %111 = getelementptr inbounds %struct.info, %struct.info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.info*, %struct.info** %5, align 8
  %116 = getelementptr inbounds %struct.info, %struct.info* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  store i32 1, i32* %3, align 4
  br label %159

117:                                              ; preds = %91
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.modes*, %struct.modes** %6, align 8
  %120 = getelementptr inbounds %struct.modes, %struct.modes* %119, i32 1
  store %struct.modes* %120, %struct.modes** %6, align 8
  br label %86

121:                                              ; preds = %86
  %122 = load %struct.modes*, %struct.modes** @omodes, align 8
  store %struct.modes* %122, %struct.modes** %6, align 8
  br label %123

123:                                              ; preds = %155, %121
  %124 = load %struct.modes*, %struct.modes** %6, align 8
  %125 = getelementptr inbounds %struct.modes, %struct.modes* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %123
  %129 = load %struct.modes*, %struct.modes** %6, align 8
  %130 = getelementptr inbounds %struct.modes, %struct.modes* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @CHK(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load %struct.modes*, %struct.modes** %6, align 8
  %136 = getelementptr inbounds %struct.modes, %struct.modes* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.info*, %struct.info** %5, align 8
  %140 = getelementptr inbounds %struct.info, %struct.info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load %struct.modes*, %struct.modes** %6, align 8
  %145 = getelementptr inbounds %struct.modes, %struct.modes* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.info*, %struct.info** %5, align 8
  %148 = getelementptr inbounds %struct.info, %struct.info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load %struct.info*, %struct.info** %5, align 8
  %153 = getelementptr inbounds %struct.info, %struct.info* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  store i32 1, i32* %3, align 4
  br label %159

154:                                              ; preds = %128
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.modes*, %struct.modes** %6, align 8
  %157 = getelementptr inbounds %struct.modes, %struct.modes* %156, i32 1
  store %struct.modes* %157, %struct.modes** %6, align 8
  br label %123

158:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %134, %97, %60, %23
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @CHK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
