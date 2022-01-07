; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_inc_addref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_inc_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"addref inc %p ref %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_incoming*)* @rds_inc_addref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_inc_addref(%struct.rds_incoming* %0) #0 {
  %2 = alloca %struct.rds_incoming*, align 8
  store %struct.rds_incoming* %0, %struct.rds_incoming** %2, align 8
  %3 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %4 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %5 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %4, i32 0, i32 0
  %6 = call i32 @atomic_read(i32* %5)
  %7 = call i32 @rdsdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.rds_incoming* %3, i32 %6)
  %8 = load %struct.rds_incoming*, %struct.rds_incoming** %2, align 8
  %9 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %8, i32 0, i32 0
  %10 = call i32 @atomic_inc(i32* %9)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_incoming*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
