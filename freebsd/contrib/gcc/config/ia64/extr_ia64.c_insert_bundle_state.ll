; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_insert_bundle_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_insert_bundle_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle_state = type { i64, i64, i64, i64, %struct.bundle_state* }

@bundle_state_table = common dso_local global i32 0, align 4
@index_to_bundle_states = common dso_local global %struct.bundle_state** null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle_state*)* @insert_bundle_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_bundle_state(%struct.bundle_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bundle_state*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.bundle_state, align 8
  store %struct.bundle_state* %0, %struct.bundle_state** %3, align 8
  %6 = load i32, i32* @bundle_state_table, align 4
  %7 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %8 = call i8** @htab_find_slot(i32 %6, %struct.bundle_state* %7, i32 1)
  store i8** %8, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.bundle_state**, %struct.bundle_state*** @index_to_bundle_states, align 8
  %14 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %15 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.bundle_state*, %struct.bundle_state** %13, i64 %16
  %18 = load %struct.bundle_state*, %struct.bundle_state** %17, align 8
  %19 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %20 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %19, i32 0, i32 4
  store %struct.bundle_state* %18, %struct.bundle_state** %20, align 8
  %21 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %22 = load %struct.bundle_state**, %struct.bundle_state*** @index_to_bundle_states, align 8
  %23 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %24 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.bundle_state*, %struct.bundle_state** %22, i64 %25
  store %struct.bundle_state* %21, %struct.bundle_state** %26, align 8
  %27 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %28 = bitcast %struct.bundle_state* %27 to i8*
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %105

31:                                               ; preds = %1
  %32 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %33 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.bundle_state*
  %38 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %81, label %41

41:                                               ; preds = %31
  %42 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %43 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to %struct.bundle_state*
  %48 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %44, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %41
  %52 = load i8**, i8*** %4, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to %struct.bundle_state*
  %55 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %58 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %51
  %62 = load i8**, i8*** %4, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast i8* %63 to %struct.bundle_state*
  %65 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %68 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %61
  %72 = load i8**, i8*** %4, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast i8* %73 to %struct.bundle_state*
  %75 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %78 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %71, %51, %31
  %82 = load i8**, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to %struct.bundle_state*
  %85 = bitcast %struct.bundle_state* %5 to i8*
  %86 = bitcast %struct.bundle_state* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 40, i1 false)
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.bundle_state*
  %90 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %91 = bitcast %struct.bundle_state* %89 to i8*
  %92 = bitcast %struct.bundle_state* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 40, i1 false)
  %93 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %5, i32 0, i32 4
  %94 = load %struct.bundle_state*, %struct.bundle_state** %93, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.bundle_state*
  %98 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %97, i32 0, i32 4
  store %struct.bundle_state* %94, %struct.bundle_state** %98, align 8
  %99 = load %struct.bundle_state*, %struct.bundle_state** %3, align 8
  %100 = bitcast %struct.bundle_state* %99 to i8*
  %101 = bitcast %struct.bundle_state* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 40, i1 false)
  br label %102

102:                                              ; preds = %81, %71, %61, %41
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8** @htab_find_slot(i32, %struct.bundle_state*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
