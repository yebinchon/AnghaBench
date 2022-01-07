; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_new_pragma_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_new_pragma_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pragma_entry = type { %struct.pragma_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pragma_entry* (i32*, %struct.pragma_entry**)* @new_pragma_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pragma_entry* @new_pragma_entry(i32* %0, %struct.pragma_entry** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pragma_entry**, align 8
  %5 = alloca %struct.pragma_entry*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pragma_entry** %1, %struct.pragma_entry*** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @_cpp_aligned_alloc(i32* %6, i32 8)
  %8 = inttoptr i64 %7 to %struct.pragma_entry*
  store %struct.pragma_entry* %8, %struct.pragma_entry** %5, align 8
  %9 = load %struct.pragma_entry*, %struct.pragma_entry** %5, align 8
  %10 = call i32 @memset(%struct.pragma_entry* %9, i32 0, i32 8)
  %11 = load %struct.pragma_entry**, %struct.pragma_entry*** %4, align 8
  %12 = load %struct.pragma_entry*, %struct.pragma_entry** %11, align 8
  %13 = load %struct.pragma_entry*, %struct.pragma_entry** %5, align 8
  %14 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %13, i32 0, i32 0
  store %struct.pragma_entry* %12, %struct.pragma_entry** %14, align 8
  %15 = load %struct.pragma_entry*, %struct.pragma_entry** %5, align 8
  %16 = load %struct.pragma_entry**, %struct.pragma_entry*** %4, align 8
  store %struct.pragma_entry* %15, %struct.pragma_entry** %16, align 8
  %17 = load %struct.pragma_entry*, %struct.pragma_entry** %5, align 8
  ret %struct.pragma_entry* %17
}

declare dso_local i64 @_cpp_aligned_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.pragma_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
