; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_lookup_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_lookup_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_hashent = type { i64, i64, i32 }
%struct.idmap_hashtable = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idmap_hashent* (%struct.idmap_hashtable*, i64)* @idmap_lookup_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idmap_hashent* @idmap_lookup_id(%struct.idmap_hashtable* %0, i64 %1) #0 {
  %3 = alloca %struct.idmap_hashent*, align 8
  %4 = alloca %struct.idmap_hashtable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.idmap_hashent*, align 8
  store %struct.idmap_hashtable* %0, %struct.idmap_hashtable** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call %struct.idmap_hashent* @idmap_id_hash(%struct.idmap_hashtable* %7, i64 %8)
  store %struct.idmap_hashent* %9, %struct.idmap_hashent** %6, align 8
  %10 = load %struct.idmap_hashent*, %struct.idmap_hashent** %6, align 8
  %11 = icmp eq %struct.idmap_hashent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.idmap_hashent* null, %struct.idmap_hashent** %3, align 8
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.idmap_hashent*, %struct.idmap_hashent** %6, align 8
  %15 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.idmap_hashent*, %struct.idmap_hashent** %6, align 8
  %21 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13
  store %struct.idmap_hashent* null, %struct.idmap_hashent** %3, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.idmap_hashent*, %struct.idmap_hashent** %6, align 8
  %28 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @time_after(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.idmap_hashent* null, %struct.idmap_hashent** %3, align 8
  br label %35

33:                                               ; preds = %25
  %34 = load %struct.idmap_hashent*, %struct.idmap_hashent** %6, align 8
  store %struct.idmap_hashent* %34, %struct.idmap_hashent** %3, align 8
  br label %35

35:                                               ; preds = %33, %32, %24, %12
  %36 = load %struct.idmap_hashent*, %struct.idmap_hashent** %3, align 8
  ret %struct.idmap_hashent* %36
}

declare dso_local %struct.idmap_hashent* @idmap_id_hash(%struct.idmap_hashtable*, i64) #1

declare dso_local i64 @time_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
