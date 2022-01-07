; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_fix_call_dummy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_deprecated_fix_call_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)* }
%struct.value = type { i32 }
%struct.type = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gdbarch_deprecated_fix_call_dummy called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_deprecated_fix_call_dummy(%struct.gdbarch* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.value** %5, %struct.type* %6, i32 %7) #0 {
  %9 = alloca %struct.gdbarch*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.value**, align 8
  %15 = alloca %struct.type*, align 8
  %16 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.value** %5, %struct.value*** %14, align 8
  store %struct.type* %6, %struct.type** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.gdbarch*, %struct.gdbarch** %9, align 8
  %18 = icmp ne %struct.gdbarch* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @gdb_assert(i32 %19)
  %21 = load %struct.gdbarch*, %struct.gdbarch** %9, align 8
  %22 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %21, i32 0, i32 0
  %23 = load i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)*, i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)** %22, align 8
  %24 = icmp ne i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load i32, i32* @gdbarch_debug, align 4
  %28 = icmp sge i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32, i32* @gdb_stdlog, align 4
  %31 = call i32 @fprintf_unfiltered(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %8
  %33 = load %struct.gdbarch*, %struct.gdbarch** %9, align 8
  %34 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %33, i32 0, i32 0
  %35 = load i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)*, i32 (i8*, i32, i32, i32, %struct.value**, %struct.type*, i32)** %34, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.value**, %struct.value*** %14, align 8
  %41 = load %struct.type*, %struct.type** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 %35(i8* %36, i32 %37, i32 %38, i32 %39, %struct.value** %40, %struct.type* %41, i32 %42)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
