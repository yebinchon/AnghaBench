; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_override_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_override_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cred* }
%struct.cred = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"override_creds(%p{%d,%d})\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"override_creds() = %p{%d,%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @override_creds(%struct.cred* %0) #0 {
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.cred*, align 8
  store %struct.cred* %0, %struct.cred** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.cred*, %struct.cred** %5, align 8
  store %struct.cred* %6, %struct.cred** %3, align 8
  %7 = load %struct.cred*, %struct.cred** %2, align 8
  %8 = load %struct.cred*, %struct.cred** %2, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 0
  %10 = call i32 @atomic_read(i32* %9)
  %11 = load %struct.cred*, %struct.cred** %2, align 8
  %12 = call i32 @read_cred_subscribers(%struct.cred* %11)
  %13 = call i32 @kdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.cred* %7, i32 %10, i32 %12)
  %14 = load %struct.cred*, %struct.cred** %3, align 8
  %15 = call i32 @validate_creds(%struct.cred* %14)
  %16 = load %struct.cred*, %struct.cred** %2, align 8
  %17 = call i32 @validate_creds(%struct.cred* %16)
  %18 = load %struct.cred*, %struct.cred** %2, align 8
  %19 = call i32 @get_cred(%struct.cred* %18)
  %20 = load %struct.cred*, %struct.cred** %2, align 8
  %21 = call i32 @alter_cred_subscribers(%struct.cred* %20, i32 1)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.cred*, %struct.cred** %23, align 8
  %25 = load %struct.cred*, %struct.cred** %2, align 8
  %26 = call i32 @rcu_assign_pointer(%struct.cred* %24, %struct.cred* %25)
  %27 = load %struct.cred*, %struct.cred** %3, align 8
  %28 = call i32 @alter_cred_subscribers(%struct.cred* %27, i32 -1)
  %29 = load %struct.cred*, %struct.cred** %3, align 8
  %30 = load %struct.cred*, %struct.cred** %3, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 0
  %32 = call i32 @atomic_read(i32* %31)
  %33 = load %struct.cred*, %struct.cred** %3, align 8
  %34 = call i32 @read_cred_subscribers(%struct.cred* %33)
  %35 = call i32 @kdebug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.cred* %29, i32 %32, i32 %34)
  %36 = load %struct.cred*, %struct.cred** %3, align 8
  ret %struct.cred* %36
}

declare dso_local i32 @kdebug(i8*, %struct.cred*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.cred*) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @rcu_assign_pointer(%struct.cred*, %struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
