; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_scan_anchors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_scan_anchors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_sb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.kernel_lb_addr*)* @udf_scan_anchors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_scan_anchors(%struct.super_block* %0, i32 %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_sb_info*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %12)
  store %struct.udf_sb_info* %13, %struct.udf_sb_info** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %15 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %21 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %24 = call i64 @udf_check_anchor_block(%struct.super_block* %19, i32 %22, %struct.kernel_lb_addr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %4, align 4
  br label %167

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %32 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 256
  %35 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %36 = call i64 @udf_check_anchor_block(%struct.super_block* %30, i32 %34, %struct.kernel_lb_addr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %4, align 4
  br label %167

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 2
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %55
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 150
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 150
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 152
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 152
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %81
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %151, %91
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %154

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.super_block*, %struct.super_block** %5, align 8
  %102 = getelementptr inbounds %struct.super_block, %struct.super_block* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = getelementptr inbounds %struct.super_block, %struct.super_block* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %107, %110
  %112 = icmp sge i32 %100, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %96
  br label %151

114:                                              ; preds = %96
  %115 = load %struct.super_block*, %struct.super_block** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %121 = call i64 @udf_check_anchor_block(%struct.super_block* %115, i32 %119, %struct.kernel_lb_addr* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %114
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %4, align 4
  br label %167

128:                                              ; preds = %114
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 256
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %151

135:                                              ; preds = %128
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 256
  %142 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %143 = call i64 @udf_check_anchor_block(%struct.super_block* %136, i32 %141, %struct.kernel_lb_addr* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %135
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %4, align 4
  br label %167

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %134, %113
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %92

154:                                              ; preds = %92
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %157 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 512
  %160 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %161 = call i64 @udf_check_anchor_block(%struct.super_block* %155, i32 %159, %struct.kernel_lb_addr* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %165 = load i32, i32* %164, align 16
  store i32 %165, i32* %4, align 4
  br label %167

166:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %163, %145, %123, %38, %26
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i64 @udf_check_anchor_block(%struct.super_block*, i32, %struct.kernel_lb_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
