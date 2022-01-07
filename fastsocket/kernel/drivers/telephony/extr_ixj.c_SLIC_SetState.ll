; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_SLIC_SetState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_SLIC_SetState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }

@QTI_PHONECARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_18__*)* @SLIC_SetState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SLIC_SetState(i32 %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QTI_PHONECARD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %114

11:                                               ; preds = %2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %113

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %86 [
    i32 128, label %19
    i32 133, label %19
    i32 130, label %32
    i32 132, label %56
    i32 129, label %56
    i32 135, label %56
    i32 134, label %85
    i32 131, label %85
  ]

19:                                               ; preds = %17, %17
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  store i32 1, i32* %5, align 4
  br label %87

32:                                               ; preds = %17
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %42, %37
  br label %87

56:                                               ; preds = %17, %17, %17
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61, %56
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %76

71:                                               ; preds = %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  store i32 1, i32* %5, align 4
  br label %87

85:                                               ; preds = %17, %17
  br label %86

86:                                               ; preds = %17, %85
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %76, %55, %19
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store i32 3, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %100, %104
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 0
  %110 = call i32 @outw_p(i32 %105, i64 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_18__* %111)
  br label %113

113:                                              ; preds = %87, %11
  br label %334

114:                                              ; preds = %2
  %115 = load i32, i32* %3, align 4
  switch i32 %115, label %332 [
    i32 133, label %116
    i32 130, label %143
    i32 135, label %170
    i32 132, label %197
    i32 128, label %224
    i32 129, label %251
    i32 134, label %278
    i32 131, label %305
  ]

116:                                              ; preds = %114
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i32 @outb_p(i32 %136, i32 %141)
  store i32 1, i32* %5, align 4
  br label %333

143:                                              ; preds = %114
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  store i32 0, i32* %155, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  store i32 1, i32* %159, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, 1
  %168 = trunc i64 %167 to i32
  %169 = call i32 @outb_p(i32 %163, i32 %168)
  store i32 1, i32* %5, align 4
  br label %333

170:                                              ; preds = %114
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  store i32 0, i32* %182, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  store i32 0, i32* %186, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 1
  %195 = trunc i64 %194 to i32
  %196 = call i32 @outb_p(i32 %190, i32 %195)
  store i32 1, i32* %5, align 4
  br label %333

197:                                              ; preds = %114
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  store i32 0, i32* %209, align 4
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 3
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 1
  %222 = trunc i64 %221 to i32
  %223 = call i32 @outb_p(i32 %217, i32 %222)
  store i32 1, i32* %5, align 4
  br label %333

224:                                              ; preds = %114
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  store i32 0, i32* %228, align 4
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 2
  store i32 1, i32* %236, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  store i32 0, i32* %240, align 4
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  %249 = trunc i64 %248 to i32
  %250 = call i32 @outb_p(i32 %244, i32 %249)
  store i32 1, i32* %5, align 4
  br label %333

251:                                              ; preds = %114
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 4
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  store i32 0, i32* %259, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 2
  store i32 1, i32* %263, align 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 3
  store i32 1, i32* %267, align 4
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  %276 = trunc i64 %275 to i32
  %277 = call i32 @outb_p(i32 %271, i32 %276)
  store i32 1, i32* %5, align 4
  br label %333

278:                                              ; preds = %114
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  store i32 0, i32* %282, align 4
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 1
  store i32 1, i32* %286, align 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  store i32 1, i32* %290, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 3
  store i32 0, i32* %294, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, 1
  %303 = trunc i64 %302 to i32
  %304 = call i32 @outb_p(i32 %298, i32 %303)
  store i32 1, i32* %5, align 4
  br label %333

305:                                              ; preds = %114
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 1
  store i32 1, i32* %313, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 2
  store i32 1, i32* %317, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 3
  store i32 0, i32* %321, align 4
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 1
  %330 = trunc i64 %329 to i32
  %331 = call i32 @outb_p(i32 %325, i32 %330)
  store i32 1, i32* %5, align 4
  br label %333

332:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %332, %305, %278, %251, %224, %197, %170, %143, %116
  br label %334

334:                                              ; preds = %333, %113
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @ixj_PCcontrol_wait(%struct.TYPE_18__*) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
