; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_describe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_keyring.c_keyring_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.keyring_list = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[anon]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c": %u/%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c": empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, %struct.seq_file*)* @keyring_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyring_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.keyring_list*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.key*, %struct.key** %3, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @seq_puts(%struct.seq_file* %11, i8* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load %struct.key*, %struct.key** %3, align 8
  %21 = call i64 @key_is_instantiated(%struct.key* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.keyring_list* @rcu_dereference(i32 %28)
  store %struct.keyring_list* %29, %struct.keyring_list** %5, align 8
  %30 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %31 = icmp ne %struct.keyring_list* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %23
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %35 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.keyring_list*, %struct.keyring_list** %5, align 8
  %38 = getelementptr inbounds %struct.keyring_list, %struct.keyring_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  br label %44

41:                                               ; preds = %23
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %32
  %45 = call i32 (...) @rcu_read_unlock()
  br label %46

46:                                               ; preds = %44, %19
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @key_is_instantiated(%struct.key*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.keyring_list* @rcu_dereference(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
