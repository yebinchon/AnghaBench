; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_proc_get_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_proc_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"\0A####################page 0##################\0A \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AD:  %2x > \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%2x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\0A####################page 1##################\0A \00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\0A####################page 3##################\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_registers(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 255, i32* %17, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %14, align 4
  %26 = sub nsw i32 %24, %25
  %27 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %23, i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %80, %6
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %16, align 4
  %45 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %40, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %75, %36
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp sle i32 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %80

59:                                               ; preds = %57
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct.net_device*, %struct.net_device** %13, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @read_nic_byte(%struct.net_device* %67, i32 %68)
  %70 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %50

80:                                               ; preds = %57
  br label %32

81:                                               ; preds = %32
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %155, %81
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %156

110:                                              ; preds = %106
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %16, align 4
  %119 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %114, i32 %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %150, %110
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 16
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp sle i32 %128, %129
  br label %131

131:                                              ; preds = %127, %124
  %132 = phi i1 [ false, %124 ], [ %130, %127 ]
  br i1 %132, label %133, label %155

133:                                              ; preds = %131
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load %struct.net_device*, %struct.net_device** %13, align 8
  %142 = load i32, i32* %16, align 4
  %143 = or i32 256, %142
  %144 = call i32 @read_nic_byte(%struct.net_device* %141, i32 %143)
  %145 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %137, i32 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %133
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %124

155:                                              ; preds = %131
  br label %106

156:                                              ; preds = %106
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %160, i32 %163, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %169

169:                                              ; preds = %218, %156
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %219

173:                                              ; preds = %169
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32, i32* %16, align 4
  %182 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %177, i32 %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %213, %173
  %188 = load i32, i32* %15, align 4
  %189 = icmp slt i32 %188, 16
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %17, align 4
  %193 = icmp sle i32 %191, %192
  br label %194

194:                                              ; preds = %190, %187
  %195 = phi i1 [ false, %187 ], [ %193, %190 ]
  br i1 %195, label %196, label %218

196:                                              ; preds = %194
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %14, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load %struct.net_device*, %struct.net_device** %13, align 8
  %205 = load i32, i32* %16, align 4
  %206 = or i32 768, %205
  %207 = call i32 @read_nic_byte(%struct.net_device* %204, i32 %206)
  %208 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %200, i32 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %14, align 4
  br label %213

213:                                              ; preds = %196
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %187

218:                                              ; preds = %194
  br label %169

219:                                              ; preds = %169
  %220 = load i32*, i32** %11, align 8
  store i32 1, i32* %220, align 4
  %221 = load i32, i32* %14, align 4
  ret i32 %221
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
