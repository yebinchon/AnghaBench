; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_gmxx_rxx_int_en_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_gmxx_rxx_int_en_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_gmxx_rxx_int_en = type { i64, [72 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN30XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN31XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_interrupt_gmxx_rxx_int_en_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_rxx_int_en, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %9, i32 %10)
  %12 = call i64 @cvmx_read_csr(i32 %11)
  %13 = call i32 @cvmx_write_csr(i32 %8, i64 %12)
  %14 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to i64*
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @OCTEON_CN56XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i32 1, i32* %30, align 4
  %31 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i32 1, i32* %32, align 8
  %33 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i32 1, i32* %34, align 4
  %35 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  store i32 1, i32* %36, align 8
  %37 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 9
  store i32 1, i32* %38, align 4
  %39 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 10
  store i32 1, i32* %40, align 8
  %41 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 11
  store i32 1, i32* %42, align 4
  %43 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 12
  store i32 1, i32* %44, align 8
  %45 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 13
  store i32 1, i32* %46, align 4
  %47 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 14
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %18, %2
  %50 = load i32, i32* @OCTEON_CN30XX, align 4
  %51 = call i64 @OCTEON_IS_MODEL(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 10
  store i32 1, i32* %55, align 8
  %56 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 15
  store i32 1, i32* %57, align 4
  %58 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 11
  store i32 1, i32* %59, align 4
  %60 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  store i32 1, i32* %61, align 8
  %62 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 16
  store i32 1, i32* %63, align 8
  %64 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 13
  store i32 1, i32* %65, align 4
  %66 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 17
  store i32 1, i32* %67, align 4
  %68 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 14
  store i32 1, i32* %69, align 8
  %70 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 18
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %53, %49
  %73 = load i32, i32* @OCTEON_CN50XX, align 4
  %74 = call i64 @OCTEON_IS_MODEL(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 9
  store i32 1, i32* %78, align 4
  %79 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 10
  store i32 1, i32* %80, align 8
  %81 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 15
  store i32 1, i32* %82, align 4
  %83 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 11
  store i32 1, i32* %84, align 4
  %85 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 12
  store i32 1, i32* %86, align 8
  %87 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 16
  store i32 1, i32* %88, align 8
  %89 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 13
  store i32 1, i32* %90, align 4
  %91 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 14
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %76, %72
  %94 = load i32, i32* @OCTEON_CN38XX, align 4
  %95 = call i64 @OCTEON_IS_MODEL(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 10
  store i32 1, i32* %99, align 8
  %100 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 15
  store i32 1, i32* %101, align 4
  %102 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 11
  store i32 1, i32* %103, align 4
  %104 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 12
  store i32 1, i32* %105, align 8
  %106 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 16
  store i32 1, i32* %107, align 8
  %108 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 13
  store i32 1, i32* %109, align 4
  %110 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 17
  store i32 1, i32* %111, align 4
  %112 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 14
  store i32 1, i32* %113, align 8
  %114 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 18
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %97, %93
  %117 = load i32, i32* @OCTEON_CN31XX, align 4
  %118 = call i64 @OCTEON_IS_MODEL(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 10
  store i32 1, i32* %122, align 8
  %123 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 15
  store i32 1, i32* %124, align 4
  %125 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 11
  store i32 1, i32* %126, align 4
  %127 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 12
  store i32 1, i32* %128, align 8
  %129 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 16
  store i32 1, i32* %130, align 8
  %131 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 13
  store i32 1, i32* %132, align 4
  %133 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 17
  store i32 1, i32* %134, align 4
  %135 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 14
  store i32 1, i32* %136, align 8
  %137 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 18
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %120, %116
  %140 = load i32, i32* @OCTEON_CN58XX, align 4
  %141 = call i64 @OCTEON_IS_MODEL(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %139
  %144 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 9
  store i32 1, i32* %145, align 4
  %146 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 10
  store i32 1, i32* %147, align 8
  %148 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 15
  store i32 1, i32* %149, align 4
  %150 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 11
  store i32 1, i32* %151, align 4
  %152 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 12
  store i32 1, i32* %153, align 8
  %154 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 16
  store i32 1, i32* %155, align 8
  %156 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 13
  store i32 1, i32* %157, align 4
  %158 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 17
  store i32 1, i32* %159, align 4
  %160 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 14
  store i32 1, i32* %161, align 8
  %162 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 18
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %143, %139
  %165 = load i32, i32* @OCTEON_CN52XX, align 4
  %166 = call i64 @OCTEON_IS_MODEL(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %164
  %169 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 4
  store i32 1, i32* %178, align 8
  %179 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 5
  store i32 1, i32* %180, align 4
  %181 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 6
  store i32 0, i32* %182, align 8
  %183 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 7
  store i32 1, i32* %184, align 4
  %185 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 8
  store i32 0, i32* %186, align 8
  %187 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 9
  store i32 1, i32* %188, align 4
  %189 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 10
  store i32 1, i32* %190, align 8
  %191 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 11
  store i32 1, i32* %192, align 4
  %193 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 12
  store i32 1, i32* %194, align 8
  %195 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 13
  store i32 1, i32* %196, align 4
  %197 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to %struct.TYPE_2__*
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 14
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %168, %164
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @CVMX_GMXX_RXX_INT_EN(i32 %200, i32 %201)
  %203 = bitcast %union.cvmx_gmxx_rxx_int_en* %5 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @cvmx_write_csr(i32 %202, i64 %204)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_REG(i32, i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_EN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
