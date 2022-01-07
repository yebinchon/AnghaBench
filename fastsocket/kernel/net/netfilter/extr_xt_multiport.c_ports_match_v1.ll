; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_ports_match_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_ports_match_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_multiport_v1 = type { i32, i64*, i64, i32, i64* }

@.str = private unnamed_addr constant [32 x i8] c"src or dst matches with %d-%d?\0A\00", align 1
@XT_MULTIPORT_SOURCE = common dso_local global i64 0, align 8
@XT_MULTIPORT_DESTINATION = common dso_local global i64 0, align 8
@XT_MULTIPORT_EITHER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"src or dst matches with %d?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_multiport_v1*, i64, i64)* @ports_match_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ports_match_v1(%struct.xt_multiport_v1* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xt_multiport_v1*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xt_multiport_v1* %0, %struct.xt_multiport_v1** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %163, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %14 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %166

17:                                               ; preds = %11
  %18 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %19 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %26 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %110

33:                                               ; preds = %17
  %34 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %35 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 (i8*, i64, ...) @duprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %46 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XT_MULTIPORT_SOURCE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %33
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %60 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = xor i32 1, %61
  store i32 %62, i32* %4, align 4
  br label %170

63:                                               ; preds = %54, %50, %33
  %64 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %65 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XT_MULTIPORT_DESTINATION, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %79 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 1, %80
  store i32 %81, i32* %4, align 4
  br label %170

82:                                               ; preds = %73, %69, %63
  %83 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %84 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @XT_MULTIPORT_EITHER, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %92, %88
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %92
  %105 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %106 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = xor i32 1, %107
  store i32 %108, i32* %4, align 4
  br label %170

109:                                              ; preds = %100, %96, %82
  br label %162

110:                                              ; preds = %17
  %111 = load i64, i64* %9, align 8
  %112 = call i32 (i8*, i64, ...) @duprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %114 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @XT_MULTIPORT_SOURCE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %124 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = xor i32 1, %125
  store i32 %126, i32* %4, align 4
  br label %170

127:                                              ; preds = %118, %110
  %128 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %129 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XT_MULTIPORT_DESTINATION, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %139 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = xor i32 1, %140
  store i32 %141, i32* %4, align 4
  br label %170

142:                                              ; preds = %133, %127
  %143 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %144 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @XT_MULTIPORT_EITHER, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* %7, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %152, %148
  %157 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %158 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = xor i32 1, %159
  store i32 %160, i32* %4, align 4
  br label %170

161:                                              ; preds = %152, %142
  br label %162

162:                                              ; preds = %161, %109
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %11

166:                                              ; preds = %11
  %167 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %168 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %156, %137, %122, %104, %77, %58
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @duprintf(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
