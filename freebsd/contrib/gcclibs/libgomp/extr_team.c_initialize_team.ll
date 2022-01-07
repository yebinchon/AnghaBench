; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_initialize_team.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_initialize_team.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { i32 }

@initialize_team.initial_thread_tls_data = internal global %struct.gomp_thread zeroinitializer, align 4
@gomp_tls_key = common dso_local global i32 0, align 4
@gomp_tls_data = common dso_local global %struct.gomp_thread zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @initialize_team, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_team to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_team() #0 {
  %1 = alloca %struct.gomp_thread*, align 8
  %2 = call i32 @pthread_key_create(i32* @gomp_tls_key, i32* null)
  %3 = load i32, i32* @gomp_tls_key, align 4
  %4 = call i32 @pthread_setspecific(i32 %3, %struct.gomp_thread* @initialize_team.initial_thread_tls_data)
  store %struct.gomp_thread* @initialize_team.initial_thread_tls_data, %struct.gomp_thread** %1, align 8
  %5 = load %struct.gomp_thread*, %struct.gomp_thread** %1, align 8
  %6 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %5, i32 0, i32 0
  %7 = call i32 @gomp_sem_init(i32* %6, i32 0)
  ret void
}

declare dso_local i32 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.gomp_thread*) #1

declare dso_local i32 @gomp_sem_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
