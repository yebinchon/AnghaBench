; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_bic.c_bictcp_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_bic.c_bictcp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bictcp = type { i32, i8*, i64, i32, i32, i32 }

@tcp_time_stamp = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@low_window = common dso_local global i32 0, align 4
@BICTCP_B = common dso_local global i32 0, align 4
@max_increment = common dso_local global i32 0, align 4
@smooth_part = common dso_local global i32 0, align 4
@ACK_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bictcp*, i32)* @bictcp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_update(%struct.bictcp* %0, i32 %1) #0 {
  %3 = alloca %struct.bictcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bictcp* %0, %struct.bictcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %7 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** @tcp_time_stamp, align 8
  %13 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %14 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %12 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 32
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %171

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %27 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @tcp_time_stamp, align 8
  %29 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %30 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %32 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i8*, i8** @tcp_time_stamp, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %39 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @low_window, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %47 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  br label %171

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %51 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %56 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sub i32 %57, %58
  %60 = load i32, i32* @BICTCP_B, align 4
  %61 = udiv i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @max_increment, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @max_increment, align 4
  %68 = udiv i32 %66, %67
  %69 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %70 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %89

71:                                               ; preds = %54
  %72 = load i32, i32* %5, align 4
  %73 = icmp ule i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @smooth_part, align 4
  %77 = mul i32 %75, %76
  %78 = load i32, i32* @BICTCP_B, align 4
  %79 = udiv i32 %77, %78
  %80 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %81 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %88

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = udiv i32 %83, %84
  %86 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %87 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %74
  br label %89

89:                                               ; preds = %88, %65
  br label %138

90:                                               ; preds = %48
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %93 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BICTCP_B, align 4
  %96 = add i32 %94, %95
  %97 = icmp ult i32 %91, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @smooth_part, align 4
  %101 = mul i32 %99, %100
  %102 = load i32, i32* @BICTCP_B, align 4
  %103 = udiv i32 %101, %102
  %104 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %105 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  br label %137

106:                                              ; preds = %90
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %109 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @max_increment, align 4
  %112 = load i32, i32* @BICTCP_B, align 4
  %113 = sub i32 %112, 1
  %114 = mul i32 %111, %113
  %115 = add i32 %110, %114
  %116 = icmp ult i32 %107, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %106
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @BICTCP_B, align 4
  %120 = sub i32 %119, 1
  %121 = mul i32 %118, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %124 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %122, %125
  %127 = udiv i32 %121, %126
  %128 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %129 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  br label %136

130:                                              ; preds = %106
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @max_increment, align 4
  %133 = udiv i32 %131, %132
  %134 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %135 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %117
  br label %137

137:                                              ; preds = %136, %98
  br label %138

138:                                              ; preds = %137, %89
  %139 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %140 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %145 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp ugt i32 %146, 20
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %150 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %149, i32 0, i32 3
  store i32 20, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %138
  %153 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %154 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ACK_RATIO_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %159 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = udiv i32 %157, %160
  %162 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %163 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %165 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %152
  %169 = load %struct.bictcp*, %struct.bictcp** %3, align 8
  %170 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %169, i32 0, i32 3
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %23, %44, %168, %152
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
