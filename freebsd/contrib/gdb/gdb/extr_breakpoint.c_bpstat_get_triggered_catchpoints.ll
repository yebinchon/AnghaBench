; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_bpstat_get_triggered_catchpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_bpstat_get_triggered_catchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpstats = type { %struct.bpstats*, %struct.breakpoint* }
%struct.breakpoint = type { i64, i8* }

@bp_catch_load = common dso_local global i64 0, align 8
@bp_catch_unload = common dso_local global i64 0, align 8
@bp_catch_catch = common dso_local global i64 0, align 8
@bp_catch_throw = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpstat_get_triggered_catchpoints(%struct.bpstats* %0, %struct.bpstats** %1) #0 {
  %3 = alloca %struct.bpstats*, align 8
  %4 = alloca %struct.bpstats**, align 8
  %5 = alloca [1 x %struct.bpstats], align 16
  %6 = alloca %struct.bpstats*, align 8
  %7 = alloca %struct.breakpoint*, align 8
  %8 = alloca i8*, align 8
  store %struct.bpstats* %0, %struct.bpstats** %3, align 8
  store %struct.bpstats** %1, %struct.bpstats*** %4, align 8
  %9 = getelementptr inbounds [1 x %struct.bpstats], [1 x %struct.bpstats]* %5, i64 0, i64 0
  store %struct.bpstats* %9, %struct.bpstats** %6, align 8
  %10 = load %struct.bpstats**, %struct.bpstats*** %4, align 8
  %11 = call i32 @bpstat_clear(%struct.bpstats** %10)
  %12 = getelementptr inbounds [1 x %struct.bpstats], [1 x %struct.bpstats]* %5, i64 0, i64 0
  %13 = getelementptr inbounds %struct.bpstats, %struct.bpstats* %12, i32 0, i32 0
  store %struct.bpstats* null, %struct.bpstats** %13, align 16
  br label %14

14:                                               ; preds = %81, %2
  %15 = load %struct.bpstats*, %struct.bpstats** %3, align 8
  %16 = icmp ne %struct.bpstats* %15, null
  br i1 %16, label %17, label %85

17:                                               ; preds = %14
  %18 = load %struct.bpstats*, %struct.bpstats** %3, align 8
  %19 = getelementptr inbounds %struct.bpstats, %struct.bpstats* %18, i32 0, i32 1
  %20 = load %struct.breakpoint*, %struct.breakpoint** %19, align 8
  store %struct.breakpoint* %20, %struct.breakpoint** %7, align 8
  %21 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %22 = icmp eq %struct.breakpoint* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %85

24:                                               ; preds = %17
  %25 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %26 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @bp_catch_load, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %32 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @bp_catch_unload, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %38 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @bp_catch_catch, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %44 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @bp_catch_throw, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %81

49:                                               ; preds = %42, %36, %30, %24
  %50 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %51 = load %struct.bpstats*, %struct.bpstats** %6, align 8
  %52 = call %struct.bpstats* @bpstat_alloc(%struct.breakpoint* %50, %struct.bpstats* %51)
  store %struct.bpstats* %52, %struct.bpstats** %6, align 8
  %53 = load %struct.bpstats*, %struct.bpstats** %6, align 8
  %54 = load %struct.bpstats*, %struct.bpstats** %3, align 8
  %55 = bitcast %struct.bpstats* %53 to i8*
  %56 = bitcast %struct.bpstats* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.bpstats*, %struct.bpstats** %6, align 8
  %58 = getelementptr inbounds %struct.bpstats, %struct.bpstats* %57, i32 0, i32 0
  store %struct.bpstats* null, %struct.bpstats** %58, align 8
  %59 = getelementptr inbounds [1 x %struct.bpstats], [1 x %struct.bpstats]* %5, i64 0, i64 0
  %60 = getelementptr inbounds %struct.bpstats, %struct.bpstats* %59, i32 0, i32 0
  %61 = load %struct.bpstats*, %struct.bpstats** %60, align 16
  store %struct.bpstats* %61, %struct.bpstats** %6, align 8
  store i8* null, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %49
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = call i64 @xmalloc(i64 %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %71 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %73 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strcpy(i8* %74, i8* %75)
  br label %80

77:                                               ; preds = %49
  %78 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %79 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %78, i32 0, i32 1
  store i8* null, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %64
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.bpstats*, %struct.bpstats** %3, align 8
  %83 = getelementptr inbounds %struct.bpstats, %struct.bpstats* %82, i32 0, i32 0
  %84 = load %struct.bpstats*, %struct.bpstats** %83, align 8
  store %struct.bpstats* %84, %struct.bpstats** %3, align 8
  br label %14

85:                                               ; preds = %23, %14
  %86 = load %struct.bpstats*, %struct.bpstats** %6, align 8
  %87 = load %struct.bpstats**, %struct.bpstats*** %4, align 8
  store %struct.bpstats* %86, %struct.bpstats** %87, align 8
  ret void
}

declare dso_local i32 @bpstat_clear(%struct.bpstats**) #1

declare dso_local %struct.bpstats* @bpstat_alloc(%struct.breakpoint*, %struct.bpstats*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
