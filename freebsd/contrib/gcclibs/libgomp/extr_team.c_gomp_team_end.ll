; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_team_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_team_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gomp_team* }
%struct.gomp_team = type { %struct.TYPE_2__, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_team_end() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = alloca %struct.gomp_team*, align 8
  %3 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %3, %struct.gomp_thread** %1, align 8
  %4 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %5 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.gomp_team*, %struct.gomp_team** %6, align 8
  store %struct.gomp_team* %7, %struct.gomp_team** %2, align 8
  %8 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %9 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %8, i32 0, i32 1
  %10 = call i32 @gomp_barrier_wait(i32* %9)
  %11 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %12 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %11, i32 0, i32 0
  %13 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %14 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_2__* %12 to i8*
  %16 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.gomp_team*, %struct.gomp_team** %2, align 8
  %18 = call i32 @free_team(%struct.gomp_team* %17)
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local i32 @gomp_barrier_wait(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free_team(%struct.gomp_team*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
