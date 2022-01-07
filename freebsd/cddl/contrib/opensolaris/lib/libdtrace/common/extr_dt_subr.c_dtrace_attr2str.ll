; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_attr2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_attr2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dtrace_attr2str(i64 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %14, align 4
  %15 = bitcast %struct.TYPE_3__* %6 to i8*
  %16 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @dtrace_stability_name(i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @dtrace_stability_name(i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @dtrace_class_name(i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %4
  store i8* null, i8** %5, align 8
  br label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39, i8* %40)
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i8*, i8** %5, align 8
  ret i8* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @dtrace_stability_name(i32) #2

declare dso_local i8* @dtrace_class_name(i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
