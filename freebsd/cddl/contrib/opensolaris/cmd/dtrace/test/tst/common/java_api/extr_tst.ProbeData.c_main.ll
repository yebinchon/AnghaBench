; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/java_api/extr_tst.ProbeData.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/tst/common/java_api/extr_tst.ProbeData.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [6 x i8] c"\F9\C9\00\00\1C\01", align 1
@__const.main.b = private unnamed_addr constant [6 x i8] c"TE\00\00\1C\00", align 1
@__const.main.c = private unnamed_addr constant [6 x i8] c"TE\00\00\1C\01", align 1
@__const.main.d = private unnamed_addr constant [6 x i8] c"\F9\C9\00\00\1D\00", align 1
@__const.main.e = private unnamed_addr constant [6 x i8] c"TE\00\00\1C\00", align 1
@f_a = common dso_local global i32 0, align 4
@f_b = common dso_local global i32 0, align 4
@f_d = common dso_local global i32 0, align 4
@f_e = common dso_local global i32 0, align 4
@f_c = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  store i32 0, i32* %1, align 4
  %7 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.a, i32 0, i32 0), i64 6, i1 false)
  %8 = bitcast [6 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.b, i32 0, i32 0), i64 6, i1 false)
  %9 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.c, i32 0, i32 0), i64 6, i1 false)
  %10 = bitcast [6 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.d, i32 0, i32 0), i64 6, i1 false)
  %11 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.e, i32 0, i32 0), i64 6, i1 false)
  %12 = load i32, i32* @f_a, align 4
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %14 = call i32 @fN(i32 %12, i8* %13, i32 1)
  %15 = load i32, i32* @f_b, align 4
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %17 = call i32 @fN(i32 %15, i8* %16, i32 0)
  %18 = load i32, i32* @f_d, align 4
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %20 = call i32 @fN(i32 %18, i8* %19, i32 102)
  %21 = load i32, i32* @f_e, align 4
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %23 = call i32 @fN2(i32 %21, i8* %22, i32 -2)
  %24 = load i32, i32* @f_c, align 4
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %26 = call i32 @fN(i32 %24, i8* %25, i32 0)
  %27 = load i32, i32* @f_a, align 4
  %28 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %29 = call i32 @fN(i32 %27, i8* %28, i32 -1)
  %30 = load i32, i32* @f_d, align 4
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %32 = call i32 @fN(i32 %30, i8* %31, i32 101)
  %33 = load i32, i32* @f_e, align 4
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %35 = call i32 @fN(i32 %33, i8* %34, i32 -2)
  %36 = load i32, i32* @f_e, align 4
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %38 = call i32 @fN(i32 %36, i8* %37, i32 2)
  %39 = load i32, i32* @f_e, align 4
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %41 = call i32 @fN2(i32 %39, i8* %40, i32 2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fN(i32, i8*, i32) #2

declare dso_local i32 @fN2(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
