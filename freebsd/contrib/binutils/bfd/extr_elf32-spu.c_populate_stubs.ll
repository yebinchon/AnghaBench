; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_populate_stubs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_populate_stubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_entry = type { i32 }
%struct.stubarr = type { i64, %struct.spu_stub_hash_entry** }
%struct.spu_stub_hash_entry = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfd_hash_entry*, i8*)* @populate_stubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_stubs(%struct.bfd_hash_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.bfd_hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stubarr*, align 8
  store %struct.bfd_hash_entry* %0, %struct.bfd_hash_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.stubarr*
  store %struct.stubarr* %7, %struct.stubarr** %5, align 8
  %8 = load %struct.bfd_hash_entry*, %struct.bfd_hash_entry** %3, align 8
  %9 = bitcast %struct.bfd_hash_entry* %8 to %struct.spu_stub_hash_entry*
  %10 = load %struct.stubarr*, %struct.stubarr** %5, align 8
  %11 = getelementptr inbounds %struct.stubarr, %struct.stubarr* %10, i32 0, i32 1
  %12 = load %struct.spu_stub_hash_entry**, %struct.spu_stub_hash_entry*** %11, align 8
  %13 = load %struct.stubarr*, %struct.stubarr** %5, align 8
  %14 = getelementptr inbounds %struct.stubarr, %struct.stubarr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = getelementptr inbounds %struct.spu_stub_hash_entry*, %struct.spu_stub_hash_entry** %12, i64 %16
  store %struct.spu_stub_hash_entry* %9, %struct.spu_stub_hash_entry** %17, align 8
  %18 = load i32, i32* @TRUE, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
