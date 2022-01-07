; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_hash_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_control = type { i32 }
%struct.hash_entry = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hash_replace(%struct.hash_control* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hash_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hash_entry*, align 8
  %9 = alloca i32*, align 8
  store %struct.hash_control* %0, %struct.hash_control** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hash_control*, %struct.hash_control** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call %struct.hash_entry* @hash_lookup(%struct.hash_control* %10, i8* %11, i32 %13, i32* null, i32* null)
  store %struct.hash_entry* %14, %struct.hash_entry** %8, align 8
  %15 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %16 = icmp eq %struct.hash_entry* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32*, i32** %4, align 8
  ret i32* %27
}

declare dso_local %struct.hash_entry* @hash_lookup(%struct.hash_control*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
