; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_seqhead_to_package.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_seqhead_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32, i32 (%struct.go7007*, i8*, i32)*)* @seqhead_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqhead_to_package(%struct.go7007* %0, i32* %1, i32 %2, i32 (%struct.go7007*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.go7007*, i8*, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [40 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [100 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.go7007*, i8*, i32)* %3, i32 (%struct.go7007*, i8*, i32)** %8, align 8
  %14 = load %struct.go7007*, %struct.go7007** %5, align 8
  %15 = call i32 @vti_bitlen(%struct.go7007* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.go7007*, %struct.go7007** %5, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.go7007*, %struct.go7007** %5, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  %23 = load %struct.go7007*, %struct.go7007** %5, align 8
  %24 = getelementptr inbounds %struct.go7007, %struct.go7007* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  %29 = mul nsw i32 %22, %28
  store i32 %29, i32* %10, align 4
  %30 = bitcast [40 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 40, i1 false)
  %31 = load i32 (%struct.go7007*, i8*, i32)*, i32 (%struct.go7007*, i8*, i32)** %8, align 8
  %32 = load %struct.go7007*, %struct.go7007** %5, align 8
  %33 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %34 = call i32 %31(%struct.go7007* %32, i8* %33, i32 1)
  store i32 %34, i32* %12, align 4
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %13, i64 0, i64 0
  store i32 8198, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 48904, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 48905, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 49138, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 49139, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 49126, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 49127, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %10, align 4
  %55 = sdiv i32 %54, 1000
  %56 = shl i32 %55, 8
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 8199, i32* %75, align 4
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 51200, i32* %77, align 4
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 2
  %80 = load i8, i8* %79, align 2
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %82, %85
  store i32 %86, i32* %78, align 4
  %87 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 51201, i32* %87, align 4
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 4
  %90 = load i8, i8* %89, align 4
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 5
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %92, %95
  store i32 %96, i32* %88, align 4
  %97 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 51202, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 6
  %100 = load i8, i8* %99, align 2
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 8
  %103 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 7
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %102, %105
  store i32 %106, i32* %98, align 4
  %107 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 51203, i32* %107, align 4
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 8
  %110 = load i8, i8* %109, align 8
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 8
  %113 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 9
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %112, %115
  store i32 %116, i32* %108, align 4
  %117 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 50182, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 64, i32* %118, align 4
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 50183, i32* %119, align 4
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 64
  store i32 %122, i32* %120, align 4
  %123 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 50715, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 1, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 0, i32* %133, align 4
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 8206, i32* %141, align 4
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 51208, i32* %143, align 4
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 10
  %146 = load i8, i8* %145, align 2
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 8
  %149 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 11
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = or i32 %148, %151
  store i32 %152, i32* %144, align 4
  %153 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 51209, i32* %153, align 4
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 12
  %156 = load i8, i8* %155, align 4
  %157 = zext i8 %156 to i32
  %158 = shl i32 %157, 8
  %159 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 13
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %158, %161
  store i32 %162, i32* %154, align 4
  %163 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 51210, i32* %163, align 4
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 14
  %166 = load i8, i8* %165, align 2
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 8
  %169 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 15
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %168, %171
  store i32 %172, i32* %164, align 4
  %173 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 51211, i32* %173, align 4
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 16
  %176 = load i8, i8* %175, align 16
  %177 = zext i8 %176 to i32
  %178 = shl i32 %177, 8
  %179 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 17
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = or i32 %178, %181
  store i32 %182, i32* %174, align 4
  %183 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 51212, i32* %183, align 4
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 18
  %186 = load i8, i8* %185, align 2
  %187 = zext i8 %186 to i32
  %188 = shl i32 %187, 8
  %189 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 19
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %188, %191
  store i32 %192, i32* %184, align 4
  %193 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 51213, i32* %193, align 4
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 20
  %196 = load i8, i8* %195, align 4
  %197 = zext i8 %196 to i32
  %198 = shl i32 %197, 8
  %199 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 21
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %198, %201
  store i32 %202, i32* %194, align 4
  %203 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 51214, i32* %203, align 4
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 22
  %206 = load i8, i8* %205, align 2
  %207 = zext i8 %206 to i32
  %208 = shl i32 %207, 8
  %209 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 23
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %208, %211
  store i32 %212, i32* %204, align 4
  %213 = getelementptr inbounds i32, i32* %204, i64 1
  store i32 51215, i32* %213, align 4
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 24
  %216 = load i8, i8* %215, align 8
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 8
  %219 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 25
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = or i32 %218, %221
  store i32 %222, i32* %214, align 4
  %223 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 51216, i32* %223, align 4
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 26
  %226 = load i8, i8* %225, align 2
  %227 = zext i8 %226 to i32
  %228 = shl i32 %227, 8
  %229 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 27
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = or i32 %228, %231
  store i32 %232, i32* %224, align 4
  %233 = getelementptr inbounds i32, i32* %224, i64 1
  store i32 51217, i32* %233, align 4
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 28
  %236 = load i8, i8* %235, align 4
  %237 = zext i8 %236 to i32
  %238 = shl i32 %237, 8
  %239 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 29
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = or i32 %238, %241
  store i32 %242, i32* %234, align 4
  %243 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 51218, i32* %243, align 4
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 30
  %246 = load i8, i8* %245, align 2
  %247 = zext i8 %246 to i32
  %248 = shl i32 %247, 8
  %249 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 31
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = or i32 %248, %251
  store i32 %252, i32* %244, align 4
  %253 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 51219, i32* %253, align 4
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 32
  %256 = load i8, i8* %255, align 16
  %257 = zext i8 %256 to i32
  %258 = shl i32 %257, 8
  %259 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 33
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = or i32 %258, %261
  store i32 %262, i32* %254, align 4
  %263 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 51220, i32* %263, align 4
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 34
  %266 = load i8, i8* %265, align 2
  %267 = zext i8 %266 to i32
  %268 = shl i32 %267, 8
  %269 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 35
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = or i32 %268, %271
  store i32 %272, i32* %264, align 4
  %273 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 51221, i32* %273, align 4
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 36
  %276 = load i8, i8* %275, align 4
  %277 = zext i8 %276 to i32
  %278 = shl i32 %277, 8
  %279 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 37
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %278, %281
  store i32 %282, i32* %274, align 4
  %283 = getelementptr inbounds i32, i32* %274, i64 1
  store i32 0, i32* %283, align 4
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 0, i32* %284, align 4
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  store i32 0, i32* %285, align 4
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 0, i32* %286, align 4
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32 0, i32* %287, align 4
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 0, i32* %288, align 4
  %289 = load i32*, i32** %6, align 8
  %290 = getelementptr inbounds [100 x i32], [100 x i32]* %13, i64 0, i64 0
  %291 = load i32, i32* %7, align 4
  %292 = call i32 @copy_packages(i32* %289, i32* %290, i32 3, i32 %291)
  ret i32 %292
}

declare dso_local i32 @vti_bitlen(%struct.go7007*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
