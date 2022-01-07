; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_link_repair_undef_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_bfd_link_repair_undef_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bfd_link_hash_entry* }

@bfd_link_hash_new = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_link_repair_undef_list(%struct.bfd_link_hash_table* %0) #0 {
  %2 = alloca %struct.bfd_link_hash_table*, align 8
  %3 = alloca %struct.bfd_link_hash_entry**, align 8
  %4 = alloca %struct.bfd_link_hash_entry*, align 8
  store %struct.bfd_link_hash_table* %0, %struct.bfd_link_hash_table** %2, align 8
  %5 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %6 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %5, i32 0, i32 1
  store %struct.bfd_link_hash_entry** %6, %struct.bfd_link_hash_entry*** %3, align 8
  br label %7

7:                                                ; preds = %74, %1
  %8 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %3, align 8
  %9 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %8, align 8
  %10 = icmp ne %struct.bfd_link_hash_entry* %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %7
  %12 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %3, align 8
  %13 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %12, align 8
  store %struct.bfd_link_hash_entry* %13, %struct.bfd_link_hash_entry** %4, align 8
  %14 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %15 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @bfd_link_hash_new, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %21 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19, %11
  %26 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %27 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %29, align 8
  %31 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %3, align 8
  store %struct.bfd_link_hash_entry* %30, %struct.bfd_link_hash_entry** %31, align 8
  %32 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %35, align 8
  %36 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %37 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %38 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %37, i32 0, i32 0
  %39 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %38, align 8
  %40 = icmp eq %struct.bfd_link_hash_entry* %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %25
  %42 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %3, align 8
  %43 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %44 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %43, i32 0, i32 1
  %45 = icmp eq %struct.bfd_link_hash_entry** %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %48 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %47, i32 0, i32 0
  store %struct.bfd_link_hash_entry* null, %struct.bfd_link_hash_entry** %48, align 8
  br label %67

49:                                               ; preds = %41
  %50 = load %struct.bfd_link_hash_entry**, %struct.bfd_link_hash_entry*** %3, align 8
  %51 = bitcast %struct.bfd_link_hash_entry** %50 to i8*
  %52 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %53 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = bitcast %struct.bfd_link_hash_entry** %55 to i8*
  %57 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %58 = bitcast %struct.bfd_link_hash_entry* %57 to i8*
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %51, i64 %62
  %64 = bitcast i8* %63 to %struct.bfd_link_hash_entry*
  %65 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %2, align 8
  %66 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %65, i32 0, i32 0
  store %struct.bfd_link_hash_entry* %64, %struct.bfd_link_hash_entry** %66, align 8
  br label %67

67:                                               ; preds = %49, %46
  br label %75

68:                                               ; preds = %25
  br label %74

69:                                               ; preds = %19
  %70 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %71 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.bfd_link_hash_entry** %73, %struct.bfd_link_hash_entry*** %3, align 8
  br label %74

74:                                               ; preds = %69, %68
  br label %7

75:                                               ; preds = %67, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
