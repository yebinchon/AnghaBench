; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32 }
%struct.hash_entry = type { i32*, %struct.hash_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hash_delete(%struct.hash_control* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hash_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.hash_entry**, align 8
  store %struct.hash_control* %0, %struct.hash_control** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hash_control*, %struct.hash_control** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call %struct.hash_entry* @hash_lookup(%struct.hash_control* %8, i8* %9, i32 %11, %struct.hash_entry*** %7, i32* null)
  store %struct.hash_entry* %12, %struct.hash_entry** %6, align 8
  %13 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %14 = icmp eq %struct.hash_entry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %18 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8
  %20 = icmp ne %struct.hash_entry* %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %16
  %24 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i32 0, i32 1
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8
  %27 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  store %struct.hash_entry* %26, %struct.hash_entry** %27, align 8
  %28 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local %struct.hash_entry* @hash_lookup(%struct.hash_control*, i8*, i32, %struct.hash_entry***, i32*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
