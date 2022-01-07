; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cvt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@NS_DDI = common dso_local global i32 0, align 4
@NS_QQI = common dso_local global i32 0, align 4
@NS_FFI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ftosls\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ftouls\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fsltos\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fultos\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ftosld\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ftould\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"fsltod\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fultod\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"fshtos\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"fuhtos\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"fshtod\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fuhtod\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"ftoshs\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"ftouhs\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ftoshd\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"ftouhd\00", align 1
@__const.do_vfp_nsyn_cvt.enc = private unnamed_addr constant [18 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)], align 16
@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [43 x i8] c"operands 0 and 1 must be the same register\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ftosizs\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ftouizs\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"fsitos\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"fuitos\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"fcvtsd\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"fcvtds\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ftosizd\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ftouizd\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"fsitod\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"fuitod\00", align 1
@__const.do_vfp_nsyn_cvt.enc.27 = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_vfp_nsyn_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_cvt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [18 x i8*], align 16
  %7 = alloca [10 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NS_DDI, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NS_QQI, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NS_FFI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15, %11, %2
  %20 = bitcast [18 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([18 x i8*]* @__const.do_vfp_nsyn_cvt.enc to i8*), i64 144, i1 false)
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds [18 x i8*], [18 x i8*]* %6, i64 0, i64 0
  %26 = call i64 @ARRAY_SIZE(i8** %25)
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x i8*], [18 x i8*]* %6, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %45 = call i32 @constraint(i32 %43, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 2
  %50 = bitcast %struct.TYPE_3__* %47 to i8*
  %51 = bitcast %struct.TYPE_3__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 8, i1 false)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 2
  %54 = call i32 @memset(%struct.TYPE_3__* %53, i8 signext 0, i32 8)
  br label %55

55:                                               ; preds = %29, %23, %19
  br label %72

56:                                               ; preds = %15
  %57 = bitcast [10 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 16 bitcast ([10 x i8*]* @__const.do_vfp_nsyn_cvt.enc.27 to i8*), i64 80, i1 false)
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %7, i64 0, i64 0
  %63 = call i64 @ARRAY_SIZE(i8** %62)
  %64 = trunc i64 %63 to i32
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %7, i64 0, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %66, %60, %56
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @do_vfp_nsyn_opcode(i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @constraint(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_3__*, i8 signext, i32) #2

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
