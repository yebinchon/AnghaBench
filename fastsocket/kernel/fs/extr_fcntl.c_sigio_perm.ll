; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_sigio_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fcntl.c_sigio_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.fown_struct = type { i64, i64 }
%struct.cred = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.fown_struct*, i32)* @sigio_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigio_perm(%struct.task_struct* %0, %struct.fown_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.fown_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.fown_struct* %1, %struct.fown_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call %struct.cred* @__task_cred(%struct.task_struct* %10)
  store %struct.cred* %11, %struct.cred** %7, align 8
  %12 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %13 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %3
  %17 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %18 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cred*, %struct.cred** %7, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %48, label %24

24:                                               ; preds = %16
  %25 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %26 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cred*, %struct.cred** %7, align 8
  %29 = getelementptr inbounds %struct.cred, %struct.cred* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %24
  %33 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %34 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cred*, %struct.cred** %7, align 8
  %37 = getelementptr inbounds %struct.cred, %struct.cred* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %42 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cred*, %struct.cred** %7, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40, %32, %24, %16, %3
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = load %struct.fown_struct*, %struct.fown_struct** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @security_file_send_sigiotask(%struct.task_struct* %49, %struct.fown_struct* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %48, %40
  %56 = phi i1 [ false, %40 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @security_file_send_sigiotask(%struct.task_struct*, %struct.fown_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
