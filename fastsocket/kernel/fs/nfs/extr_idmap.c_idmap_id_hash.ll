; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_id_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_id_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_hashent = type { i32 }
%struct.idmap_hashtable = type { %struct.idmap_hashent* }

@IDMAP_HASH_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idmap_hashent* (%struct.idmap_hashtable*, i32)* @idmap_id_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idmap_hashent* @idmap_id_hash(%struct.idmap_hashtable* %0, i32 %1) #0 {
  %3 = alloca %struct.idmap_hashent*, align 8
  %4 = alloca %struct.idmap_hashtable*, align 8
  %5 = alloca i32, align 4
  store %struct.idmap_hashtable* %0, %struct.idmap_hashtable** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %4, align 8
  %7 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %6, i32 0, i32 0
  %8 = load %struct.idmap_hashent*, %struct.idmap_hashent** %7, align 8
  %9 = icmp eq %struct.idmap_hashent* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.idmap_hashent* null, %struct.idmap_hashent** %3, align 8
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %4, align 8
  %13 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %12, i32 0, i32 0
  %14 = load %struct.idmap_hashent*, %struct.idmap_hashent** %13, align 8
  %15 = call i64 @fnvhash32(i32* %5, i32 4)
  %16 = load i64, i64* @IDMAP_HASH_SZ, align 8
  %17 = urem i64 %15, %16
  %18 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %14, i64 %17
  store %struct.idmap_hashent* %18, %struct.idmap_hashent** %3, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.idmap_hashent*, %struct.idmap_hashent** %3, align 8
  ret %struct.idmap_hashent* %20
}

declare dso_local i64 @fnvhash32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
