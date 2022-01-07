; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_bump_cpu_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_bump_cpu_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%union.cpu_time_count = type { i64 }

@CPUCLOCK_SCHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, i64)* @bump_cpu_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bump_cpu_timer(%struct.k_itimer* %0, i64 %1) #0 {
  %3 = alloca %union.cpu_time_count, align 8
  %4 = alloca %struct.k_itimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %3, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %4, align 8
  %11 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %12 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %183

19:                                               ; preds = %2
  %20 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %21 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @CPUCLOCK_WHICH(i32 %22)
  %24 = load i64, i64* @CPUCLOCK_SCHED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %19
  %27 = bitcast %union.cpu_time_count* %3 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %30 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %183

37:                                               ; preds = %26
  %38 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %39 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = bitcast %union.cpu_time_count* %3 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %45, %46
  %48 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %49 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %47, %53
  store i64 %54, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %64, %37
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i64, i64* %7, align 8
  %63 = shl i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %55

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %94, %67
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %94

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %79 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, %77
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %5, align 4
  %86 = shl i32 1, %85
  %87 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %88 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %6, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %76, %75
  %95 = load i64, i64* %7, align 8
  %96 = lshr i64 %95, 1
  store i64 %96, i64* %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %5, align 4
  br label %68

99:                                               ; preds = %68
  br label %183

100:                                              ; preds = %19
  %101 = bitcast %union.cpu_time_count* %3 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %104 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @cputime_lt(i32 %102, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %183

112:                                              ; preds = %100
  %113 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %114 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %9, align 4
  %119 = bitcast %union.cpu_time_count* %3 to i32*
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @cputime_add(i32 %120, i32 %121)
  %123 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %124 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cputime_sub(i32 %122, i32 %128)
  store i32 %129, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %141, %112
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @cputime_sub(i32 %132, i32 %133)
  %135 = call i64 @cputime_lt(i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @cputime_add(i32 %138, i32 %139)
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %130

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %177, %144
  %146 = load i32, i32* %5, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %182

148:                                              ; preds = %145
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i64 @cputime_lt(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %177

154:                                              ; preds = %148
  %155 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %156 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @cputime_add(i32 %160, i32 %161)
  %163 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %164 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32 %162, i32* %167, align 8
  %168 = load i32, i32* %5, align 4
  %169 = shl i32 1, %168
  %170 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %171 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @cputime_sub(i32 %174, i32 %175)
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %154, %153
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @cputime_halve(i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %5, align 4
  br label %145

182:                                              ; preds = %145
  br label %183

183:                                              ; preds = %18, %36, %111, %182, %99
  ret void
}

declare dso_local i64 @CPUCLOCK_WHICH(i32) #1

declare dso_local i64 @cputime_lt(i32, i32) #1

declare dso_local i32 @cputime_sub(i32, i32) #1

declare dso_local i32 @cputime_add(i32, i32) #1

declare dso_local i32 @cputime_halve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
