; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c__bfd_stringtab_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_strtab_hash = type { %struct.strtab_hash_entry*, i64 }
%struct.strtab_hash_entry = type { %struct.TYPE_2__, %struct.strtab_hash_entry* }
%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_stringtab_emit(i32* %0, %struct.bfd_strtab_hash* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_strtab_hash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.strtab_hash_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_strtab_hash* %1, %struct.bfd_strtab_hash** %5, align 8
  %11 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %5, align 8
  %12 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.bfd_strtab_hash*, %struct.bfd_strtab_hash** %5, align 8
  %15 = getelementptr inbounds %struct.bfd_strtab_hash, %struct.bfd_strtab_hash* %14, i32 0, i32 0
  %16 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %15, align 8
  store %struct.strtab_hash_entry* %16, %struct.strtab_hash_entry** %7, align 8
  br label %17

17:                                               ; preds = %56, %2
  %18 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %7, align 8
  %19 = icmp ne %struct.strtab_hash_entry* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %7, align 8
  %22 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %36 = call i32 @bfd_put_16(i32* %32, i32 %34, i32* %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %38 = bitcast i32* %37 to i8*
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @bfd_bwrite(i8* %38, i32 2, i32* %39)
  %41 = icmp ne i64 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %3, align 8
  br label %62

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @bfd_bwrite(i8* %46, i32 %48, i32* %49)
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %3, align 8
  br label %62

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %7, align 8
  %58 = getelementptr inbounds %struct.strtab_hash_entry, %struct.strtab_hash_entry* %57, i32 0, i32 1
  %59 = load %struct.strtab_hash_entry*, %struct.strtab_hash_entry** %58, align 8
  store %struct.strtab_hash_entry* %59, %struct.strtab_hash_entry** %7, align 8
  br label %17

60:                                               ; preds = %17
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %53, %42
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bfd_put_16(i32*, i32, i32*) #1

declare dso_local i64 @bfd_bwrite(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
