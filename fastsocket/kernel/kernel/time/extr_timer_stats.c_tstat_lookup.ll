; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_tstat_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_stats.c_tstat_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.entry*, i32, i64 }

@table_lock = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (%struct.entry*, i8*)* @tstat_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @tstat_lookup(%struct.entry* %0, i8* %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.entry**, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.entry*, align 8
  store %struct.entry* %0, %struct.entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.entry*, %struct.entry** %4, align 8
  %10 = call %struct.entry** @tstat_hashentry(%struct.entry* %9)
  store %struct.entry** %10, %struct.entry*** %6, align 8
  %11 = load %struct.entry**, %struct.entry*** %6, align 8
  %12 = load %struct.entry*, %struct.entry** %11, align 8
  store %struct.entry* %12, %struct.entry** %7, align 8
  br label %13

13:                                               ; preds = %23, %2
  %14 = load %struct.entry*, %struct.entry** %7, align 8
  %15 = icmp ne %struct.entry* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.entry*, %struct.entry** %7, align 8
  %18 = load %struct.entry*, %struct.entry** %4, align 8
  %19 = call i64 @match_entries(%struct.entry* %17, %struct.entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %22, %struct.entry** %3, align 8
  br label %79

23:                                               ; preds = %16
  %24 = load %struct.entry*, %struct.entry** %7, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 0
  %26 = load %struct.entry*, %struct.entry** %25, align 8
  store %struct.entry* %26, %struct.entry** %7, align 8
  br label %13

27:                                               ; preds = %13
  store %struct.entry* null, %struct.entry** %8, align 8
  %28 = load %struct.entry**, %struct.entry*** %6, align 8
  %29 = load %struct.entry*, %struct.entry** %28, align 8
  store %struct.entry* %29, %struct.entry** %7, align 8
  %30 = call i32 @spin_lock(i32* @table_lock)
  br label %31

31:                                               ; preds = %40, %27
  %32 = load %struct.entry*, %struct.entry** %7, align 8
  %33 = icmp ne %struct.entry* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.entry*, %struct.entry** %7, align 8
  %36 = load %struct.entry*, %struct.entry** %4, align 8
  %37 = call i64 @match_entries(%struct.entry* %35, %struct.entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %76

40:                                               ; preds = %34
  %41 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %41, %struct.entry** %8, align 8
  %42 = load %struct.entry*, %struct.entry** %7, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 0
  %44 = load %struct.entry*, %struct.entry** %43, align 8
  store %struct.entry* %44, %struct.entry** %7, align 8
  br label %31

45:                                               ; preds = %31
  %46 = call %struct.entry* (...) @alloc_entry()
  store %struct.entry* %46, %struct.entry** %7, align 8
  %47 = load %struct.entry*, %struct.entry** %7, align 8
  %48 = icmp ne %struct.entry* %47, null
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.entry*, %struct.entry** %7, align 8
  %51 = load %struct.entry*, %struct.entry** %4, align 8
  %52 = bitcast %struct.entry* %50 to i8*
  %53 = bitcast %struct.entry* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = load %struct.entry*, %struct.entry** %7, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.entry*, %struct.entry** %7, align 8
  %57 = getelementptr inbounds %struct.entry, %struct.entry* %56, i32 0, i32 0
  store %struct.entry* null, %struct.entry** %57, align 8
  %58 = load %struct.entry*, %struct.entry** %7, align 8
  %59 = getelementptr inbounds %struct.entry, %struct.entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @TASK_COMM_LEN, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  %64 = call i32 (...) @smp_mb()
  %65 = load %struct.entry*, %struct.entry** %8, align 8
  %66 = icmp ne %struct.entry* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %49
  %68 = load %struct.entry*, %struct.entry** %7, align 8
  %69 = load %struct.entry*, %struct.entry** %8, align 8
  %70 = getelementptr inbounds %struct.entry, %struct.entry* %69, i32 0, i32 0
  store %struct.entry* %68, %struct.entry** %70, align 8
  br label %74

71:                                               ; preds = %49
  %72 = load %struct.entry*, %struct.entry** %7, align 8
  %73 = load %struct.entry**, %struct.entry*** %6, align 8
  store %struct.entry* %72, %struct.entry** %73, align 8
  br label %74

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %39
  %77 = call i32 @spin_unlock(i32* @table_lock)
  %78 = load %struct.entry*, %struct.entry** %7, align 8
  store %struct.entry* %78, %struct.entry** %3, align 8
  br label %79

79:                                               ; preds = %76, %21
  %80 = load %struct.entry*, %struct.entry** %3, align 8
  ret %struct.entry* %80
}

declare dso_local %struct.entry** @tstat_hashentry(%struct.entry*) #1

declare dso_local i64 @match_entries(%struct.entry*, %struct.entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.entry* @alloc_entry(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
