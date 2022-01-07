; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_cvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_neon_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@NS_FFI = common dso_local global i32 0, align 4
@NS_FD = common dso_local global i32 0, align 4
@NS_DF = common dso_local global i32 0, align 4
@NS_FF = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@NEON_CHECK_CC = common dso_local global i32 0, align 4
@NEON_CHECK_ARCH = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@__const.do_neon_cvt.enctab = private unnamed_addr constant [4 x i32] [i32 256, i32 16777472, i32 0, i32 16777216], align 16
@__const.do_neon_cvt.enctab.1 = private unnamed_addr constant [4 x i32] [i32 256, i32 384, i32 0, i32 128], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_neon_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_neon_cvt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = load i32, i32* @NS_FFI, align 4
  %7 = load i32, i32* @NS_FD, align 4
  %8 = load i32, i32* @NS_DF, align 4
  %9 = load i32, i32* @NS_FF, align 4
  %10 = load i32, i32* @NS_NULL, align 4
  %11 = call i32 @neon_select_shape(i32 130, i32 128, i32 %6, i32 131, i32 129, i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @neon_cvt_flavour(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @do_vfp_nsyn_cvt(i32 %17, i32 %18)
  br label %175

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  switch i32 %21, label %171 [
    i32 130, label %22
    i32 128, label %22
    i32 131, label %107
    i32 129, label %107
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* @NEON_CHECK_CC, align 4
  %24 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vfp_or_neon_is_neon(i32 %25)
  %27 = load i32, i32* @FAIL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %175

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %108

43:                                               ; preds = %36, %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 32, %47
  store i32 %48, i32* %3, align 4
  %49 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %49, i8* align 16 bitcast ([4 x i32]* @__const.do_neon_cvt.enctab to i8*), i64 16, i1 false)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %51 = call i32 @NEON_ENC_IMMED(i32 %50)
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %60 = or i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %61

61:                                               ; preds = %54, %43
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @LOW4(i32 %65)
  %67 = shl i32 %66, 12
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %69 = or i32 %68, %67
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @HI1(i32 %73)
  %75 = shl i32 %74, 22
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %77 = or i32 %76, %75
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LOW4(i32 %81)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %84 = or i32 %83, %82
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @HI1(i32 %88)
  %90 = shl i32 %89, 5
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %92 = or i32 %91, %90
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @neon_quad(i32 %93)
  %95 = shl i32 %94, 6
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %97 = or i32 %96, %95
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %99 = or i32 %98, 2097152
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %100 = load i32, i32* %3, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %103 = or i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %105 = call i8* @neon_dp_fixup(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %175

107:                                              ; preds = %20, %20
  br label %108

108:                                              ; preds = %107, %42
  %109 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %109, i8* align 16 bitcast ([4 x i32]* @__const.do_neon_cvt.enctab.1 to i8*), i64 16, i1 false)
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %111 = call i32 @NEON_ENC_INTEGER(i32 %110)
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %112 = load i32, i32* @NEON_CHECK_CC, align 4
  %113 = load i32, i32* @NEON_CHECK_ARCH, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @vfp_or_neon_is_neon(i32 %114)
  %116 = load i32, i32* @FAIL, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %175

119:                                              ; preds = %108
  %120 = load i32, i32* %2, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %128 = or i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %129

129:                                              ; preds = %122, %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @LOW4(i32 %133)
  %135 = shl i32 %134, 12
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %137 = or i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @HI1(i32 %141)
  %143 = shl i32 %142, 22
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %145 = or i32 %144, %143
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @LOW4(i32 %149)
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %152 = or i32 %151, %150
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @HI1(i32 %156)
  %158 = shl i32 %157, 5
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %160 = or i32 %159, %158
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @neon_quad(i32 %161)
  %163 = shl i32 %162, 6
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %165 = or i32 %164, %163
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %167 = or i32 %166, 524288
  store i32 %167, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %169 = call i8* @neon_dp_fixup(i32 %168)
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %175

171:                                              ; preds = %20
  %172 = load i32, i32* %1, align 4
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @do_vfp_nsyn_cvt(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %16, %29, %118, %171, %129, %61
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @neon_cvt_flavour(i32) #1

declare dso_local i32 @do_vfp_nsyn_cvt(i32, i32) #1

declare dso_local i32 @vfp_or_neon_is_neon(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NEON_ENC_IMMED(i32) #1

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_quad(i32) #1

declare dso_local i8* @neon_dp_fixup(i32) #1

declare dso_local i32 @NEON_ENC_INTEGER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
