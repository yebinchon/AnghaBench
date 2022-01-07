; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i64, i8**, i64 }
%struct.gdbarch_data = type { i64, i32, i8* (%struct.gdbarch.0*)* }
%struct.gdbarch.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdbarch_data(%struct.gdbarch* %0, %struct.gdbarch_data* %1) #0 {
  %3 = alloca %struct.gdbarch*, align 8
  %4 = alloca %struct.gdbarch_data*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  store %struct.gdbarch_data* %1, %struct.gdbarch_data** %4, align 8
  %5 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %6 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %9 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gdb_assert(i32 %12)
  %14 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %15 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %18 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %25 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %30 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gdb_assert(i32 %31)
  %33 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %34 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %36 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %35, i32 0, i32 2
  %37 = load i8* (%struct.gdbarch.0*)*, i8* (%struct.gdbarch.0*)** %36, align 8
  %38 = icmp ne i8* (%struct.gdbarch.0*)* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @gdb_assert(i32 %39)
  %41 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %42 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %41, i32 0, i32 2
  %43 = load i8* (%struct.gdbarch.0*)*, i8* (%struct.gdbarch.0*)** %42, align 8
  %44 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %45 = bitcast %struct.gdbarch* %44 to %struct.gdbarch.0*
  %46 = call i8* %43(%struct.gdbarch.0* %45)
  %47 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %48 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %51 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  store i8* %46, i8** %53, align 8
  %54 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %55 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %57 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %60 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @gdb_assert(i32 %65)
  br label %67

67:                                               ; preds = %28, %23, %2
  %68 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %69 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load %struct.gdbarch_data*, %struct.gdbarch_data** %4, align 8
  %72 = getelementptr inbounds %struct.gdbarch_data, %struct.gdbarch_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  %75 = load i8*, i8** %74, align 8
  ret i8* %75
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
