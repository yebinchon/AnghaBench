; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_attr_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dt_attr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@dt_attr_str.stability = internal constant [9 x i8] c"ipoxuesS\00", align 1
@dt_attr_str.class = internal constant [7 x i8] c"uCpgIc\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"[%c/%c/%c]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[%u/%u/%u]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dt_attr_str(i64 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = bitcast %struct.TYPE_3__* %5 to i8*
  %12 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 9
  br i1 %16, label %17, label %46

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 9
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 7
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* @dt_attr_str.stability, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [9 x i8], [9 x i8]* @dt_attr_str.stability, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x i8], [7 x i8]* @dt_attr_str.class, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %34, i8 signext %39, i8 signext %44)
  br label %59

46:                                               ; preds = %22, %17, %4
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = trunc i32 %56 to i8
  %58 = call i32 @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8 signext %51, i8 signext %54, i8 signext %57)
  br label %59

59:                                               ; preds = %46, %27
  %60 = load i8*, i8** %7, align 8
  ret i8* %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8 signext, i8 signext, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
