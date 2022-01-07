; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32, i32 }
%struct.hash_entry = type { i8*, i64, %struct.hash_entry*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"exists\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_insert(%struct.hash_control* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hash_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_entry*, align 8
  %9 = alloca %struct.hash_entry**, align 8
  %10 = alloca i64, align 8
  store %struct.hash_control* %0, %struct.hash_control** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hash_control*, %struct.hash_control** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call %struct.hash_entry* @hash_lookup(%struct.hash_control* %11, i8* %12, i32 %14, %struct.hash_entry*** %9, i64* %10)
  store %struct.hash_entry* %15, %struct.hash_entry** %8, align 8
  %16 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %17 = icmp ne %struct.hash_entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.hash_control*, %struct.hash_control** %5, align 8
  %21 = getelementptr inbounds %struct.hash_control, %struct.hash_control* %20, i32 0, i32 0
  %22 = call i64 @obstack_alloc(i32* %21, i32 32)
  %23 = inttoptr i64 %22 to %struct.hash_entry*
  store %struct.hash_entry* %23, %struct.hash_entry** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.hash_entry**, %struct.hash_entry*** %9, align 8
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i32 0, i32 2
  store %struct.hash_entry* %34, %struct.hash_entry** %36, align 8
  %37 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %38 = load %struct.hash_entry**, %struct.hash_entry*** %9, align 8
  store %struct.hash_entry* %37, %struct.hash_entry** %38, align 8
  store i8* null, i8** %4, align 8
  br label %39

39:                                               ; preds = %19, %18
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local %struct.hash_entry* @hash_lookup(%struct.hash_control*, i8*, i32, %struct.hash_entry***, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
