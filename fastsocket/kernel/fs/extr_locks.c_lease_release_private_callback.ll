; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_release_private_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lease_release_private_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*)* @lease_release_private_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lease_release_private_callback(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %10 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @f_delown(%struct.TYPE_4__* %11)
  %13 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @f_delown(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
