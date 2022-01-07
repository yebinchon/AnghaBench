; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_thread_group_cputime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_thread_group_cputime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_cputime = type { i32, i8*, i8* }
%struct.task_struct = type { %struct.TYPE_2__, i32, i32, %struct.signal_struct*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.signal_struct = type { i64, i32, i32 }
%struct.sighand_struct = type { i32 }

@INIT_CPUTIME = common dso_local global %struct.task_cputime zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_group_cputime(%struct.task_struct* %0, %struct.task_cputime* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_cputime*, align 8
  %5 = alloca %struct.sighand_struct*, align 8
  %6 = alloca %struct.signal_struct*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_cputime* %1, %struct.task_cputime** %4, align 8
  %8 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %9 = bitcast %struct.task_cputime* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.task_cputime* @INIT_CPUTIME to i8*), i64 24, i1 false)
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.sighand_struct* @rcu_dereference(i32 %13)
  store %struct.sighand_struct* %14, %struct.sighand_struct** %5, align 8
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %16 = icmp ne %struct.sighand_struct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 3
  %21 = load %struct.signal_struct*, %struct.signal_struct** %20, align 8
  store %struct.signal_struct* %21, %struct.signal_struct** %6, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  store %struct.task_struct* %22, %struct.task_struct** %7, align 8
  br label %23

23:                                               ; preds = %54, %18
  %24 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %25 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cputime_add(i8* %26, i32 %29)
  %31 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %32 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %34 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @cputime_add(i8* %35, i32 %38)
  %40 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %41 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %47 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %53 = call %struct.task_struct* @next_thread(%struct.task_struct* %52)
  store %struct.task_struct* %53, %struct.task_struct** %7, align 8
  br label %54

54:                                               ; preds = %23
  %55 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %57 = icmp ne %struct.task_struct* %55, %56
  br i1 %57, label %23, label %58

58:                                               ; preds = %54
  %59 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %60 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %63 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cputime_add(i8* %61, i32 %64)
  %66 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %67 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %69 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %72 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @cputime_add(i8* %70, i32 %73)
  %75 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %76 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  %78 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %81 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  br label %86

86:                                               ; preds = %58, %17
  %87 = call i32 (...) @rcu_read_unlock()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.sighand_struct* @rcu_dereference(i32) #2

declare dso_local i8* @cputime_add(i8*, i32) #2

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
