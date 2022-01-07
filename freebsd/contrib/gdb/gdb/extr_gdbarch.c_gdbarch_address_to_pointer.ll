; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_address_to_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_gdbarch_address_to_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 (%struct.type*, i8*, i32)* }
%struct.type = type { i32 }

@gdbarch_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"gdbarch_address_to_pointer called\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbarch_address_to_pointer(%struct.gdbarch* %0, %struct.type* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %10 = icmp ne %struct.gdbarch* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @gdb_assert(i32 %11)
  %13 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %14 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %13, i32 0, i32 0
  %15 = load i32 (%struct.type*, i8*, i32)*, i32 (%struct.type*, i8*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.type*, i8*, i32)* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @gdb_assert(i32 %17)
  %19 = load i32, i32* @gdbarch_debug, align 4
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @gdb_stdlog, align 4
  %23 = call i32 @fprintf_unfiltered(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %26 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %25, i32 0, i32 0
  %27 = load i32 (%struct.type*, i8*, i32)*, i32 (%struct.type*, i8*, i32)** %26, align 8
  %28 = load %struct.type*, %struct.type** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 %27(%struct.type* %28, i8* %29, i32 %30)
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
