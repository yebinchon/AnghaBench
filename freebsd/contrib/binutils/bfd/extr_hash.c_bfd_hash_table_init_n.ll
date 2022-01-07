; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_table_init_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_table_init_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_hash_table = type { i32, i32, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, i64, i64, i32*, i32* }
%struct.bfd_hash_entry = type { i32 }
%struct.objalloc = type { i32 }

@bfd_error_no_memory = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_hash_table_init_n(%struct.bfd_hash_table* %0, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_hash_table*, align 8
  %7 = alloca %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfd_hash_table* %0, %struct.bfd_hash_table** %6, align 8
  store %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %1, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = call i64 (...) @objalloc_create()
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %19 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %18, i32 0, i32 6
  store i32* %17, i32** %19, align 8
  %20 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %21 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @bfd_error_no_memory, align 4
  %26 = call i32 @bfd_set_error(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %66

28:                                               ; preds = %4
  %29 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %30 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to %struct.objalloc*
  %33 = load i32, i32* %10, align 4
  %34 = call i32* @objalloc_alloc(%struct.objalloc* %32, i32 %33)
  %35 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %36 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %38 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* @bfd_error_no_memory, align 4
  %43 = call i32 @bfd_set_error(i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %66

45:                                               ; preds = %28
  %46 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %47 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @memset(i8* %49, i32 0, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %54 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %57 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %59 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %61 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  %63 = load %struct.bfd_hash_table*, %struct.bfd_hash_table** %6, align 8
  %64 = getelementptr inbounds %struct.bfd_hash_table, %struct.bfd_hash_table* %63, i32 0, i32 2
  store %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %62, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %64, align 8
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %45, %41, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @objalloc_create(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @objalloc_alloc(%struct.objalloc*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
