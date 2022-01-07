; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_parse_interrupt_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_parse_interrupt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_interrupt_status = type { i32, i8*, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_irqenable = type { i32, i8*, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_interrupt_status*, i32)* @vfe_parse_interrupt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_parse_interrupt_status(%struct.vfe_interrupt_status* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfe_irqenable, align 8
  %5 = alloca i8*, align 8
  store i32 %1, i32* %3, align 4
  %6 = call i32 @memset(%struct.vfe_irqenable* %4, i32 0, i32 288)
  %7 = bitcast %struct.vfe_interrupt_status* %0 to %struct.vfe_irqenable*
  %8 = call i32 @memset(%struct.vfe_irqenable* %7, i32 0, i32 288)
  %9 = bitcast i32* %3 to %struct.vfe_irqenable*
  %10 = bitcast %struct.vfe_irqenable* %4 to i8*
  %11 = bitcast %struct.vfe_irqenable* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 288, i1 false)
  %12 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 31
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 31
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 4
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 38
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 38
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 37
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 37
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 3
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 30
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 30
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 36
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 36
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 7
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 35
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 35
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 25
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 25
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 24
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 24
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 22
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 22
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 21
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 21
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 34
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 34
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 5
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 6
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 33
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 33
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 23
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 23
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 20
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 20
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 28
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 28
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 29
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 29
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 32
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 32
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 17
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 17
  store i64 %82, i64* %83, align 8
  %84 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 16
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 16
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 15
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 15
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 14
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 14
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 13
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 13
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 12
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 12
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 11
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 27
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 27
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.vfe_irqenable, %struct.vfe_irqenable* %4, i32 0, i32 26
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 26
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 31
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %2
  %112 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 30
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 29
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 28
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 27
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 26
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %131, %127, %123, %119, %115, %111, %2
  %136 = phi i1 [ true, %127 ], [ true, %123 ], [ true, %119 ], [ true, %115 ], [ true, %111 ], [ true, %2 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %5, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 9
  store i8* %140, i8** %141, align 8
  %142 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 25
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 24
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 23
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %149, %145, %135
  %154 = phi i1 [ true, %145 ], [ true, %135 ], [ %152, %149 ]
  %155 = zext i1 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %5, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 18
  store i8* %158, i8** %159, align 8
  %160 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 22
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 21
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 20
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br label %171

171:                                              ; preds = %167, %163, %153
  %172 = phi i1 [ true, %163 ], [ true, %153 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = inttoptr i64 %174 to i8*
  store i8* %175, i8** %5, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 19
  store i8* %176, i8** %177, align 8
  %178 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 19
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %171
  %182 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 18
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br label %185

185:                                              ; preds = %181, %171
  %186 = phi i1 [ true, %171 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 0
  store i32 %187, i32* %188, align 8
  %189 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 17
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 16
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 15
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br label %200

200:                                              ; preds = %196, %192, %185
  %201 = phi i1 [ true, %192 ], [ true, %185 ], [ %199, %196 ]
  %202 = zext i1 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  store i8* %204, i8** %5, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 8
  store i8* %205, i8** %206, align 8
  %207 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 14
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 13
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 12
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 11
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br label %222

222:                                              ; preds = %218, %214, %210, %200
  %223 = phi i1 [ true, %214 ], [ true, %210 ], [ true, %200 ], [ %221, %218 ]
  %224 = zext i1 %223 to i32
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i8*
  store i8* %226, i8** %5, align 8
  %227 = load i8*, i8** %5, align 8
  %228 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 10
  store i8* %227, i8** %228, align 8
  %229 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 9
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %264, label %232

232:                                              ; preds = %222
  %233 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %264, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 8
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %264, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %264, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br label %264

264:                                              ; preds = %260, %256, %252, %248, %244, %240, %236, %232, %222
  %265 = phi i1 [ true, %256 ], [ true, %252 ], [ true, %248 ], [ true, %244 ], [ true, %240 ], [ true, %236 ], [ true, %232 ], [ true, %222 ], [ %263, %260 ]
  %266 = zext i1 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  store i8* %268, i8** %5, align 8
  %269 = load i8*, i8** %5, align 8
  %270 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %0, i32 0, i32 1
  store i8* %269, i8** %270, align 8
  ret void
}

declare dso_local i32 @memset(%struct.vfe_irqenable*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
