; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_emul_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_job.c_emul_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timeval = type { i64, i64 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Ran out of fd_set slots; recompile with a larger FD_SETSIZE.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emul_poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval*, align 8
  %16 = alloca i64, align 8
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = call i32 @FD_ZERO(i32* %8)
  %18 = call i32 @FD_ZERO(i32* %9)
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %81, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %19
  %24 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %24, i64 %26
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i64 %31
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @POLLIN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %39, i64 %41
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @FD_SET(i32 %44, i32* %8)
  br label %46

46:                                               ; preds = %38, %23
  %47 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %47, i64 %49
  %51 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @POLLOUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %57, i64 %59
  %61 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @FD_SET(i32 %62, i32* %9)
  br label %64

64:                                               ; preds = %56, %46
  %65 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %65, i64 %67
  %69 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %74, i64 %76
  %78 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %73, %64
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %19

84:                                               ; preds = %19
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @FD_SETSIZE, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @Punt(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store %struct.timeval* null, %struct.timeval** %15, align 8
  br label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 1000
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %16, align 8
  %99 = sdiv i64 %98, 1000000
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  %101 = load i64, i64* %16, align 8
  %102 = srem i64 %101, 1000000
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  store %struct.timeval* %14, %struct.timeval** %15, align 8
  br label %104

104:                                              ; preds = %94, %93
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.timeval*, %struct.timeval** %15, align 8
  %108 = call i32 @select(i32 %106, i32* %8, i32* %9, i32 0, %struct.timeval* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %171

113:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %166, %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %169

118:                                              ; preds = %114
  %119 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %119, i64 %121
  %123 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @FD_ISSET(i32 %124, i32* %8)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load i32, i32* @POLLIN, align 4
  %129 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %129, i64 %131
  %133 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %128
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %127, %118
  %137 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %137, i64 %139
  %141 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @FD_ISSET(i32 %142, i32* %9)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %136
  %146 = load i32, i32* @POLLOUT, align 4
  %147 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %147, i64 %149
  %151 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %146
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %145, %136
  %155 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %155, i64 %157
  %159 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %162, %154
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %114

169:                                              ; preds = %114
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %169, %111
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @Punt(i8*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
