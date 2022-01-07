; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_test_modint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_test_modint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8*, i64, i32*)*, i32 (i32)*, i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)*, i32, i32 (i32*, i8*, i64, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*)*, i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32*)*, i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64, i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"Test modular integers: \00", align 1
@stdout = common dso_local global i32 0, align 4
@RNG = common dso_local global i32 0, align 4
@impl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Decode error\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  ea = \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"  p = \00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"  eb = \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_modint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_modint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [40 x i32], align 16
  %18 = alloca [40 x i32], align 16
  %19 = alloca [40 x i32], align 16
  %20 = alloca [60 x i32], align 16
  %21 = alloca [100 x i32], align 16
  %22 = alloca [40 x i32], align 16
  %23 = alloca [40 x i32], align 16
  %24 = alloca [40 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 @fflush(i32 %28)
  %30 = load i32, i32* @RNG, align 4
  %31 = call i32 @gmp_randinit_mt(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mpz_init(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mpz_init(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mpz_init(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mpz_init(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mpz_init(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @time(i32* null)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @mpz_set_ui(i32 %42, i32 %44)
  %46 = load i32, i32* @RNG, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @gmp_randseed(i32 %46, i32 %47)
  store i32 2, i32* %3, align 4
  br label %49

49:                                               ; preds = %416, %0
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 %50, 128
  br i1 %51, label %52, label %419

52:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %409, %52
  %54 = load i32, i32* %1, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %412

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @rand_prime(i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RNG, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @mpz_urandomm(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @RNG, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mpz_urandomm(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @RNG, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 60
  %72 = call i32 @mpz_urandomb(i32 %68, i32 %69, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @mpz_sgn(i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @mpz_set_ui(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %76, %56
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @mpz_export(i8* %80, i64* %13, i32 1, i32 1, i32 0, i32 0, i32 %81)
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @mpz_export(i8* %83, i64* %14, i32 1, i32 1, i32 0, i32 0, i32 %84)
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @mpz_export(i8* %86, i64* %15, i32 1, i32 1, i32 0, i32 0, i32 %87)
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mpz_export(i8* %89, i64* %16, i32 1, i32 1, i32 0, i32 0, i32 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 10
  %94 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %93, align 8
  %95 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %97 = load i64, i64* %13, align 8
  %98 = call i32 %94(i32* %95, i8* %96, i64 %97)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %100, align 8
  %102 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %106 = call i32 %101(i32* %102, i8* %103, i64 %104, i32* %105)
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %120

108:                                              ; preds = %79
  %109 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @print_z(i32 %111)
  %113 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %114 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %115 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %116 = call i32 @print_u(i32* %115)
  %117 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @EXIT_FAILURE, align 4
  %119 = call i32 @exit(i32 %118) #3
  unreachable

120:                                              ; preds = %79
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32 (i32)*, i32 (i32)** %122, align 8
  %124 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %123(i32 %125)
  store i32 %126, i32* %26, align 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %128, align 8
  %130 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %134 = call i32 %129(i32* %130, i8* %131, i64 %132, i32* %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %148

136:                                              ; preds = %120
  %137 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %138 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @print_z(i32 %139)
  %141 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %142 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %143 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %144 = call i32 @print_u(i32* %143)
  %145 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EXIT_FAILURE, align 4
  %147 = call i32 @exit(i32 %146) #3
  unreachable

148:                                              ; preds = %120
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 10
  %151 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %150, align 8
  %152 = getelementptr inbounds [60 x i32], [60 x i32]* %20, i64 0, i64 0
  %153 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %154 = load i64, i64* %16, align 8
  %155 = call i32 %151(i32* %152, i8* %153, i64 %154)
  %156 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @check_eqz(i32* %156, i32 %157)
  %159 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @check_eqz(i32* %159, i32 %160)
  %162 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @check_eqz(i32* %162, i32 %163)
  %165 = getelementptr inbounds [60 x i32], [60 x i32]* %20, i64 0, i64 0
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @check_eqz(i32* %165, i32 %166)
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %169, align 8
  %171 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %172 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %175 = call i32 %170(i32* %171, i8* %172, i64 %173, i32* %174)
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %177, align 8
  %179 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %180 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %181 = load i64, i64* %15, align 8
  %182 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %183 = call i32 %178(i32* %179, i8* %180, i64 %181, i32* %182)
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %185, align 8
  %187 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %188 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %189 = call i32 %186(i32* %187, i32* %188, i32 1)
  store i32 %189, i32* %25, align 4
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %191, align 8
  %193 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %194 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %195 = call i32 %192(i32* %193, i32* %194, i32 0)
  %196 = xor i32 %195, 1
  %197 = load i32, i32* %25, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %25, align 4
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 3
  %201 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %200, align 8
  %202 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %203 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %204 = load i32, i32* %25, align 4
  %205 = call i32 %201(i32* %202, i32* %203, i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @mpz_add(i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @mpz_mod(i32 %210, i32 %211, i32 %212)
  %214 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @check_eqz(i32* %214, i32 %215)
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %218, align 8
  %220 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %221 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %222 = load i64, i64* %14, align 8
  %223 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %224 = call i32 %219(i32* %220, i8* %221, i64 %222, i32* %223)
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %226, align 8
  %228 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %229 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %230 = load i64, i64* %15, align 8
  %231 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %232 = call i32 %227(i32* %228, i8* %229, i64 %230, i32* %231)
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 2
  %235 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %234, align 8
  %236 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %237 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 3
  %240 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %239, align 8
  %241 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %242 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %243 = call i32 %240(i32* %241, i32* %242, i32 1)
  %244 = call i32 %235(i32* %236, i32* %237, i32 %243)
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @mpz_sub(i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @mpz_mod(i32 %249, i32 %250, i32 %251)
  %253 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @check_eqz(i32* %253, i32 %254)
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 11
  %258 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %257, align 8
  %259 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %260 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %263 = call i32 %258(i32* %259, i8* %260, i64 %261, i32* %262)
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @mpz_mod(i32 %264, i32 %265, i32 %266)
  %268 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @check_eqz(i32* %268, i32 %269)
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 10
  %273 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %272, align 8
  %274 = getelementptr inbounds [60 x i32], [60 x i32]* %20, i64 0, i64 0
  %275 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %276 = load i64, i64* %16, align 8
  %277 = call i32 %273(i32* %274, i8* %275, i64 %276)
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 9
  %280 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %279, align 8
  %281 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %282 = getelementptr inbounds [60 x i32], [60 x i32]* %20, i64 0, i64 0
  %283 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %284 = call i32 %280(i32* %281, i32* %282, i32* %283)
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %4, align 4
  %288 = call i32 @mpz_mod(i32 %285, i32 %286, i32 %287)
  %289 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @check_eqz(i32* %289, i32 %290)
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %293, align 8
  %295 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %296 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %297 = load i64, i64* %14, align 8
  %298 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %299 = call i32 %294(i32* %295, i8* %296, i64 %297, i32* %298)
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 7
  %302 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %301, align 8
  %303 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %304 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %305 = call i32 %302(i32* %303, i32* %304)
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* %3, align 4
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %308, %311
  %313 = sub nsw i32 %312, 1
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 8
  %317 = sdiv i32 %313, %316
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = mul nsw i32 %317, %320
  %322 = call i32 @mpz_mul_2exp(i32 %306, i32 %307, i32 %321)
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = load i32, i32* %4, align 4
  %326 = call i32 @mpz_mod(i32 %323, i32 %324, i32 %325)
  %327 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %328 = load i32, i32* %8, align 4
  %329 = call i32 @check_eqz(i32* %327, i32 %328)
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 8
  %332 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %331, align 8
  %333 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %334 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %335 = load i32, i32* %26, align 4
  %336 = call i32 %332(i32* %333, i32* %334, i32 %335)
  %337 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %338 = load i32, i32* %5, align 4
  %339 = call i32 @check_eqz(i32* %337, i32 %338)
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %341, align 8
  %343 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %344 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %345 = load i64, i64* %14, align 8
  %346 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %347 = call i32 %342(i32* %343, i8* %344, i64 %345, i32* %346)
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  %350 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %349, align 8
  %351 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %352 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %353 = load i64, i64* %15, align 8
  %354 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %355 = call i32 %350(i32* %351, i8* %352, i64 %353, i32* %354)
  %356 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 7
  %358 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %357, align 8
  %359 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %360 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %361 = call i32 %358(i32* %359, i32* %360)
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %363 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i32 0, i32 6
  %364 = load i32 (i32*, i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32*, i32)** %363, align 8
  %365 = getelementptr inbounds [40 x i32], [40 x i32]* %22, i64 0, i64 0
  %366 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %367 = getelementptr inbounds [40 x i32], [40 x i32]* %19, i64 0, i64 0
  %368 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %369 = load i32, i32* %26, align 4
  %370 = call i32 %364(i32* %365, i32* %366, i32* %367, i32* %368, i32 %369)
  %371 = load i32, i32* %8, align 4
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* %6, align 4
  %374 = call i32 @mpz_mul(i32 %371, i32 %372, i32 %373)
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* %4, align 4
  %378 = call i32 @mpz_mod(i32 %375, i32 %376, i32 %377)
  %379 = getelementptr inbounds [40 x i32], [40 x i32]* %22, i64 0, i64 0
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @check_eqz(i32* %379, i32 %380)
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  %384 = load i32 (i32*, i8*, i64, i32*)*, i32 (i32*, i8*, i64, i32*)** %383, align 8
  %385 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %386 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %387 = load i64, i64* %14, align 8
  %388 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %389 = call i32 %384(i32* %385, i8* %386, i64 %387, i32* %388)
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 5
  %392 = load i32 (i32*, i8*, i64, i32*, i32, i32*, i32*)*, i32 (i32*, i8*, i64, i32*, i32, i32*, i32*)** %391, align 8
  %393 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %394 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %395 = load i64, i64* %16, align 8
  %396 = getelementptr inbounds [40 x i32], [40 x i32]* %17, i64 0, i64 0
  %397 = load i32, i32* %26, align 4
  %398 = getelementptr inbounds [40 x i32], [40 x i32]* %22, i64 0, i64 0
  %399 = getelementptr inbounds [40 x i32], [40 x i32]* %23, i64 0, i64 0
  %400 = call i32 %392(i32* %393, i8* %394, i64 %395, i32* %396, i32 %397, i32* %398, i32* %399)
  %401 = load i32, i32* %8, align 4
  %402 = load i32, i32* %5, align 4
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* %4, align 4
  %405 = call i32 @mpz_powm(i32 %401, i32 %402, i32 %403, i32 %404)
  %406 = getelementptr inbounds [40 x i32], [40 x i32]* %18, i64 0, i64 0
  %407 = load i32, i32* %8, align 4
  %408 = call i32 @check_eqz(i32* %406, i32 %407)
  br label %409

409:                                              ; preds = %148
  %410 = load i32, i32* %1, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %1, align 4
  br label %53

412:                                              ; preds = %53
  %413 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %414 = load i32, i32* @stdout, align 4
  %415 = call i32 @fflush(i32 %414)
  br label %416

416:                                              ; preds = %412
  %417 = load i32, i32* %3, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %3, align 4
  br label %49

419:                                              ; preds = %49
  %420 = load i32, i32* %4, align 4
  %421 = call i32 @mpz_clear(i32 %420)
  %422 = load i32, i32* %5, align 4
  %423 = call i32 @mpz_clear(i32 %422)
  %424 = load i32, i32* %6, align 4
  %425 = call i32 @mpz_clear(i32 %424)
  %426 = load i32, i32* %7, align 4
  %427 = call i32 @mpz_clear(i32 %426)
  %428 = load i32, i32* %8, align 4
  %429 = call i32 @mpz_clear(i32 %428)
  %430 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %431 = load i32, i32* @stdout, align 4
  %432 = call i32 @fflush(i32 %431)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gmp_randinit_mt(i32) #1

declare dso_local i32 @mpz_init(i32) #1

declare dso_local i32 @mpz_set_ui(i32, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @gmp_randseed(i32, i32) #1

declare dso_local i32 @rand_prime(i32, i32) #1

declare dso_local i32 @mpz_urandomm(i32, i32, i32) #1

declare dso_local i32 @mpz_urandomb(i32, i32, i32) #1

declare dso_local i64 @mpz_sgn(i32) #1

declare dso_local i32 @mpz_export(i8*, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_z(i32) #1

declare dso_local i32 @print_u(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @check_eqz(i32*, i32) #1

declare dso_local i32 @mpz_add(i32, i32, i32) #1

declare dso_local i32 @mpz_mod(i32, i32, i32) #1

declare dso_local i32 @mpz_sub(i32, i32, i32) #1

declare dso_local i32 @mpz_mul_2exp(i32, i32, i32) #1

declare dso_local i32 @mpz_mul(i32, i32, i32) #1

declare dso_local i32 @mpz_powm(i32, i32, i32, i32) #1

declare dso_local i32 @mpz_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
