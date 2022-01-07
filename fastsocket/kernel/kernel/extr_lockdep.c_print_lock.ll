; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_lockdep.c_print_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.held_lock = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c", at: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.held_lock*)* @print_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_lock(%struct.held_lock* %0) #0 {
  %2 = alloca %struct.held_lock*, align 8
  store %struct.held_lock* %0, %struct.held_lock** %2, align 8
  %3 = load %struct.held_lock*, %struct.held_lock** %2, align 8
  %4 = call i32 @hlock_class(%struct.held_lock* %3)
  %5 = call i32 @print_lock_name(i32 %4)
  %6 = call i32 @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.held_lock*, %struct.held_lock** %2, align 8
  %8 = getelementptr inbounds %struct.held_lock, %struct.held_lock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @print_ip_sym(i32 %9)
  ret void
}

declare dso_local i32 @print_lock_name(i32) #1

declare dso_local i32 @hlock_class(%struct.held_lock*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @print_ip_sym(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
