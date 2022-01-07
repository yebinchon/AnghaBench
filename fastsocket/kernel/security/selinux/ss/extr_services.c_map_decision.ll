; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_map_decision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_map_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.av_decision = type { i32, i32, i32 }

@current_mapping_size = common dso_local global i64 0, align 8
@current_mapping = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.av_decision*, i32)* @map_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_decision(i64 %0, %struct.av_decision* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.av_decision*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.av_decision* %1, %struct.av_decision** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @current_mapping_size, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %166

13:                                               ; preds = %3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %63, %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %25 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %26, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %46, %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %19

66:                                               ; preds = %19
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %69 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %95, %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %76 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %77, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %70

98:                                               ; preds = %70
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %101 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %146, %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %149

106:                                              ; preds = %102
  %107 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %108 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %109, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %106
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_mapping, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %7, align 4
  %142 = shl i32 1, %141
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %140, %129, %126
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %102

149:                                              ; preds = %102
  br label %150

150:                                              ; preds = %159, %149
  %151 = load i32, i32* %7, align 4
  %152 = zext i32 %151 to i64
  %153 = icmp ult i64 %152, 32
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32, i32* %7, align 4
  %156 = shl i32 1, %155
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %150

162:                                              ; preds = %150
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.av_decision*, %struct.av_decision** %5, align 8
  %165 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
