; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_move_plt_plist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_move_plt_plist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_link_hash_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.plt_entry* }
%struct.plt_entry = type { i64, %struct.plt_entry*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry*)* @move_plt_plist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_plt_plist(%struct.ppc_link_hash_entry* %0, %struct.ppc_link_hash_entry* %1) #0 {
  %3 = alloca %struct.ppc_link_hash_entry*, align 8
  %4 = alloca %struct.ppc_link_hash_entry*, align 8
  %5 = alloca %struct.plt_entry**, align 8
  %6 = alloca %struct.plt_entry*, align 8
  %7 = alloca %struct.plt_entry*, align 8
  store %struct.ppc_link_hash_entry* %0, %struct.ppc_link_hash_entry** %3, align 8
  store %struct.ppc_link_hash_entry* %1, %struct.ppc_link_hash_entry** %4, align 8
  %8 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %9 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.plt_entry*, %struct.plt_entry** %11, align 8
  %13 = icmp ne %struct.plt_entry* %12, null
  br i1 %13, label %14, label %94

14:                                               ; preds = %2
  %15 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %16 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.plt_entry*, %struct.plt_entry** %18, align 8
  %20 = icmp ne %struct.plt_entry* %19, null
  br i1 %20, label %21, label %80

21:                                               ; preds = %14
  %22 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %23 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.plt_entry** %25, %struct.plt_entry*** %5, align 8
  br label %26

26:                                               ; preds = %72, %21
  %27 = load %struct.plt_entry**, %struct.plt_entry*** %5, align 8
  %28 = load %struct.plt_entry*, %struct.plt_entry** %27, align 8
  store %struct.plt_entry* %28, %struct.plt_entry** %6, align 8
  %29 = icmp ne %struct.plt_entry* %28, null
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %32 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.plt_entry*, %struct.plt_entry** %34, align 8
  store %struct.plt_entry* %35, %struct.plt_entry** %7, align 8
  br label %36

36:                                               ; preds = %62, %30
  %37 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %38 = icmp ne %struct.plt_entry* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %41 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.plt_entry*, %struct.plt_entry** %6, align 8
  %44 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.plt_entry*, %struct.plt_entry** %6, align 8
  %49 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %53 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %51
  store i64 %56, i64* %54, align 8
  %57 = load %struct.plt_entry*, %struct.plt_entry** %6, align 8
  %58 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %57, i32 0, i32 1
  %59 = load %struct.plt_entry*, %struct.plt_entry** %58, align 8
  %60 = load %struct.plt_entry**, %struct.plt_entry*** %5, align 8
  store %struct.plt_entry* %59, %struct.plt_entry** %60, align 8
  br label %66

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %64 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %63, i32 0, i32 1
  %65 = load %struct.plt_entry*, %struct.plt_entry** %64, align 8
  store %struct.plt_entry* %65, %struct.plt_entry** %7, align 8
  br label %36

66:                                               ; preds = %47, %36
  %67 = load %struct.plt_entry*, %struct.plt_entry** %7, align 8
  %68 = icmp eq %struct.plt_entry* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.plt_entry*, %struct.plt_entry** %6, align 8
  %71 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %70, i32 0, i32 1
  store %struct.plt_entry** %71, %struct.plt_entry*** %5, align 8
  br label %72

72:                                               ; preds = %69, %66
  br label %26

73:                                               ; preds = %26
  %74 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.plt_entry*, %struct.plt_entry** %77, align 8
  %79 = load %struct.plt_entry**, %struct.plt_entry*** %5, align 8
  store %struct.plt_entry* %78, %struct.plt_entry** %79, align 8
  br label %80

80:                                               ; preds = %73, %14
  %81 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %82 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.plt_entry*, %struct.plt_entry** %84, align 8
  %86 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %4, align 8
  %87 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.plt_entry* %85, %struct.plt_entry** %89, align 8
  %90 = load %struct.ppc_link_hash_entry*, %struct.ppc_link_hash_entry** %3, align 8
  %91 = getelementptr inbounds %struct.ppc_link_hash_entry, %struct.ppc_link_hash_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store %struct.plt_entry* null, %struct.plt_entry** %93, align 8
  br label %94

94:                                               ; preds = %80, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
