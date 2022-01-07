; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_set_gdbarch_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_set_gdbarch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i64, i32** }
%struct.gdbarch_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_gdbarch_data(%struct.gdbarch* %0, %struct.gdbarch_data* %1, i8* %2) #0 {
  %4 = alloca %struct.gdbarch*, align 8
  %5 = alloca %struct.gdbarch_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %4, align 8
  store %struct.gdbarch_data* %1, %struct.gdbarch_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.gdbarch_data*, %struct.gdbarch_data** %5, align 8
  %8 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %11 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %17 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load %struct.gdbarch_data*, %struct.gdbarch_data** %5, align 8
  %20 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32*, i32** %18, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.gdbarch*, %struct.gdbarch** %4, align 8
  %30 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.gdbarch_data*, %struct.gdbarch_data** %5, align 8
  %33 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* %28, i32** %35, align 8
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
