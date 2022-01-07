; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_imsttfb_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_imsttfb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.imstt_par* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.imstt_par = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@SSTATUS = common dso_local global i32 0, align 4
@S1SA = common dso_local global i32 0, align 4
@SP = common dso_local global i32 0, align 4
@DSA = common dso_local global i32 0, align 4
@CNT = common dso_local global i32 0, align 4
@DP_OCTL = common dso_local global i32 0, align 4
@BLTCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @imsttfb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imsttfb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.imstt_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = load %struct.imstt_par*, %struct.imstt_par** %21, align 8
  store %struct.imstt_par* %22, %struct.imstt_par** %5, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %6, align 4
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %34 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %37 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %17, align 4
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %18, align 4
  %49 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %19, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  store i32 5, i32* %13, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 16
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %18, align 4
  %63 = shl i32 %62, 16
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %2
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 0, %74
  %76 = and i32 %75, 65535
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 0, %79
  %81 = and i32 %80, 65535
  store i32 %81, i32* %11, align 4
  br label %87

82:                                               ; preds = %2
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %67
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, 128
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 0, %100
  %102 = and i32 %101, 65535
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %109

105:                                              ; preds = %87
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %91
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %128, %109
  %121 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %122 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SSTATUS, align 4
  %125 = call i32 @read_reg_le32(i32 %123, i32 %124)
  %126 = and i32 %125, 128
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %120

129:                                              ; preds = %120
  %130 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %131 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @S1SA, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @write_reg_le32(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %137 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SP, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @write_reg_le32(i32 %138, i32 %139, i32 %140)
  %142 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %143 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @DSA, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @write_reg_le32(i32 %144, i32 %145, i32 %146)
  %148 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %149 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CNT, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @write_reg_le32(i32 %150, i32 %151, i32 %152)
  %154 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %155 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @DP_OCTL, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @write_reg_le32(i32 %156, i32 %157, i32 %158)
  %160 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %161 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BLTCTL, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @write_reg_le32(i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %174, %129
  %167 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %168 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SSTATUS, align 4
  %171 = call i32 @read_reg_le32(i32 %169, i32 %170)
  %172 = and i32 %171, 128
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %166

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %184, %175
  %177 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %178 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SSTATUS, align 4
  %181 = call i32 @read_reg_le32(i32 %179, i32 %180)
  %182 = and i32 %181, 64
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %176

185:                                              ; preds = %176
  ret void
}

declare dso_local i32 @read_reg_le32(i32, i32) #1

declare dso_local i32 @write_reg_le32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
