; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_table = type { i32, %struct.bfd_hash_entry** }
%struct.bfd_hash_entry = type { i32, %struct.bfd_hash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_hash_replace(%struct.bfd_hash_table* %0, %struct.bfd_hash_entry* %1, %struct.bfd_hash_entry* %2) #0 {
  %4 = alloca %struct.bfd_hash_table*, align 8
  %5 = alloca %struct.bfd_hash_entry*, align 8
  %6 = alloca %struct.bfd_hash_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfd_hash_entry**, align 8
  store %struct.bfd_hash_table* %0, %struct.bfd_hash_table** %4, align 8
  store %struct.bfd_hash_entry* %1, %struct.bfd_hash_entry** %5, align 8
  store %struct.bfd_hash_entry* %2, %struct.bfd_hash_entry** %6, align 8
  %9 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %10 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %4, align 8
  %13 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = urem i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %4, align 8
  %17 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %16, i32 0, i32 1
  %18 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %18, i64 %20
  store %struct.bfd_hash_entry** %21, %struct.bfd_hash_entry*** %8, align 8
  br label %22

22:                                               ; preds = %35, %3
  %23 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %8, align 8
  %24 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %23, align 8
  %25 = icmp ne %struct.bfd_hash_entry* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %8, align 8
  %28 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %27, align 8
  %29 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %5, align 8
  %30 = icmp eq %struct.bfd_hash_entry* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %6, align 8
  %33 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %8, align 8
  store %struct.bfd_hash_entry* %32, %struct.bfd_hash_entry** %33, align 8
  ret void

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.bfd_hash_entry**, %struct.bfd_hash_entry*** %8, align 8
  %37 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %36, align 8
  %38 = getelementptr inbounds %struct.bfd_hash_entry, %struct.bfd_hash_entry* %37, i32 0, i32 1
  store %struct.bfd_hash_entry** %38, %struct.bfd_hash_entry*** %8, align 8
  br label %22

39:                                               ; preds = %22
  %40 = call i32 (...) @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
